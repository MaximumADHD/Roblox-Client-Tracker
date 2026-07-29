-- ROBLOX upstream: https://github.com/testing-library/dom-testing-library/blob/v8.14.0/src/DOMElementFilter.ts
-- ROBLOX comment: replaced with https://github.com/Roblox/jest-roblox/blob/v2.4.1/src/pretty-format/src/plugins/RobloxInstance.lua
--[[ ROBLOX comment:	
	this plugin serializes Roblox Instance objects
	https://developer.roblox.com/en-us/api-reference/class/Instance
]]
--!strict
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

	--[[
		ROBLOX TODO: do we truly need to reimplement this pretty printer?
		* missing recent RobloxShared pretty printing features
		  `printInstanceDefaults` in particular is important for compat
		* quantum UI workaround was added here but not RobloxShared
		* only adds a filtering function for children, we could implement
		  this in RobloxShared rather than bifurcating the impl
	]]
	local printChildrenList = Array.filter(val:GetChildren(), filter)
	table.sort(printChildrenList, function(a, b)
		return a.Name < b.Name
	end)

	-- ROBLOX TODO: this is a temporary hack to ensure the property list is
	-- stable due to quantum UI quirks. A mid-term fix will be added to
	-- `RobloxInstance.listProps` soon - remove this duplicate call then.
	RobloxInstance.listProps(val)
	local propertiesMap = RobloxInstance.listProps(val)
	local printPropsList = Object.keys(propertiesMap)
	-- ROBLOX TODO: skipping printInstanceDefaults because this wasn't here
	-- before, should we add it here too?
	-- if not config.printInstanceDefaults then
	-- 	local defaultsMap = RobloxInstance.listDefaultProps(val.ClassName)
	-- 	printPropsList = Array.filter(printPropsList, function(name)
	-- 		return propertiesMap[name] ~= defaultsMap[name]
	-- 	end)
	-- end
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
