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

local _cachedPropertyValues = {}

local function tryPropertyName(instance, propertyName)
	return instance[propertyName]
end

local function getRobloxProperties(class: string): { string }
	local instanceClass = RobloxApi[class]
	local t = {}
	while instanceClass do
		for _, property in ipairs(instanceClass.Properties) do
			table.insert(t, property)
		end
		instanceClass = RobloxApi[instanceClass.Superclass]
	end
	table.sort(t)
	return t
end

local function getRobloxDefaults(className: string): ({ [string]: any }, { string })
	local propertiesList = getRobloxProperties(className)

	local classCache = _cachedPropertyValues[className]
	if classCache then
		return classCache, propertiesList
	else
		classCache = {}
		_cachedPropertyValues[className] = classCache
	end

	local created = Instance.new(className)

	for _, propertyName in ipairs(propertiesList) do
		local ok, defaultValue = pcall(tryPropertyName, created, propertyName)

		if ok then
			classCache[propertyName] = defaultValue
		end
	end

	created:Destroy()
	return classCache, propertiesList
end

-- given an Instance and a property-value table subset
-- returns true if all property-values in the subset table exist in the Instance
-- and returns false otherwise
-- returns nil for undefined behavior
local function instanceSubsetEquality(instance: any, subset: any): boolean | nil
	local function subsetEqualityWithContext(seenReferences)
		return function(localInstance, localSubset)
			seenReferences = seenReferences or {}

			if getType(localInstance) ~= "Instance" or not isObjectWithKeys(localSubset) then
				return nil
			end

			local instanceProperties = getRobloxProperties(localInstance.ClassName)
			local instanceChildren = {}
			for _, v in ipairs(localInstance:getChildren()) do
				instanceChildren[v.Name] = true
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
				local result = localInstance ~= nil
					and (table.find(instanceProperties, prop) ~= nil or instanceChildren[prop] ~= nil)
					and equals(localInstance[prop], subsetVal, { subsetEqualityWithContext(seenReferences) })

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

-- given an Instance and a property-value table subset, returns
-- an InstanceSubset object representing the subset of Instance with values in the subset table
-- and a InstanceSubset object representing the subset table
local function getInstanceSubset(instance: any, subset: any, seenReferences_: any?): (any, any)
	local seenReferences = seenReferences_ or {}

	local trimmed: any = {}
	seenReferences[instance] = trimmed

	-- return non-table primitives
	if equals(instance, subset) then
		return subset, subset
	elseif typeof(subset) ~= "table" or isAsymmetric(subset) then
		return instance, subset
	end

	-- collect non-table primitive values
	local newSubset = {}
	for k, v in pairs(subset) do
		if typeof(v) ~= "table" then
			newSubset[k] = v
		end
	end

	local propsAndChildren = getRobloxProperties(instance.ClassName)
	for _, v in ipairs(instance:getChildren()) do
		table.insert(propsAndChildren, v.Name)
	end

	for i, prop in
		ipairs(Array.filter(propsAndChildren, function(prop)
			return hasPropertyInObject(subset, prop)
		end))
	do
		if seenReferences[instance[prop]] ~= nil then
			error("Circular reference passed into .toMatchInstance(subset)")
		else
			local nestedSubset
			trimmed[prop], nestedSubset = getInstanceSubset(instance[prop], subset[prop], seenReferences)
			newSubset[prop] = nestedSubset
		end
	end

	-- serialize with a different ClassName if the subset has ClassName defined,
	-- otherwise treat it as the same class as the original Instance
	local subsetClassName = instance.ClassName
	if typeof(subset) == "table" and rawget(subset, "ClassName") then
		subsetClassName = rawget(subset, "ClassName")
	end

	return InstanceSubset.new(instance.ClassName, trimmed), InstanceSubset.new(subsetClassName, newSubset)
end

return {
	getRobloxProperties = getRobloxProperties,
	getRobloxDefaults = getRobloxDefaults,
	instanceSubsetEquality = instanceSubsetEquality,
	InstanceSubset = InstanceSubset,
	getInstanceSubset = getInstanceSubset,
}
