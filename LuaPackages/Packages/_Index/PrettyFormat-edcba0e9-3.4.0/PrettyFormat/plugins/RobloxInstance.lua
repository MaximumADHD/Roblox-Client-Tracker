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
local Array = LuauPolyfill.Array
local instanceof = LuauPolyfill.instanceof

local RobloxInstance = require(Packages.RobloxShared).RobloxInstance
local getRobloxProperties = RobloxInstance.getRobloxProperties
local getRobloxDefaults = RobloxInstance.getRobloxDefaults
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

	local children = val:GetChildren()
	table.sort(children, function(a, b)
		return a.Name < b.Name
	end)
	local props
	local defaults
	if config.printInstanceDefaults then
		props = getRobloxProperties(val.ClassName)
	else
		defaults, props = getRobloxDefaults(val.ClassName)
	end

	if not config.printInstanceDefaults then
		props = Array.filter(props, function(propertyName)
			return defaults[propertyName] ~= val[propertyName]
		end)
	end

	if #props > 0 or #children > 0 then
		result = result .. config.spacingOuter

		local indentationNext = indentation .. config.indent

		-- print properties of Instance
		for i, propertyName in ipairs(props) do
			local name = printer(propertyName, config, indentationNext, depth, refs)
			local value = val[propertyName]

			-- collapses output for Instance values to avoid loops
			if getType(value) == "Instance" then
				value = printer(value, config, indentationNext, math.huge, refs)
			else
				value = printer(value, config, indentationNext, depth, refs)
			end

			result = string.format("%s%s%s: %s", result, indentationNext, name, value)

			if i < #props or #children > 0 then
				result = result .. "," .. config.spacingInner
			elseif not config.min then
				result = result .. ","
			end
		end

		-- recursively print children of Instance
		for i, v in ipairs(children) do
			local name = printer(v.Name, config, indentationNext, depth, refs)
			local value = printer(v, config, indentationNext, depth, refs)

			result = string.format("%s%s%s: %s", result, indentationNext, name, value)

			if i < #children then
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
