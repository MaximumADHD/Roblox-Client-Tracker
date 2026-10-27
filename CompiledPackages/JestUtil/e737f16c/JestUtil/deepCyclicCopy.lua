-- ROBLOX upstream: https://github.com/facebook/jest/tree/v28.0.0/packages/jest-util/src/deepCyclicCopy.ts

--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object
local Set = LuauPolyfill.Set
local WeakMap = LuauPolyfill.WeakMap
type Array<T> = LuauPolyfill.Array<T>
type Object = LuauPolyfill.Object
type Set<T> = LuauPolyfill.Set<T>
type WeakMap<T, U> = LuauPolyfill.WeakMap<T, U>
local exports = {}

-- ROBLOX deviation START: predefine variables
local deepCyclicCopy
local deepCyclicCopyObject
local deepCyclicCopyArray
-- ROBLOX deviation END
local EMPTY = Set.new() :: Set<string>
export type DeepCyclicCopyOptions = { blacklist: Set<string>?, keepPrototype: boolean? }

function deepCyclicCopy<T>(value: T, options_: DeepCyclicCopyOptions?, cycles_: WeakMap<any, any>?): T
	local options = options_ or { blacklist = EMPTY, keepPrototype = false }
	local cycles: WeakMap<any, any> = if cycles_ then cycles_ else WeakMap.new()

	if typeof(value) ~= "table" then
		return value
	elseif cycles:has(value) then
		return cycles:get(value)
	elseif Array.isArray(value) then
		return deepCyclicCopyArray(value, options, cycles) :: any
	else
		return deepCyclicCopyObject(value, options, cycles)
	end
end
exports.default = deepCyclicCopy

function deepCyclicCopyObject<T>(object: T & Object, options: DeepCyclicCopyOptions, cycles: WeakMap<any, any>): T
	-- ROBLOX deviation START: prototypes are not supported
	local newObject = {}
	if options.keepPrototype then
		warn("Prototype copying is not supported")
	end
	-- ROBLOX deviation END

	-- ROBLOX deviation START: no property descriptors in Lua
	local descriptors = Array.reduce(Object.keys(object), function(acc, key)
		acc[key] = {
			value = (object :: any)[key],
		}
		return acc
	end, {})
	-- ROBLOX deviation END

	cycles:set(object, newObject)

	Array.forEach(Object.keys(descriptors), function(key)
		if options.blacklist ~= nil and options.blacklist:has(key) then
			descriptors[key] = nil
			return
		end

		local descriptor: Object = descriptors[key]
		if typeof(descriptor.value) ~= "nil" then
			descriptor.value =
				deepCyclicCopy(descriptor.value, { blacklist = EMPTY, keepPrototype = options.keepPrototype }, cycles)
		end
		descriptor.configurable = true
	end)

	-- ROBLOX deviation START: no property descriptors in Lua
	return Object.assign(
		newObject,
		Array.reduce(Object.keys(descriptors), function(acc, key)
			acc[key] = descriptors[key].value
			return acc
		end, {})
	)
	-- ROBLOX deviation END
end

function deepCyclicCopyArray<T>(array: Array<T>, options: DeepCyclicCopyOptions, cycles: WeakMap<any, any>): T
	-- ROBLOX deviation START: prototypes are not supported
	local newArray = {}
	if options.keepPrototype then
		warn("Prototype copying is not supported")
	end
	-- ROBLOX deviation END
	local length = #array

	cycles:set(array, newArray)

	for i = 1, length do
		newArray[i] = deepCyclicCopy(array[i], { blacklist = EMPTY, keepPrototype = options.keepPrototype }, cycles)
	end

	-- ROBLOX FIXME Luau: need to cast to `any` as Lua can't infer types properly
	return newArray :: any
end
return exports
