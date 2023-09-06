-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/pretty-format/src/index.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  */

-- ROBLOX deviation: ansi-styles not ported

local CurrentModule = script
local Packages = CurrentModule.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Error = LuauPolyfill.Error
local Object = LuauPolyfill.Object
local extends = LuauPolyfill.extends
local isNaN = LuauPolyfill.Number.isNaN

local Collections = require(CurrentModule.Collections)
local printTableEntries = Collections.printTableEntries
local printMapEntries = Collections.printMapEntries
local printListItems = Collections.printListItems

local AsymmetricMatcher = require(CurrentModule.plugins.AsymmetricMatcher)
local ConvertAnsi = require(CurrentModule.plugins.ConvertAnsi)
local RobloxInstance = require(CurrentModule.plugins.RobloxInstance)
local ReactElement = require(CurrentModule.plugins.ReactElement)
local ReactTestComponent = require(CurrentModule.plugins.ReactTestComponent)

local JestGetType = require(Packages.JestGetType)
local getType = JestGetType.getType
local isRobloxBuiltin = JestGetType.isRobloxBuiltin

local Types = require(CurrentModule.Types)
export type Colors = Types.Colors
export type CompareKeys = Types.CompareKeys
export type Config = Types.Config
export type Options = Types.Options
export type OptionsReceived = Types.OptionsReceived
export type OldPlugin = Types.OldPlugin
export type NewPlugin = Types.NewPlugin
export type Plugin = Types.Plugin
export type Plugins = Types.Plugins
export type PrettyFormatOptions = Types.PrettyFormatOptions
export type Printer = Types.Printer
export type Refs = Types.Refs
export type Theme = Types.Theme

local PrettyFormatPluginError = extends(Error, "PrettyFormatPluginError", function(self, message)
	self.name = "PrettyFormatPluginError"
	self.message = message
end)

-- ROBLOX deviation: isToStringedArrayType omitted because lua has no typed arrays

local printer, createIndent

local function printNumber(val: number): string
	-- explicitly check for nan because string representation is platform dependent
	if isNaN(val) then
		return "nan"
	end
	return tostring(val)
end

-- ROBLOX deviation: printBigInt omitted

local function printFunction(val: any, printFunctionName: boolean): string
	if not printFunctionName then
		return "[Function]"
	end
	local functionName = debug.info(val, "n")
	if functionName == nil or functionName == "" then
		functionName = "anonymous"
	end
	return "[Function " .. functionName .. "]"
end

local function printSymbol(val: any): string
	return tostring(val)
end

local function printError(val)
	return "[" .. tostring(val) .. "]"
end

-- /**
--  * The first port of call for printing an object, handles most of the
--  * data-types in JS.
--  */
local function printBasicValue(
	val: any,
	printFunctionName: boolean,
	escapeRegex: boolean,
	escapeString: boolean
): string | nil
	local typeOf = getType(val)

	-- ROBLOX deviation: we check for boolean type since we can't do strict equality comparison
	-- ROBLOX deviation: undefined is treated as nil in lua
	if typeOf == "boolean" or typeOf == "nil" then
		return tostring(val)
	end

	if typeOf == "number" then
		return printNumber(val)
	end

	-- ROBLOX deviation: printBigInt omitted because lua has no bingint type
	if typeOf == "string" then
		if escapeString then
			val = val:gsub("\\", "\\\\")
			val = val:gsub('"', '\\"')
			return '"' .. val .. '"'
		end
		return '"' .. val .. '"'
	end
	if typeOf == "function" then
		return printFunction(val, printFunctionName)
	end
	if typeOf == "symbol" then
		return printSymbol(val)
	end

	-- ROBLOX deviation: modified to use Roblox DateTime
	if typeOf == "DateTime" then
		-- Roblox DateTime:ToIsoDate doesn't include milliseconds
		return string.sub(val:ToIsoDate(), 1, -2)
			.. "."
			.. string.format("%03d", val:ToUniversalTime().Millisecond)
			.. "Z"
	end

	if typeOf == "error" then
		return printError(val)
	end

	if typeOf == "regexp" then
		val = tostring(val)
		if escapeRegex then
			-- https://github.com/benjamingr/RegExp.escape/blob/main/polyfill.js
			val = val:gsub("[\\%^%$%*%+%?%.%(%)|%[%]{}]", "\\%1")
			return val
		end
		return val
	end

	-- ROBLOX deviation: output classname for Instance types
	if typeOf == "Instance" then
		return val.ClassName
	end

	-- ROBLOX deviation: output DataType for builtin types
	if isRobloxBuiltin(val) then
		return string.format("%s(%s)", typeOf, tostring(val))
	end

	-- ROBLOX deviation: catchall for arbitrary userdata
	if typeOf == "userdata" then
		return tostring(val)
	end

	-- ROBLOX deviation: omitted all the JS types

	return nil
