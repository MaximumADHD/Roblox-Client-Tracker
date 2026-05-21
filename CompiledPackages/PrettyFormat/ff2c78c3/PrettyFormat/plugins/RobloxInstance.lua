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
-- ROBLOX NOTE: no upstream
-- this plugin serializes Roblox Instance objects
-- https://developer.roblox.com/en-us/api-reference/class/Instance

local CurrentModule = script.Parent.Parent
local Packages = CurrentModule.Parent

local JestGetType = require(Packages.JestGetType)
local getType = JestGetType.getType

local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
local Array = LuauPolyfill.Array
local instanceof = LuauPolyfill.instanceof

local RobloxInstance = require(Packages.RobloxShared).RobloxInstance
local InstanceSubset = RobloxInstance.InstanceSubset

local printTableEntries = require(CurrentModule.Collections).printTableEntries

local Types = require(CurrentModule.Types)
type Config = Types.Config
type Refs = Types.Refs
type Printer = Types.Printer

local function printInstance(
	val: any,
	config: Config,
	indentation: string,
	depth: number,
	refs: Refs,
	printer: Printer
): string
	local result = ""

	local printChildrenList = val:GetChildren()
	table.sort(printChildrenList, function(a, b)
		return a.Name < b.Name
	end)

	local propertiesMap = RobloxInstance.listProps(val)
	local printPropsList = Object.keys(propertiesMap)
	if not config.printInstanceDefaults then
		local defaultsMap = RobloxInstance.listDefaultProps(val.ClassName)
		printPropsList = Array.filter(printPropsList, function(name)
			return propertiesMap[name] ~= defaultsMap[name]
		end)
	end
	table.sort(printPropsList)

	local willPrintProps = #printPropsList > 0
	local willPrintChildren = #printChildrenList > 0

	if willPrintProps or willPrintChildren then
		result = result .. config.spacingOuter

		local indentationNext = indentation .. config.indent

		-- print properties of Instance
		for propOrder, propName in ipairs(printPropsList) do
			local propValue = propertiesMap[propName]
			if propValue == Object.None then
				propValue = nil
			end

			-- collapses output for Instance values to avoid loops
			local valueDepth = if getType(propValue) == "Instance" then math.huge else depth
			local printName = printer(propName, config, indentationNext, depth, refs)
			local printValue = printer(propValue, config, indentationNext, valueDepth, refs)

			result = string.format("%s%s%s: %s", result, indentationNext, printName, printValue)

			if propOrder ~= #printPropsList or willPrintChildren then
				result = result .. "," .. config.spacingInner
			elseif not config.min then
				result = result .. ","
			end
		end

		-- recursively print children of Instance
		for childOrder, child in ipairs(printChildrenList) do
			local printName = printer(child.Name, config, indentationNext, depth, refs)
			local printValue = printer(child, config, indentationNext, depth, refs)

			result = string.format("%s%s%s: %s", result, indentationNext, printName, printValue)

			if childOrder ~= #printChildrenList then
				result = result .. "," .. config.spacingInner
			elseif not config.min then
				result = result .. ","
			end
		end

		result = result .. config.spacingOuter .. indentation
	end

	return result
end

local function serialize(
	val: any,
	config: Config,
	indentation: string,
	depth: number,
	refs: Refs,
	printer: Printer
): string
	depth = depth + 1

	if depth >= config.maxDepth then
		return string.format('"%s" [%s]', val.Name, val.ClassName)
	end

	if instanceof(val, InstanceSubset) then
		return val.ClassName .. " {" .. printTableEntries(val.subset, config, indentation, depth, refs, printer) .. "}"
	end

	return val.ClassName .. " {" .. printInstance(val, config, indentation, depth, refs, printer) .. "}"
end

local function test(val: any): boolean
	return getType(val) == "Instance" or instanceof(val, InstanceSubset)
end

return {
	serialize = serialize,
	test = test,
}
