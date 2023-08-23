--[[
 * Copyright (c) 2016 Ben Newman
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/benjamn/optimism/blob/v0.16.1/src/entry.ts

local srcWorkspace = script.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Array = LuauPolyfill.Array
local Set = LuauPolyfill.Set
local Map = LuauPolyfill.Map
local Error = LuauPolyfill.Error

type Array<T> = LuauPolyfill.Array<T>
type Set<T> = LuauPolyfill.Set<T>
type Map<K, V> = LuauPolyfill.Map<K, V>

--[[
  ROBLOX deviation: no generic params for functions are supported.
  T_, TArgs_, TValue_ are placeholders for generic T, TArgs, TValue param
]]
type T_ = any
type TArgs_ = any
type TValue_ = any

local exports = {}

-- ROBLOX deviation: need None table to allow for nil values to be handled via valueGet
local NONE = newproxy(true)
getmetatable(NONE :: any).__tostring = function()
	return "Value.None"
end

-- ROBLOX deviation: predefine functions
local rememberParent
local reallyRecompute
local recomputeNewValue
local mightBeDirty
local setClean
local reportDirty
local reportClean
local eachParent
local reportDirtyChild
local reportCleanChild
local removeDirtyChild
local forgetChildren
local forgetChild
local maybeSubscribe

local parentEntrySlot = require(script.Parent.context).parentEntrySlot
local initTypesModule = require(script.Parent.initTypes)
type OptimisticWrapOptions<TArgs, TKeyArgs, TCacheKey> = initTypesModule.OptimisticWrapOptions<
	TArgs,
	TKeyArgs,
	TCacheKey
>
local depTypesModule = require(script.Parent.depTypes)
type Dep<TKey> = depTypesModule.Dep<TKey>
local helpersModule = require(script.Parent.helpers)
local maybeUnsubscribe = helpersModule.maybeUnsubscribe
local toArray = helpersModule.toArray
type Unsubscribable = helpersModule.Unsubscribable

local emptySetPool: Array<Set<any>> = {}
local POOL_TARGET_SIZE = 100

-- Since self package might be used browsers, we should avoid using the
-- Node built-in assert module.
local function assert(condition: any, optionalMessage: string?)
	-- ROBLOX deviation START: remove Boolean
	if not condition then
		error(Error.new(optionalMessage or "assertion failure"))
		-- ROBLOX deviation END
	end
end

local entryTypesModule = require(script.Parent.entryTypes)
local anyEntryTypesModule = require(script.Parent.anyEntryTypes)

-- ROBLOX deviation: types are moved to separate file to avoid circular dependencies
type Value<T> = entryTypesModule.Value<T>

local function valueIs(a: Value<any>, b: Value<any>): boolean
	local len = #a
	return true -- ROBLOX deviation: added 'true' to preserve correct indentation
		-- Unknown values are not equal to each other.
		and len > 0
		-- Both values must be ordinary (or both exceptional) to be equal.
		and len == #b
		-- The underlying value or exception must be the same.
		and a[len] == b[len]
end

local function valueGet(value: Value<T_>): T_
	--[[
		ROBLOX deviation:
		known error value is represented as { nil, error_ }
		#value returns 0 in that case so we need to do a custom check
		original code:
		switch (value.length) {
		  case 0: throw new Error("unknown value");
		  case 1: return value[0];
		  case 2: throw value[1];
		}
	]]
	if value[2] ~= nil then
		error(value[2])
	elseif value[1] ~= nil then
		-- ROBLOX deviation: special handling for NONE value
		if value[1] == NONE then
			return nil
		end
		return value[1]
	else
		error(Error.new("unknown value"))
	end
end

local function valueCopy(value: Value<T_>): Value<T_>
	-- ROBLOX deviation START: use table.clone instead of Array.slice
	return table.clone(value) :: Value<T_>
	-- ROBLOX deviation END
end

-- ROBLOX deviation: types are moved to separate file to avoid circular dependencies
export type Entry<TArgs, TValue> = entryTypesModule.Entry<TArgs, TValue>

export type AnyEntry = anyEntryTypesModule.AnyEntry

local Entry = {}
Entry.__index = Entry
Entry.count = 0

function Entry.new<TArgs, TValue>(fn: (...TArgs) -> TValue): Entry<TArgs, TValue>
	local self = setmetatable({}, Entry)

	self.parents = Set.new()
	-- ROBLOX TODO: Luau doesnt support explicit generic params, so we cast to the expected Map type
	self.childValues = Map.new(nil) :: Map<AnyEntry, Value<any>>

	self.dirtyChildren = nil
	self.dirty = true
	self.recomputing = false
	self.value = {}

	self.deps = nil

	self.fn = fn

	Entry.count += 1

	return (self :: any) :: Entry<TArgs, TValue>
end

function Entry:peek(): TValue_ | nil
	if #self.value == 1 and not mightBeDirty(self) then
		rememberParent(self)
		return self.value[1]
	end
	return nil
end

-- This is the most important method of the Entry API, because it
-- determines whether the cached self.value can be returned immediately,
-- or must be recomputed. The overall performance of the caching system
-- depends on the truth of the following observations: (1) self.dirty is
-- usually false, (2) self.dirtyChildren is usually null/empty, and thus
-- (3) valueGet(self.value) is usually returned without recomputation.
function Entry:recompute(args: TArgs_): TValue_
	assert(not self.recomputing, "already recomputing")
	rememberParent(self)
	if mightBeDirty(self) then
		return reallyRecompute(self, args)
	else
		return valueGet(self.value)
	end
end

function Entry:setDirty(): ()
	if self.dirty then
		return
	end
	self.dirty = true
	-- ROBLOX check: upstream prop is readonly. Check if something relies on ref not changing
	self.value = {}
	--self.value.length = 0;
	reportDirty(self)
	-- We can go ahead and unsubscribe here, since any further dirty
	-- notifications we receive will be redundant, and unsubscribing may
	-- free up some resources, e.g. file watchers.
	maybeUnsubscribe((self :: any) :: Unsubscribable)
end

function Entry:dispose()
	self:setDirty()
	-- Sever any dependency relationships with our own children, so those
	-- children don't retain self parent Entry in their child.parents sets,
	-- thereby preventing it from being fully garbage collected.
	forgetChildren(self)

	-- Because self entry has been kicked out of the cache (in index.js),
	-- we've lost the ability to find out if/when self entry becomes dirty,
	-- whether that happens through a subscription, because of a direct call
	-- to entry.setDirty(), or because one of its children becomes dirty.
	-- Because of self loss of future information, we have to assume the
	-- worst (that self entry might have become dirty very soon), so we must
	-- immediately mark self entry's parents as dirty. Normally we could
	-- just call entry.setDirty() rather than calling parent.setDirty() for
	-- each parent, but that would leave self entry in parent.childValues
	-- and parent.dirtyChildren, which would prevent the child from being
	-- truly forgotten.
	eachParent(self, function(parent: AnyEntry, child: AnyEntry)
		parent:setDirty()
		forgetChild(parent :: any, self :: any)
		return nil
	end)
end

function Entry:forget()
	-- The code that creates Entry objects in index.ts will replace self method
	-- with one that actually removes the Entry from the cache, which will also
	-- trigger the entry.dispose method.
	self:dispose()
end

function Entry:dependOn(dep: Dep<any>)
	dep:add(self)
	if not self.deps then
		local ref = table.remove(emptySetPool)
		self.deps = (ref or Set.new()) :: Set<any>
	end
	-- ROBLOX Luau FIXME: Luau doesn't infer correctly in the if not x then x = Set.new() pattern
	(self.deps :: Set<any>):add(dep)
end

function Entry:forgetDeps()
	-- ROBLOX deviation START: remove Boolean
	if self.deps then
		-- ROBLOX deviation END
		Array.forEach(toArray(self.deps), function(dep)
			dep:delete(self)
		end)
		self.deps:clear()
		table.insert(emptySetPool, self.deps)
		self.deps = nil :: any
	end
end

exports.Entry = Entry

function rememberParent(child: AnyEntry)
	local parent = parentEntrySlot:getValue()
	-- ROBLOX deviation START: remove Boolean
	if parent then
		-- ROBLOX deviation END
		child.parents:add(parent)

		-- ROBLOX deviation START: remove Boolean
		if not parent.childValues:has(child) then
			-- ROBLOX deviation END
			parent.childValues:set(child, {})
		end

		-- ROBLOX deviation START: remove Boolean
		if mightBeDirty(child) then
			-- ROBLOX deviation END
			reportDirtyChild(parent, child)
		else
			reportCleanChild(parent, child)
		end

		return parent
	end
	return nil
end

function reallyRecompute(entry: AnyEntry, args: Array<any>)
	forgetChildren(entry)

	-- Set entry as the parent entry while calling recomputeNewValue(entry).
	parentEntrySlot:withValue(entry, recomputeNewValue, { entry, args :: any })

	-- ROBLOX deviation START: remove Boolean
	if maybeSubscribe(entry, args) then
		-- ROBLOX deviation END
		-- If we successfully recomputed entry.value and did not fail to
		-- (re)subscribe, then this Entry is no longer explicitly dirty.
		setClean(entry)
	end

	return valueGet(entry.value)
end

function recomputeNewValue(_self, entry: AnyEntry, args: Array<any>)
	entry.recomputing = true
	-- Set entry.value as unknown.
	-- ROBLOX check: upstream prop is readonly. Check if something relies on ref not changing
	table.clear(entry.value)
	-- entry.value.length = 0
	local ok, e = pcall(entry.fn, table.unpack(args))
	if ok then
		-- If entry.fn succeeds, entry.value will become a normal Value.
		entry.value[1] = e
		-- ROBLOX deviation: if returned value is nil use None instead to be able to check in valueGet
		if entry.value[1] == nil then
			entry.value[1] = NONE
		end
	end
	if not ok then
		-- If entry.fn throws, entry.value will become exceptional.
		entry.value[2] = e
	end
	-- Either way, this line is always reached.
	entry.recomputing = false
end

function mightBeDirty(entry: AnyEntry): boolean
	-- ROBLOX deviation START: remove Boolean
	return entry.dirty or (entry.dirtyChildren ~= nil and entry.dirtyChildren.size > 0)
	-- ROBLOX deviation END
end

function setClean(entry: AnyEntry)
	entry.dirty = false

	if mightBeDirty(entry) then
		-- This Entry may still have dirty children, in which case we can't
		-- let our parents know we're clean just yet.
		return
	end

	reportClean(entry)
end

function reportDirty(child: AnyEntry)
	eachParent(child, reportDirtyChild)
end

function reportClean(child: AnyEntry)
	eachParent(child, reportCleanChild)
end

function eachParent(child: AnyEntry, callback: (parent: AnyEntry, child: AnyEntry) -> any?)
	local parentCount = child.parents.size
	-- ROBLOX deviation START: remove Boolean
	if parentCount then
		-- ROBLOX deviation END
		local parents = toArray(child.parents)
		for i = 1, parentCount do
			callback(parents[i], child)
		end
	end
end

-- Let a parent Entry know that one of its children may be dirty.
function reportDirtyChild(parent: AnyEntry, child: AnyEntry)
	-- Must have called rememberParent(child) before calling
	-- reportDirtyChild(parent, child).
	-- ROBLOX deviation START: only assert in DEV mode
	if _G.__DEV__ then
		assert(parent.childValues:has(child))
		assert(mightBeDirty(child))
	end
	-- ROBLOX deviation END
	local parentWasClean = not mightBeDirty(parent)

	-- ROBLOX deviation START: remove Boolean
	if not parent.dirtyChildren then
		local ref = table.remove(emptySetPool)
		parent.dirtyChildren = ref or Set.new()
		-- ROBLOX deviation END
	elseif (parent.dirtyChildren :: Set<any>):has(child) then
		-- If we already know this child is dirty, then we must have already
		-- informed our own parents that we are dirty, so we can terminate
		-- the recursion early.
		return
	end

	(parent.dirtyChildren :: Set<any>):add(child)

	-- If parent was clean before, it just became (possibly) dirty (according to
	-- mightBeDirty), since we just added child to parent.dirtyChildren.
	if parentWasClean then
		reportDirty(parent)
	end
	return
end

-- Let a parent Entry know that one of its children is no longer dirty.
function reportCleanChild(parent: AnyEntry, child: AnyEntry)
	-- Must have called rememberChild(child) before calling
	-- reportCleanChild(parent, child).
	-- ROBLOX deviation START: only assert in DEV mode
	if _G.__DEV__ then
		assert(parent.childValues:has(child))
		assert(not mightBeDirty(child))
	end
	-- ROBLOX deviation END

	local childValue = parent.childValues:get(child) :: Value<any>
	if #childValue == 0 then
		parent.childValues:set(child, valueCopy(child.value))
	elseif not valueIs(childValue, child.value) then
		parent:setDirty()
	end

	removeDirtyChild(parent, child)

	if mightBeDirty(parent) then
		return
	end

	reportClean(parent)
	return
end

function removeDirtyChild(parent: AnyEntry, child: AnyEntry)
	local dc = parent.dirtyChildren
	if dc ~= nil then
		dc:delete(child)
		if dc.size == 0 then
			if #emptySetPool < POOL_TARGET_SIZE then
				table.insert(emptySetPool, dc)
			end
			parent.dirtyChildren = nil
		end
	end
end

-- Removes all children from this entry and returns an array of the
-- removed children.
function forgetChildren(parent: AnyEntry)
	if parent.childValues.size > 0 then
		--[[
			ROBLOX deviation:
			as we are modifying the underlying map within the forEach
			we need to clone the keys so they are not affected during the loop
		]]
		local children = table.clone(parent.childValues:keys())
		Array.forEach(children, function(child)
			forgetChild(parent, child)
		end)
	end

	-- Remove this parent Entry from any sets to which it was added by the
	-- addToSet method.
	parent:forgetDeps()

	-- After we forget all our children, this.dirtyChildren must be empty
	-- and therefore must have been reset to null.
	assert(parent.dirtyChildren == nil)
end

function forgetChild(parent: AnyEntry, child: AnyEntry)
	child.parents:delete(parent)
	parent.childValues:delete(child)
	removeDirtyChild(parent, child)
end

function maybeSubscribe(entry: AnyEntry, args: Array<any>)
	if typeof(entry.subscribe) == "function" then
		local ok = pcall(function()
			maybeUnsubscribe((entry :: any) :: Unsubscribable)
			entry.unsubscribe = (entry.subscribe :: any)(table.unpack(args))
			return nil, false
		end)
		if not ok then
			-- If this Entry has a subscribe function and it threw an exception
			-- (or an unsubscribe function it previously returned now throws),
			-- return false to indicate that we were not able to subscribe (or
			-- unsubscribe), and this Entry should remain dirty.
			entry:setDirty()
			return false
		end
	end
	return true
end

return exports