end

-- ROBLOX deviation: function to check whether a table is an array
-- https://stackoverflow.com/questions/7526223/how-do-i-know-if-a-table-is-an-array/52697380#52697380
local function is_array(t)
	if type(t) ~= "table" then
		return false
	end

	-- objects always return empty size
	if #t > 0 then
		return true
	end

	-- only object can have empty length with elements inside
	for k, v in pairs(t) do
		return false
	end

	-- if no elements it can be array and not at same time
	return true
end

-- /**
--  * Handles more complex objects ( such as objects with circular references.
--  * maps and sets etc )
--  */
local function printComplexValue(
	val: any,
	config: Config,
	indentation: string,
	depth: number,
	refs: Refs,
	hasCalledToJSON: boolean?
): string
	if table.find(refs, val) ~= nil then
		return "[Circular]"
	end
	refs = { unpack(refs) }
	table.insert(refs, val)

	depth = depth + 1
	local hitMaxDepth = depth > config.maxDepth
	local min = config.min

	if
		config.callToJSON
		and not hitMaxDepth
		and val.toJSON
		and typeof(val.toJSON) == "function"
		and not hasCalledToJSON
	then
		return printer(val.toJSON(), config, indentation, depth, refs, true)
	end

	-- ROBLOX deviation start: rewrote this part since lua only has tables
	if hitMaxDepth then
		if getType(val) == "set" then
			return "[Set]"
		else
			return "[Table]"
		end
	end
	local retval = ""
	if not min then
		retval = if config.printBasicPrototype then "Table" .. " " else ""
	end

	if is_array(val) then
		return retval .. "{" .. printListItems(val, config, indentation, depth, refs, printer) .. "}"
	end

	if getType(val) == "set" then
		if hitMaxDepth then
			return "[Set]"
		else
			return "Set {" .. printListItems(val._array, config, indentation, depth, refs, printer) .. "}"
		end
	end

	if getType(val) == "map" then
		if hitMaxDepth then
			return "[Map]"
		else
			return "Map {" .. printMapEntries(val._map, config, indentation, depth, refs, printer) .. "}"
		end
	end

	return retval .. "{" .. printTableEntries(val, config, indentation, depth, refs, printer) .. "}"
	-- ROBLOX deviation end
end

local function isNewPlugin(plugin_: Plugin): boolean
	return (plugin_ :: NewPlugin).serialize ~= nil
end

function printPlugin(plugin_: Plugin, val: any, config: Config, indentation: string, depth: number, refs: Refs): string
	local printed

	local ok, err = pcall(function()
		if isNewPlugin(plugin_) then
			printed = (plugin_ :: NewPlugin).serialize(val, config, indentation, depth, refs, printer)
		else
			printed = (plugin_ :: OldPlugin).print(val, function(valChild)
				return printer(valChild, config, indentation, depth, refs)
			end, function(str)
				local indentationNext = indentation .. config.indent
				return indentationNext .. str:gsub("\n", "\n" .. indentationNext)
			end, {
				edgeSpacing = config.spacingOuter,
				min = config.min,
				spacing = config.spacingInner,
			}, config.colors)
		end
	end)
	if not ok then
		-- ROBLOX deviation START: float the error up if a PrettyFormatPluginError is already thrown to avoid nesting
		if typeof(err) == "table" and err.name == "PrettyFormatPluginError" then
			error(err)
		end
		-- ROBLOX deviation END
		error(PrettyFormatPluginError(err))
	end

	if typeof(printed) ~= "string" then
		error(
			Error(
				string.format(
					'pretty-format: Plugin must return type "string" but instead returned "%s".',
					typeof(printed)
				)
			)
		)
	end
	return printed
end

-- ROBLOX FIXME Luau: should infer this function a Plugin | nil, with no warnings
local function findPlugin(plugins: Plugins, val: any): Plugin | nil
	for _, p in ipairs(plugins) do
		local ok, ret = pcall(p.test, val)
		if not ok then
			error(PrettyFormatPluginError(ret))
		elseif ret then
			return p
		end
	end

	return nil
end

function printer(
	val: any,
	config: Config,
	indentation: string,
	depth: number,
	refs: Refs,
	hasCalledToJSON: boolean?
): string
	local plugin_ = findPlugin(config.plugins, val)
	if plugin_ ~= nil then
		return printPlugin(plugin_, val, config, indentation, depth, refs)
	end

	local basicResult = printBasicValue(val, config.printFunctionName, config.escapeRegex, config.escapeString)
	if basicResult ~= nil then
		return basicResult
	end

	return printComplexValue(val, config, indentation, depth, refs, hasCalledToJSON)
