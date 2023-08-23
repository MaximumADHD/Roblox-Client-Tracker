--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/utilities/common/mergeDeep.ts

local exports = {}

local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Set = LuauPolyfill.Set
type Array<T> = LuauPolyfill.Array<T>
type Set<T> = LuauPolyfill.Set<T>
type Record<T, U> = { [T]: U }
type Object = { [string]: any }

-- ROBLOX deviation: need None table to allow for nil values to be handled merge
local NONE = newproxy(true)
getmetatable(NONE :: any).__tostring = function()
	return "Value.None"
end

local isNonNullObject = require(script.Parent.objects).isNonNullObject
local hasOwnProperty = require(srcWorkspace.luaUtils.hasOwnProperty)
local objectKeysForEach = require(srcWorkspace.luaUtils.objectKeysForEach)

-- These mergeDeep and mergeDeepArray utilities merge any number of objects
-- together, sharing as much memory as possible with the source objects, while
-- remaining careful to avoid modifying any source objects.

-- Logically, the return type of mergeDeep should be the intersection of
-- all the argument types. The binary call signature is by far the most
-- common, but we support 0- through 5-ary as well. After that, the
-- resulting type is just the inferred array element type. Note to nerds:
-- there is a more clever way of doing this that converts the tuple type
-- first to a union type (easy enough: T[number]) and then converts the
-- union to an intersection type using distributive conditional type
-- inference, but that approach has several fatal flaws (boolean becomes
-- true & false, and the inferred type ends up as unknown in many cases),
-- in addition to being nearly impossible to explain/understand.
-- ROBLOX deviation: Luau doesn't support type type constraints, nor does it support the infer keyword
-- export type TupleToIntersection<T extends any[]> =
--   T extends [infer A] ? A :
--   T extends [infer A, infer B] ? A & B :
--   T extends [infer A, infer B, infer C] ? A & B & C :
--   T extends [infer A, infer B, infer C, infer D] ? A & B & C & D :
--   T extends [infer A, infer B, infer C, infer D, infer E] ? A & B & C & D & E :
--   T extends (infer U)[] ? U : any;
export type TupleToIntersection<T> = any

-- ROBLOX deviation: pre-declaring mergeDeepArray function variable
local mergeDeepArray

-- ROBLOX deviation: Luau can't express upstream, so get out of its way to track what it can
local function mergeDeep(...) -- : TupleToIntersection<...T>
	return mergeDeepArray({ ... })
end
exports.mergeDeep = mergeDeep

-- ROBLOX deviation: pre-declaring DeepMerger class
local DeepMerger = {}

-- In almost any situation where you could succeed in getting the
-- TypeScript compiler to infer a tuple type for the sources array, you
-- could just use mergeDeep instead of mergeDeepArray, so instead of
-- trying to convert T[] to an intersection type we just infer the array
-- element type, which works perfectly when the sources array has a
-- consistent element type.
function mergeDeepArray<T>(sources: Array<T>): T
	-- ROBLOX deviation START: remove Boolean
	local target = sources[1] or ({} :: any) :: T
	-- ROBLOX deviation END
	local count = #sources
	if count > 1 then
		local merger = DeepMerger.new()
		for i = 2, count do
			target = merger:merge(target, sources[i])
		end
	end
	return target
end
exports.mergeDeepArray = mergeDeepArray

export type ReconcilerFunction<TContextArgs> = (
	self: DeepMerger<TContextArgs>,
	target: Record<string | number, any>,
	source: Record<string | number, any>,
	property: string | number,
	...TContextArgs
) -> any

export type DeepMerger<TContextArgs> = {
	merge: (self: DeepMerger<TContextArgs>, target: any, source: any, ...TContextArgs) -> any,
	isObject: typeof(isNonNullObject),
	shallowCopyForMerge: <T>(self: DeepMerger<TContextArgs>, value: T) -> T,
	-- ROBLOX TODO: make these private
	reconciler: ReconcilerFunction<TContextArgs>,
	pastCopies: Set<any>,
}

DeepMerger.__index = DeepMerger

function DeepMerger.new<TContextArgs>(reconciler: ReconcilerFunction<TContextArgs>?)
	local self = setmetatable({}, DeepMerger)
	-- ROBLOX deviation: inline to avoid redefining recursive type, need to pass in self as first arg to have access to `this`
	local defaultReconciler: ReconcilerFunction<TContextArgs> = function(self, target, source, property)
		return self:merge(target[property], source[property])
	end
	if reconciler == nil then
		reconciler = defaultReconciler
	end
	self.reconciler = reconciler

	self.isObject = isNonNullObject
	self.pastCopies = Set.new()

	return (self :: any) :: DeepMerger<TContextArgs>
end

function DeepMerger.merge<TContextArgs>(self: DeepMerger<TContextArgs>, target: any, source: any, ...: TContextArgs): any
	-- ROBLOX deviation START: use table.pack instead of { ... }
	local context = table.pack(...)
	-- ROBLOX deviation END
	if isNonNullObject(source) and isNonNullObject(target) then
		-- ROBLOX deviation START: use helper to optimize Object.keys().forEach
		objectKeysForEach(source, function(sourceKey)
			-- ROBLOX deviation END
			if hasOwnProperty(target, sourceKey) then
				local targetValue = target[sourceKey]
				if source[sourceKey] ~= targetValue then
					local result = self:reconciler(target, source, sourceKey, table.unpack(context))
					-- A well-implemented reconciler may return targetValue to indicate
					-- the merge changed nothing about the structure of the target.
					if result ~= targetValue then
						target = self:shallowCopyForMerge(target)
						target[sourceKey] = result
					end
				end
			else
				-- If there is no collision, the target can safely share memory with
				-- the source, and the recursion can terminate here.
				target = self:shallowCopyForMerge(target)
				target[sourceKey] = source[sourceKey]
			end
			-- ROBLOX deviation
			if target[sourceKey] == NONE then
				target[sourceKey] = nil
			end
		end)

		return target
	end

	-- If source (or target) is not an object, let source replace target.
	return source
end

-- ROBLOX deviation: need generic constraints to eliminate any casts
function DeepMerger:shallowCopyForMerge(value)
	if isNonNullObject(value) and not self.pastCopies:has(value) then
		-- ROBLOX deviation START: use table.clone to shallow copy object and array
		value = table.clone(value)
		-- ROBLOX deviation END
		self.pastCopies:add(value)
	end
	return value
end

DeepMerger.None = NONE

exports.DeepMerger = DeepMerger

return exports
