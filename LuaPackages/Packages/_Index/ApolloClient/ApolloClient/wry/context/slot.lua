--[[
 * Copyright (c) 2019-2021 Ben Newman <ben@eloper.dev>
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/benjamn/wryware/blob/91655122045a99ad445aa330e88905feb3775db6/packages/context/src/slot.ts

local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)

local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean

local uuid = require(srcWorkspace.utilities.common.makeUniqueId).uuid

local exports = {}

--[[
  ROBLOX deviation: no generic params for functions are supported.
  TResult_, TArgs_, TThis_, TValue_
  are a placeholders for generic TResult, TArgs, TThis, TValue params
]]
type TResult_ = any
type TArgs_ = any
type TThis_ = any
type TValue_ = any

type Context = { parent: Context | nil, slots: { [string]: any } }

-- This currentContext variable will only be used if the makeSlotClass
-- function is called, which happens only if this is the first copy of the
-- @wry/context package to be imported.
local currentContext: Context | nil = nil

-- This unique internal object is used to denote the absence of a value
-- for a given Slot, and is never exposed to outside code.
local MISSING_VALUE: any = {}

local idCounter = 1

-- ROBLOX deviation: parser doesn't work with function type on a callback param
type TCallback = (this: TThis_, ...any) -> TResult_
export type Slot<TValue> = {
	id: string,
	hasValue: (self: Slot<TValue>) -> boolean,
	getValue: (self: Slot<TValue>) -> TValue | nil,
	withValue: <TResult, TArgs, TThis>(
		self: Slot<TValue>,
		value: TValue,
		callback: TCallback,
		args: TArgs?,
		thisArg: TThis?
	) -> TResult,
}

-- Although we can't do anything about the cost of duplicated code from
-- accidentally bundling multiple copies of the @wry/context package, we can
-- avoid creating the Slot class more than once using makeSlotClass.
local function makeSlotClass()
	local Slot = {}
	Slot.__index = Slot

	function Slot.new<TValue>(): Slot<TValue>
		local self = setmetatable({}, Slot)

		-- If you have a Slot object, you can find out its slot.id, but you cannot
		-- guess the slot.id of a Slot you don't have access to, thanks to the
		-- randomized suffix.
		self.id = Array.join({
			"slot",
			idCounter :: any,
			DateTime.now().UnixTimestampMillis :: any,
			-- ROBLOX deviation: using uuid instead of Math.random().toString(36).slice(2)
			uuid(),
		}, ":")
		idCounter += 1

		return (self :: any) :: Slot<TValue>
	end

	function Slot:hasValue(): boolean
		local context = currentContext
		-- ROBLOX deviation START: remove Boolean
		while context do
			-- ROBLOX deviation END
			-- We use the Slot object iself as a key to its value, which means the
			-- value cannot be obtained without a reference to the Slot object.
			-- ROBLOX deviation START: use index instead of iterating over keys
			if (context :: any).slots[self.id] then
				-- ROBLOX deviation END
				local value = (context :: any).slots[self.id]
				if value == MISSING_VALUE then
					break
				end
				if context ~= currentContext then
					-- Cache the value in currentContext.slots so the next lookup will
					-- be faster. This caching is safe because the tree of contexts and
					-- the values of the slots are logically immutable.
					(currentContext :: any).slots[self.id] = value
				end
				return true
			end

			context = (context :: any).parent
		end
		-- ROBLOX deviation START: remove Boolean
		if currentContext then
			-- ROBLOX deviation END
			-- If a value was not found for this Slot, it's never going to be found
			-- no matter how many times we look it up, so we might as well cache
			-- the absence of the value, too.
			(currentContext :: any).slots[self.id] = MISSING_VALUE
		end
		return false
	end

	function Slot:getValue(): TValue_ | nil
		if self:hasValue() then
			return (currentContext :: any).slots[self.id] :: TValue_
		end
		return nil
	end

	function Slot:withValue(
		value: TValue_,
		callback: TCallback,
		-- Given the prevalence of arrow functions, specifying arguments is likely
		-- to be much more common than specifying `self`, hence this ordering:
		args: TArgs_?,
		thisArg: TThis_?
	): TResult_
		local slots = {
			-- ROBLOX deviation: no __proto__ in Lua
			[self.id] = value,
		}
		local parent = currentContext
		currentContext = {
			parent = parent,
			slots = slots,
		}
		local ok, result, hasReturned = pcall(function()
			-- Function.prototype.apply allows the arguments array argument to be
			-- omitted or undefined, so args! is fine here.
			return callback(thisArg, table.unpack(args or {})), true
		end)
		currentContext = parent

		if hasReturned then
			return result
		end
		if not ok then
			error(result)
		end
		return nil
	end

	-- Capture the current context and wrap a callback function so that it
	-- reestablishes the captured context when called.
	function Slot.bind<TArgs, TResult, TThis>(callback: (self: TThis, ...TArgs) -> TResult)
		local context = currentContext
		return function(self: TThis_, ...)
			local arguments = { ... }
			local saved = currentContext
			currentContext = context
			local ok, result = pcall(callback, self, table.unpack(arguments :: any))
			currentContext = saved
			if not ok then
				error(result)
			end
			return result
		end :: TCallback
	end

	-- Immediately run a callback function without any captured context.
	function Slot.noContext(
		callback: TCallback,
		-- Given the prevalence of arrow functions, specifying arguments is likely
		-- to be much more common than specifying `this`, hence this ordering:
		args: TArgs_?,
		thisArg: TThis_?
	)
		-- ROBLOX deviation START: remove Boolean
		if currentContext then
			-- ROBLOX deviation END
			local saved = currentContext
			local ok, result, hasReturned = pcall(function()
				currentContext = nil
				-- Function.prototype.apply allows the arguments array argument to be
				-- omitted or undefined, so args! is fine here.
				return callback(thisArg, table.unpack(args or {})), true
			end)
			do
				currentContext = saved
			end
			if hasReturned then
				return result
			end
			if not ok then
				error(result)
			end
		else
			return callback(thisArg, table.unpack(args or {}))
		end
		return nil
	end

	return Slot
end

-- We store a single global implementation of the Slot class as a permanent
-- non-enumerable symbol property of the Array constructor. This obfuscation
-- does nothing to prevent access to the Slot class, but at least it ensures
-- the implementation (i.e. currentContext) cannot be tampered with, and all
-- copies of the @wry/context package (hopefully just one) will share the
-- same Slot implementation. Since the first copy of the @wry/context package
-- to be imported wins, this technique imposes a very high cost for any
-- future breaking changes to the Slot class.
local globalKey = "@wry/context:Slot"
local host = Array :: any

local Slot = Boolean.toJSBoolean(host[globalKey]) and host[globalKey]
	or (function()
		local Slot = makeSlotClass()
		pcall(function()
			-- ROBLOX deviation: no Object.defineProperty functionality available in Lua
			host[globalKey] = Slot
		end)
		return Slot
	end)()

exports.Slot = Slot

return exports
