-- upstream: https://github.com/facebook/jest/blob/v26.5.3/packages/pretty-format/src/index.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  */

-- deviation: ansi-styles not ported
-- local Types = require(script.Types)

local Workspace = script
local Modules = Workspace.Parent
local Packages = Modules.Parent.Parent

local isNaN = require(Packages.LuauPolyfill).Number.isNaN

local Collections = require(Workspace.Collections)
local printTableEntries = Collections.printTableEntries
local printListItems = Collections.printListItems

local AsymmetricMatcher = require(Workspace.plugins.AsymmetricMatcher)

local getType = require(Modules.JestGetType).getType

-- deviation: isToStringedArrayType omitted because lua has no typed arrays

local printer, createIndent

local function printNumber(val: number): string
	-- explicitly check for nan because string representation is platform dependent
	if isNaN(val) then
		return 'nan'
	end
	return tostring(val)
end

-- deviation: printBigInt omitted

local function printFunction(val: any, printFunctionName: boolean): string
	if not printFunctionName then
		return '[Function]'
	end
	-- deviation: lua has no named functions
	return '[Function ' .. 'anonymous' .. ']'
end

local function printSymbol(val): string
	return tostring(val)
end

-- deviation: printError omitted

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

	-- deviation: we check for boolean type since we can't do strict equality comparison
	-- deviation: undefined is treated as nil in lua
	if typeOf == 'boolean' or typeOf == 'nil' then
		return tostring(val)
	end

	if typeOf == 'number' then
		return printNumber(val)
	end
	-- deviation: printBigInt omitted because lua has no bingint type
	if typeOf == 'string' then
		if escapeString then
			val = val:gsub('\\', '\\\\')
			val = val:gsub('"', '\\"')
			return '"' .. val .. '"'
		end
		return '"' .. val .. '"'
	end
	if typeOf == 'function' then
		return printFunction(val, printFunctionName)
	end
	if typeOf == 'symbol' then
		return printSymbol(val)
	end

	-- deviation: modified to use Roblox DateTime
	if typeOf == 'DateTime' then
		-- Roblox DateTime:ToIsoDate doesn't include milliseconds
		return string.sub(val:ToIsoDate(), 1, -2) ..
			'.' ..
			string.format('%03d', val:ToUniversalTime().Millisecond) ..
			'Z'
	end

	if typeOf == 'regexp' then
		val = tostring(val)
		if escapeRegex then
			val = val:gsub('[\\%^%$%*%+%?%.%(%)|%[%]{}]', '\\%1')
			return val
		end
		return val
	end

	-- deviation: catchall for arbitrary userdata
	if typeOf == 'userdata' then
		return tostring(val)
	end

	-- deviation: omitted all the JS types

	return nil
end

-- deviation: function to check whether a table is an array
-- https://stackoverflow.com/questions/7526223/how-do-i-know-if-a-table-is-an-array/52697380#52697380
local function is_array(t)
	if type(t) ~= 'table' then
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
	config,
	indentation: string,
	depth: number,
	refs,
	hasCalledToJSON: boolean | nil
): string
	if table.find(refs, val) ~= nil then
		return '[Circular]'
	end
	refs = { unpack(refs) }
	table.insert(refs, val)

	depth = depth + 1
	local hitMaxDepth = depth > config.maxDepth
	local min = config.min

	if config.callToJSON and
		not hitMaxDepth and
		val.toJSON and
		typeof(val.toJSON) == 'function' and
		not hasCalledToJSON
	then
		return printer(val.toJSON(), config, indentation, depth, refs, true)
	end

	-- deviation: rewrote this part since lua only has tables
	if hitMaxDepth then
		if getType(val) == 'set' then
			return '[Set]'
		else
			return '[Table]'
		end
	end
	local retval = ''
	if not min then
		retval = 'Table' .. ' '
	end

	if is_array(val) then
		return retval ..
			'{' ..
			printListItems(val, config, indentation, depth, refs, printer) ..
			'}'
	end

	if getType(val) == 'set' then
		if hitMaxDepth then
			return '[Set]'
		else
			return 'Set {' ..
				printListItems(
					val._array,
					config,
					indentation,
					depth,
					refs,
					printer
				) ..
			'}'
		end
	end

	return retval ..
		'{' ..
		printTableEntries(val,
			config,
			indentation,
			depth,
			refs,
			printer
		) ..
		'}'
end

local function isNewPlugin(
	plugin_
)
	return plugin_.serialize ~= nil
end

