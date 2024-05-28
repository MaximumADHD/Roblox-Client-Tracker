-- ROBLOX NOTE: no upstream
-- this plugin serializes Roblox Instance objects
-- https://developer.roblox.com/en-us/api-reference/class/Instance

local CurrentModule = script.Parent.Parent
local Packages = CurrentModule.Parent

local JestGetType = require(Packages.JestGetType)
local getType = JestGetType.getType

local LuauPolyfill = require(Packages.LuauPolyfill)
local instanceof = LuauPolyfill.instanceof

local RobloxInstance = require(Packages.RobloxShared).RobloxInstance
local getRobloxProperties = RobloxInstance.getRobloxProperties
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
	local props = getRobloxProperties(val.ClassName)

	if #props > 0 or #children > 0 then
		result = result .. config.spacingOuter

		local indentationNext = indentation .. config.indent

		-- print properties of Instance
		for i, v in ipairs(props) do
			local name = printer(v, config, indentationNext, depth, refs)

			local value = val[v]
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