end

-- ROBLOX deviation: color formatting omitted

local DEFAULT_OPTIONS = {
	callToJSON = true,
	-- ROBLOX deviation: using Object.None instead of nil because assigning nil is no different from not assigning value at all
	compareKeys = Object.None,
	escapeRegex = false,
	escapeString = true,
	highlight = false,
	indent = 2,
	maxDepth = math.huge,
	maxWidth = math.huge,
	min = false,
	plugins = {},
	printBasicPrototype = true,
	-- ROBLOX deviation: option to omit default Roblox Instance values
	printInstanceDefaults = true,
	printFunctionName = true,
	-- ROBLOX deviation: color formatting omitted
	theme = nil,
}

local function validateOptions(options: OptionsReceived)
	for k, _ in pairs(options) do
		if DEFAULT_OPTIONS[k] == nil then
			error(Error(string.format('pretty-format: Unknown option "%s".', tostring(k))))
		end
	end

	if options.min and options.indent ~= nil and options.indent ~= 0 then
		error(Error('pretty-format: Options "min" and "indent" cannot be used together.'))
	end

	-- ROBLOX deviation: color formatting omitted
end

-- ROBLOX deviation: color formatting omitted

-- ROBLOX deviation: replaced most get methods to reduce code repetition
local function getOption(options: OptionsReceived?, opt): any
	if options and options[opt] ~= nil then
		return options[opt]
	end
	return DEFAULT_OPTIONS[opt]
end

local function getIndent(options: OptionsReceived?)
	if options and options.min then
		return ""
	end
	local number = DEFAULT_OPTIONS.indent
	if options and options.indent ~= nil then
		number = options.indent
	end
	return createIndent(number)
end

local function getSpacingInner(options: OptionsReceived?)
	if options and options.min then
		return " "
	end
	return "\n"
end

local function getSpacingOuter(options: OptionsReceived?)
	if options and options.min then
		return ""
	end
	return "\n"
end

-- ROBLOX deviation: rewrote to replace ternary operators and reduce code repetition
local function getConfig(options: OptionsReceived?): Config
	return {
		callToJSON = getOption(options, "callToJSON"),
		-- ROBLOX deviation: color formatting omitted
		colors = nil,
		compareKeys = if options ~= nil and typeof(options.compareKeys) == "function"
			then options.compareKeys
			else DEFAULT_OPTIONS.compareKeys,
		escapeRegex = getOption(options, "escapeRegex"),
		escapeString = getOption(options, "escapeString"),
		indent = getIndent(options),
		maxDepth = getOption(options, "maxDepth"),
		maxWidth = getOption(options, "maxWidth"),
		min = getOption(options, "min"),
		plugins = getOption(options, "plugins"),
		printBasicPrototype = if options ~= nil and options.printBasicPrototype ~= nil
			then options.printBasicPrototype
			else true,
		-- ROBLOX deviation: option to omit default Roblox Instance values
		printInstanceDefaults = getOption(options, "printInstanceDefaults"),
		printFunctionName = getOption(options, "printFunctionName"),
		spacingInner = getSpacingInner(options),
		spacingOuter = getSpacingOuter(options),
	}
end

function createIndent(indent: number): string
	-- ROBLOX deviation: used string repeat instead of a table join, also don't need the +1
	return string.rep(" ", indent)
end

-- /**
--  * Returns a presentation string of your `val` object
--  * @param val any potential JavaScript object
--  * @param options Custom settings
--  */
local function format(val: any, options: OptionsReceived?): string
	if options then
		validateOptions(options)
		if options.plugins then
			local plugin_ = findPlugin(options.plugins :: Plugins, val)
			if plugin_ ~= nil then
				return printPlugin(plugin_, val, getConfig(options), "", 0, {})
			end
		end
	end

	local basicResult = printBasicValue(
		val,
		getOption(options, "printFunctionName"),
		getOption(options, "escapeRegex"),
		getOption(options, "escapeString")
	)
	if basicResult ~= nil then
		return basicResult
	end

	-- ROBLOX deviation: luau doesn't handle optional arguments, explicitly pass nil
	return printComplexValue(val, getConfig(options), "", 0, {}, nil)
end

local plugins = {
	AsymmetricMatcher = AsymmetricMatcher,
	ConvertAnsi = ConvertAnsi,
	ReactElement = ReactElement,
	ReactTestComponent = ReactTestComponent,
	-- ROBLOX deviation: Roblox Instance matchers
	RobloxInstance = RobloxInstance,
}

return {
	format = format,
	default = format,

	plugins = plugins,
	DEFAULT_OPTIONS = DEFAULT_OPTIONS,
}