function printPlugin(
	plugin_,
	val: any,
	config,
	indentation: string,
	depth: number,
	refs
): string
	local printed

	local ok, err = pcall(function()
		if isNewPlugin(plugin_) then
			printed = plugin_.serialize(val, config, indentation, depth, refs, printer)
		else
			printed = plugin_.print(
				val,
				function(valChild)
					return printer(valChild, config, indentation, depth, refs)
				end,
				function(str)
					local indentationNext = indentation + config.indent
					return indentationNext ..
						str:gsub('\n', '\n' .. indentationNext)
				end,
				{
					edgeSpacing = config.spacingOuter,
					min = config.min,
					spacing = config.spacingInner,
				},
				config.colors
			)
		end
	end)
	if not ok then
		error(string.format('PrettyFormatPluginError: %s', err))
	end

	if typeof(printed) ~= 'string' then
		error(string.format(
			'pretty-format: Plugin must return type "string" but instead returned "%s".',
			typeof(printed))
		)
	end
	return printed
end

local function findPlugin(plugins, val)
	for _, p in ipairs(plugins) do
		local ok, ret = pcall(p.test, val)
		if not ok then
			error(string.format('PrettyFormatPluginError: %s', ret))
		elseif ret then
			return p
		end
	end

	return nil
end

function printer(
	val: any,
	config,
	indentation: string,
	depth: number,
	refs,
	hasCalledToJSON: boolean | nil
): string
	local plugin_ = findPlugin(config.plugins, val)
	if plugin_ ~= nil then
		return printPlugin(plugin_, val, config, indentation, depth, refs)
	end

	local basicResult = printBasicValue(
		val,
		config.printFunctionName,
		config.escapeRegex,
		config.escapeString
	)
	if basicResult ~= nil then
		return basicResult
	end

	return printComplexValue(
		val,
		config,
		indentation,
		depth,
		refs,
		hasCalledToJSON
	)
end

-- deviation: color formatting omitted

local DEFAULT_OPTIONS = {
	callToJSON = true,
	escapeRegex = false,
	escapeString = true,
	highlight = false,
	indent = 2,
	maxDepth = 1/0,
	min = false,
	plugins = {},
	printFunctionName = true,
	-- deviation: color formatting omitted
	theme = nil,
}

local function validateOptions(options)
	for k, _ in pairs(options) do
		if DEFAULT_OPTIONS[k] == nil then
			error(string.format('pretty-format: Unknown option "%s".', tostring(k)))
		end
	end

	if options.min and options.indent ~= nil and options.indent ~= 0 then
		error('pretty-format: Options "min" and "indent" cannot be used together.')
	end

	-- deviation: color formatting omitted
end

-- deviation: color formatting omitted

-- deviation: replaced most get methods to reduce code repetition
local function getOption(options, opt)
	if options and options[opt] ~= nil then
		return options[opt]
	end
	return DEFAULT_OPTIONS[opt]
end

local function getIndent(options)
	if options and options.min then
		return ''
	end
	local number = DEFAULT_OPTIONS.indent
	if options and options.indent ~= nil then
		number = options.indent
	end
	return createIndent(number)
end

local function getSpacingInner(options)
	if options and options.min then
		return ' '
	end
	return '\n'
end

local function getSpacingOuter(options)
	if options and options.min then
		return ''
	end
	return '\n'
end

-- deviation: rewrote to replace ternary operators and reduce code repetition
local function getConfig(
	options
)
	return {
		callToJSON = getOption(options, 'callToJSON'),
		-- deviation: color formatting omitted
		colors = nil,
		escapeRegex = getOption(options, 'escapeRegex'),
		escapeString = getOption(options, 'escapeString'),
		indent = getIndent(options),
		maxDepth = getOption(options, 'maxDepth'),
		min = getOption(options, 'min'),
		plugins = getOption(options, 'plugins'),
		printFunctionName = getOption(options, 'printFunctionName'),
		spacingInner = getSpacingInner(options),
		spacingOuter = getSpacingOuter(options),
	}
end

function createIndent(indent: number): string
	-- deviation: used string repeat instead of a table join, also don't need the +1
	return string.rep(' ', indent)
end

-- /**
--  * Returns a presentation string of your `val` object
--  * @param val any potential JavaScript object
--  * @param options Custom settings
--  */
local function prettyFormat(
	val: any,
	options
): string
	if options then
		validateOptions(options)
		if options.plugins then
			local plugin_ = findPlugin(options.plugins, val)
			if plugin_ ~= nil then
				return printPlugin(plugin_, val, getConfig(options), '', 0, {})
			end
		end
	end

	local basicResult = printBasicValue(
		val,
		getOption(options, 'printFunctionName'),
		getOption(options, 'escapeRegex'),
		getOption(options, 'escapeString')
	)
	if basicResult ~= nil then
		return basicResult
	end

	-- deviation: luau doesn't handle optional arguments, explicitly pass nil
	return printComplexValue(val, getConfig(options), '', 0, {}, nil)
end

local plugins = {
	AsymmetricMatcher = AsymmetricMatcher
}

return {
	prettyFormat = prettyFormat,

	plugins = plugins,
}