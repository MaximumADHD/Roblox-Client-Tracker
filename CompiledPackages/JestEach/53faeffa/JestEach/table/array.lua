-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-each/src/table/array.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *
 ]]

local Packages = script.Parent.Parent.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
type Array<T> = LuauPolyfill.Array<T>

local RegExp = require(Packages.RegExp)

local exports = {}

-- ROBLOX deviation START: package not available using local implementation
-- local util = require(Packages.util)
local format = require(script.Parent.format)
-- ROBLOX deviation END

local typesModule = require(Packages.JestTypes)
type Global_ArrayTable = typesModule.Global_ArrayTable
type Global_Col = typesModule.Global_Col
type Global_Row = typesModule.Global_Row
type Global_Table = typesModule.Global_Table
local pretty = require(Packages.PrettyFormat).format

-- ROBLOX devation: Circular dependency, inline type
-- local bindModule = require(script.Parent.Parent.bind)
-- type EachTests = bindModule.EachTests
type EachTests = Array<{
	title: string,
	arguments: Array<any>,
}>
local interpolationModule = require(script.Parent.interpolation)
type Templates = interpolationModule.Templates
local interpolateVariables = interpolationModule.interpolateVariables

--[[
	ROBLOX deviation START: some strings require escaped version
	depending where they are used
]]
local SUPPORTED_PLACEHOLDERS = RegExp("%[sdifjoOp]")
local SUPPORTED_PLACEHOLDERS_PATTERN = "%%[sdifjoOp#]"
local PRETTY_PLACEHOLDER = "%p"
local PRETTY_PLACEHOLDER_PATTERN = "%%p"
local INDEX_PLACEHOLDER = "%%#"
local PLACEHOLDER_PREFIX = "%%"
local ESCAPED_PLACEHOLDER_PREFIX = "%%"
local ESCAPED_PLACEHOLDER_PREFIX_PATTERN = "%%%%"
local JEST_EACH_PLACEHOLDER_ESCAPE = "@@__JEST_EACH_PLACEHOLDER_ESCAPE__@@"
-- ROBLOX deviation END

-- ROBLOX deviation: predeclare variables
local isTemplates, normaliseTable, formatTitle, interpolateEscapedPlaceholders, isTable, colToRow, normalisePlaceholderValue, getMatchingPlaceholders, interpolatePrettyPlaceholder, interpolateTitleIndex

local function array(title: string, arrayTable: Global_ArrayTable): EachTests
	if isTemplates(title, arrayTable) then
		return Array.map(arrayTable, function(template, index)
			return {
				arguments = { template },
				title = interpolateVariables(title, template, index):gsub(
					ESCAPED_PLACEHOLDER_PREFIX_PATTERN,
					PLACEHOLDER_PREFIX
				),
			}
		end)
	end
	return Array.map(normaliseTable(arrayTable), function(row, index)
		return {
			arguments = Array.map(row, function(element)
				return element
			end),
			title = formatTitle(title, row, index),
		}
	end)
end

exports.default = array

function isTemplates(
	title: string,
	arrayTable: Global_ArrayTable
): boolean --[[ ROBLOX TODO: Unhandled node for type: TSTypePredicate ]] --[[ arrayTable is Templates ]]
	return not SUPPORTED_PLACEHOLDERS:test(interpolateEscapedPlaceholders(title))
		and not isTable(arrayTable)
		and Array.every(arrayTable, function(col)
			return col ~= nil and typeof(col) == "table"
		end)
end

function normaliseTable(table_: Global_ArrayTable): Global_Table
	return if isTable(table_) then table_ else Array.map(table_, colToRow)
end

function isTable(
	table_: Global_ArrayTable
): boolean --[[ ROBLOX TODO: Unhandled node for type: TSTypePredicate ]] --[[ table is Global.Table ]]
	return Array.every(table_, Array.isArray)
end

function colToRow(col: Global_Col): Global_Row
	return { col }
end

function formatTitle(title: string, row: Global_Row, rowIndex: number): string
	return Array.reduce(row, function(formattedTitle, value)
		local placeholder = getMatchingPlaceholders(formattedTitle)[1]
		local normalisedValue = normalisePlaceholderValue(value)
		if not Boolean.toJSBoolean(placeholder) then
			return formattedTitle
		end
		if placeholder == PRETTY_PLACEHOLDER then
			return interpolatePrettyPlaceholder(formattedTitle, normalisedValue)
		end
		return format(formattedTitle, normalisedValue)
	end, interpolateTitleIndex(interpolateEscapedPlaceholders(title), rowIndex)):gsub(
		JEST_EACH_PLACEHOLDER_ESCAPE,
		ESCAPED_PLACEHOLDER_PREFIX
	)
end

function normalisePlaceholderValue(value: any)
	if typeof(value) == "string" then
		local ref = value:gsub(PLACEHOLDER_PREFIX, JEST_EACH_PLACEHOLDER_ESCAPE)
		return ref
	else
		return value
	end
end

function getMatchingPlaceholders(title: string): Array<string>
	-- ROBLOX deviation START: js .match with /g flag and :gmatch are used in a different way
	local ref
	for match in title:gmatch(SUPPORTED_PLACEHOLDERS_PATTERN) do
		if ref == nil then
			ref = {}
		end
		table.insert(ref, match)
	end
	-- ROBLOX deviation END
	return ref or {}
end

function interpolateEscapedPlaceholders(title: string)
	local ref = title:gsub(ESCAPED_PLACEHOLDER_PREFIX_PATTERN, JEST_EACH_PLACEHOLDER_ESCAPE)
	return ref
end

function interpolateTitleIndex(title: string, index: number)
	local ref = title:gsub(INDEX_PLACEHOLDER, tostring(index), 1)
	return ref
end

function interpolatePrettyPlaceholder(title: string, value: any)
	local ref = title:gsub(PRETTY_PLACEHOLDER_PATTERN, pretty(value, { maxDepth = 1, min = true }), 1)
	return ref
end

return exports
