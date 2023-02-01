-- ROBLOX upstream: https://github.com/testing-library/dom-testing-library/blob/v8.14.0/src/DOMElementFilter.ts
-- ROBLOX comment: replaced with https://github.com/Roblox/jest-roblox/blob/v2.4.1/src/pretty-format/src/plugins/RobloxInstance.lua
--[[ ROBLOX comment:	
	this plugin serializes Roblox Instance objects
	https://developer.roblox.com/en-us/api-reference/class/Instance
]]
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object
local instanceof = LuauPolyfill.instanceof
type Object = LuauPolyfill.Object

local exports = {}

local JestGetType = require(Packages.JestGetType)
local getType = JestGetType.getType

local RobloxInstance = require(Packages.RobloxShared).RobloxInstance
local getRobloxProperties = RobloxInstance.getRobloxProperties
local InstanceSubset = RobloxInstance.InstanceSubset

local function printTableEntries(
	t: any,
	config: Config,
	indentation: string,
	depth: number,
	refs: Refs,
	printer: Printer,
	separator_: string?
): string
	local separator = if separator_ then separator_ else ": "
	local result = ""

	-- ROBLOX TODO: remove this inline if-expression and function once Array.sort() fix merges
	local keys = Array.sort(
		Object.keys(t),
		if config.compareKeys ~= nil and config.compareKeys ~= Object.None
			then config.compareKeys
			else function(a, b)
				return if type(a) .. tostring(a) < type(b) .. tostring(b)
					then -1
					else if type(a) .. tostring(a) == type(b) .. tostring(b) then 0 else 1
			end
	)

	if #keys > 0 then
		result ..= config.spacingOuter

		local indentationNext = indentation .. config.indent

		for i = 1, #keys do
			local k = keys[i]
			local v = t[k]
			local name = printer(k, config, indentationNext, depth, refs)
			local value = printer(v, config, indentationNext, depth, refs)

			result ..= indentationNext .. name .. separator .. value

			if i < #keys then
				result = result .. "," .. config.spacingInner
			elseif not config.min then
				result = result .. ","
			end
		end

		result ..= config.spacingOuter .. indentation
	end

	return result
end

type Config = Object
type Refs = { [number]: any }
type Printer = (any, Config, string, number, Refs, boolean?) -> string

local function printInstance(
	val: any,
	config: Config,
	indentation: string,
	depth: number,
	refs: Refs,
	printer: Printer,
	filter: any
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

		--[[ROBLOX comment:
			some properties are not stable until they are accesed
			this workaround access all of them once before printing
		]]
		local _workaround: any
		for _, v in ipairs(props) do
			_workaround = val[v]
		end
		_workaround = nil

		-- ROBLOX comment: print properties of Instance
		for i, v in ipairs(props) do
			local name = printer(v, config, indentationNext, depth, refs)

			local value = val[v]
			-- ROBLOX comment: collapses output for Instance values to avoid loops
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

		-- ROBLOX comment: recursively print children of Instance
		local filtered = Array.filter(children, filter)
		for i, v in ipairs(filtered) do
			local name = printer(v.Name, config, indentationNext, depth, refs)
			local value = printer(v, config, indentationNext, depth, refs)

			result = string.format("%s%s%s: %s", result, indentationNext, name, value)

			if i < #filtered then
				result = result .. "," .. config.spacingInner
			elseif not config.min then
				result = result .. ","
			end
		end

		result = result .. config.spacingOuter .. indentation
	end

	return result
end

local function serialize(filter: any)
	return function(val: any, config: Config, indentation: string, depth: number, refs: Refs, printer: Printer): string
		depth = depth + 1

		if depth >= config.maxDepth then
			return string.format('"%s" [%s]', val.Name, val.ClassName)
		end

		if instanceof(val, InstanceSubset) then
			return val.ClassName
				.. " {"
				.. printTableEntries(val.subset, config, indentation, depth, refs, printer)
				.. "}"
		end

		return val.ClassName .. " {" .. printInstance(val, config, indentation, depth, refs, printer, filter) .. "}"
	end
end

local function test(val: any): boolean
	return getType(val) == "Instance" or instanceof(val, InstanceSubset)
end

local function createDOMElementFilter(filterNode: (node: Instance) -> boolean)
	return {
		test = test,
		serialize = serialize(filterNode),
	}
end
exports.default = createDOMElementFilter

return exports
