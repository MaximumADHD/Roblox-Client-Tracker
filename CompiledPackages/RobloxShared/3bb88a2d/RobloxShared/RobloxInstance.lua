--!nonstrict
--[[
	* Copyright (c) Roblox Corporation. All rights reserved.
	* Licensed under the MIT License (the "License");
	* you may not use this file except in compliance with the License.
	* You may obtain a copy of the License at
	*
	*     https://opensource.org/licenses/MIT
	*
	* Unless required by applicable law or agreed to in writing, software
	* distributed under the License is distributed on an "AS IS" BASIS,
	* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	* See the License for the specific language governing permissions and
	* limitations under the License.
]]
local CurrentModule = script.Parent
local Packages = CurrentModule.Parent

local RobloxApi = require(CurrentModule.RobloxApiDump)

local getType = require(Packages.JestGetType).getType

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object

local CurrentModuleExpect = require(CurrentModule.expect)
local equals = CurrentModuleExpect.equals
local isObjectWithKeys = CurrentModuleExpect.isObjectWithKeys
local hasPropertyInObject = CurrentModuleExpect.hasPropertyInObject
local isAsymmetric = CurrentModuleExpect.isAsymmetric

local exports = {}

-- Unsafe because no checks are performed that this property is readable.
local function readPropUnsafe(instance: Instance, propertyName: string): unknown
	return instance[propertyName]
end

-- Unsafe because no checks are performed that this property is writable.
local function writePropUnsafe(instance: Instance, propertyName: string, value: unknown): ()
	instance[propertyName] = value
end

function exports.readProp(instance: Instance, propertyName: string)
	return pcall(readPropUnsafe, instance, propertyName)
end

function exports.writeProp(instance: Instance, propertyName: string, value: unknown)
	return pcall(writePropUnsafe, instance, propertyName, value)
end

-- Unsafe because no checks are performed that these properties are readable.
local function listPropsUnsafe(className: string): { [string]: true }
	local unsafeProps = {}
	local inheritFrom = RobloxApi[className]
	while inheritFrom ~= nil do
		for _, unsafeProp in ipairs(inheritFrom.Properties) do
			unsafeProps[unsafeProp] = true
		end
		inheritFrom = RobloxApi[inheritFrom.Superclass]
	end
	return unsafeProps
end

function exports.listProps(instance: Instance, warmRead: boolean?): { [string]: unknown }
	local props = listPropsUnsafe(instance.ClassName)
	-- cold read - values may not be stable, but at least we can weed out
	-- property reads that will result in errors
	for unsafeProp in props do
		local ok, propValue = exports.readProp(instance, unsafeProp)
		if ok then
			props[unsafeProp] = if propValue == nil then Object.None else propValue
		else
			props[unsafeProp] = nil
		end
	end
	if warmRead then
		-- warm read - quantum UI bugs will no longer affect values here
		for safeProp in props do
			local propValue = readPropUnsafe(instance, safeProp)
			props[safeProp] = if propValue == nil then Object.None else propValue
		end
	end
	return props
end

do
	-- Hidden from outside code.
	local cachedDefaults = {}
	function exports.listDefaultProps(className: string): { [string]: unknown }
		local cached = cachedDefaults[className]
		if cached ~= nil then
			return cached
		end

		local ok, instance = pcall(Instance.new, className)
		if not ok then
			error("Class type is abstract or not creatable - cannot list defaults")
		end
		local defaults = exports.listProps(instance)
		instance:Destroy()

		cachedDefaults[className] = defaults
		return defaults
	end
end

-- given an Instance and a property-value table subset
-- returns true if all property-values in the subset table exist in the Instance
-- and returns false otherwise
-- returns nil for undefined behavior
function exports.instanceSubsetEquality(instance: any, subset: any): boolean | nil
	local function subsetEqualityWithContext(seenReferences)
		return function(localInstance, localSubset)
			seenReferences = seenReferences or {}

			if getType(localInstance) ~= "Instance" or not isObjectWithKeys(localSubset) then
				return nil
			end

			return Array.every(Object.keys(localSubset), function(prop)
				local subsetVal = localSubset[prop]
				if isObjectWithKeys(subsetVal) then
					-- return false for circular references
					if seenReferences[subsetVal] then
						return false
					end
					seenReferences[subsetVal] = true
				end
				local ok, value = exports.readProp(localInstance, prop)
				local result = ok and equals(value, subsetVal, { subsetEqualityWithContext(seenReferences) })

				seenReferences[subsetVal] = nil
				return result
			end)
		end
	end

	local inner = subsetEqualityWithContext()

	if inner then
		return inner(instance, subset)
	end
	return inner
end

-- InstanceSubset object behaves like an Instance when serialized by pretty-format

local InstanceSubset = {}
exports.InstanceSubset = InstanceSubset

InstanceSubset.__index = InstanceSubset

function InstanceSubset.new(className, subset)
	table.sort(subset)
	local self = {
		ClassName = className,
		subset = subset,
	}

	setmetatable(self, InstanceSubset)
	return self
end

-- given an Instance and an expected property-value table subset, returns
-- an InstanceSubset object representing the found subset of Instance with values in the subset table
-- and a InstanceSubset object representing the expected subset table
function exports.getInstanceSubset(instance: any, subset: any, seenReferences_: any?): (any, any)
	local seenReferences = seenReferences_ or {}

	local foundSubset: any = {}
	seenReferences[instance] = foundSubset

	-- return non-table primitives
	if equals(instance, subset) then
		return subset, subset
	elseif typeof(subset) ~= "table" or isAsymmetric(subset) then
		return instance, subset
	end

	-- collect non-table primitive values
	local expectedSubset = {}
	for k, v in pairs(subset) do
		if typeof(v) ~= "table" then
			expectedSubset[k] = v
		end
	end

	for name, subsetPropOrChild in pairs(subset) do
		local ok, realPropOrChild = exports.readProp(instance, name)
		if not ok then
			continue
		elseif seenReferences[realPropOrChild] ~= nil then
			error("Circular reference passed into .toMatchInstance(subset)")
		else
			expectedSubset[name] = {}
			foundSubset[name], expectedSubset[name] =
				exports.getInstanceSubset(realPropOrChild, subsetPropOrChild, seenReferences)
		end
	end

	-- serialize with a different ClassName if the subset has ClassName defined,
	-- otherwise treat it as the same class as the original Instance
	local subsetClassName = instance.ClassName
	if typeof(subset) == "table" and rawget(subset, "ClassName") then
		subsetClassName = rawget(subset, "ClassName")
	end

	local found = InstanceSubset.new(instance.ClassName, foundSubset)
	local expected = InstanceSubset.new(subsetClassName, expectedSubset)
	return found, expected
end

return exports
