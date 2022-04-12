-- upstream: https://github.com/facebook/jest/blob/v27.2.5/packages/jest-diff/src/index.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  */

local CurrentModule = script
local Packages = CurrentModule.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
local Symbol = LuauPolyfill.Symbol

local PrettyFormat = require(Packages.PrettyFormat)
local prettyFormat = PrettyFormat.prettyFormat

local chalk = require(Packages.ChalkLua)

local getType = require(Packages.JestGetType).getType

local DIFF_DELETE = require(CurrentModule.CleanupSemantic).DIFF_DELETE
local DIFF_EQUAL = require(CurrentModule.CleanupSemantic).DIFF_EQUAL
local DIFF_INSERT = require(CurrentModule.CleanupSemantic).DIFF_INSERT
local Diff = require(CurrentModule.CleanupSemantic).Diff

local normalizeDiffOptions = require(CurrentModule.NormalizeDiffOptions).normalizeDiffOptions

local diffLinesRaw = require(CurrentModule.DiffLines).diffLinesRaw
local diffLinesUnified = require(CurrentModule.DiffLines).diffLinesUnified
local diffLinesUnified2 = require(CurrentModule.DiffLines).diffLinesUnified2

local diffStringsRaw = require(CurrentModule.PrintDiffs).diffStringsRaw
local diffStringsUnified = require(CurrentModule.PrintDiffs).diffStringsUnified

local NO_DIFF_MESSAGE = require(CurrentModule.Constants).NO_DIFF_MESSAGE
local SIMILAR_MESSAGE = require(CurrentModule.Constants).SIMILAR_MESSAGE

local Types = require(CurrentModule.types)
type DiffOptions = Types.DiffOptions

local comparePrimitive, compareObjects

local function getCommonMessage(message: string, options: DiffOptions?)
	local commonColor = normalizeDiffOptions(options)['commonColor']
	return commonColor(message)
end

-- deviation: added a table copy method to set options
local function tableCopy(t)
	local copy = {}
	for key, value in pairs(t) do
		copy[key] = value
	end
	return copy
end

-- ROBLOX TODO: continue to add prettyFormat plugins
local prettyFormatPlugins = PrettyFormat.plugins
local PLUGINS = { 
	prettyFormatPlugins.AsymmetricMatcher,
	-- ROBLOX deviation: Roblox Instance matchers
	prettyFormatPlugins.RobloxInstance
}
local FORMAT_OPTIONS = {
	plugins = PLUGINS,
}
local FORMAT_OPTIONS_0 = tableCopy(FORMAT_OPTIONS)
FORMAT_OPTIONS_0['indent'] = 0
local FALLBACK_FORMAT_OPTIONS = {
	callToJSON = false,
	maxDepth = 10,
	plugins = PLUGINS,
}
local FALLBACK_FORMAT_OPTIONS_0 = tableCopy(FALLBACK_FORMAT_OPTIONS)
FALLBACK_FORMAT_OPTIONS_0['indent'] = 0

-- local sortTable

-- // Generate a string that will highlight the difference between two values
-- // with green and red. (similar to how github does code diffing)
-- // eslint-disable-next-line @typescript-eslint/explicit-module-boundary-types
local function diff(a: any, b: any, options: DiffOptions?): string?
	if Object.is(a, b) then
		return getCommonMessage(NO_DIFF_MESSAGE, options)
	end

	local aType = getType(a)
	local expectedType = aType
	local omitDifference = false

	if aType == "table" and getType(a.asymmetricMatch) == "function" then
		if a["$$typeof"] ~= Symbol.for_("jest.asymmetricMatcher") then
			-- // Do not know expected type of user-defined asymmetric matcher.
			return nil
		end
		if typeof(a.getExpectedType) ~= 'function' then
			-- // For example, expect.anything() matches either null or undefined
			return nil
		end
		expectedType = a:getExpectedType()
		-- // Primitive types boolean and number omit difference below.
		-- // For example, omit difference for expect.stringMatching(regexp)
		omitDifference = expectedType == 'string'
	end

	if expectedType ~= getType(b) then
		return string.format(
			'  Comparing two different types of values.' ..
			' Expected %s but ' ..
			'received %s.',
			chalk.green(expectedType), chalk.red(getType(b))
		)
	end

	if omitDifference then
		return nil
	end

	if aType == 'string' then
		return diffLinesUnified(string.split(a, '\n'), string.split(b, '\n'), options)
	elseif aType == 'boolean' or aType == 'number'then
		return comparePrimitive(a, b, options)
	-- deviation: omitted, no ordered tables in lua
	-- elseif aType == 'table' then
	-- 	return compareObjects(sortTable(a), sortTable(b), options)
	end
	return compareObjects(a, b, options)
end

function comparePrimitive(
	a: number | boolean,
	b: number | boolean,
	options: DiffOptions?
)
	local aFormat = prettyFormat(a, FORMAT_OPTIONS)
	local bFormat = prettyFormat(b, FORMAT_OPTIONS)
	if aFormat == bFormat then
		return getCommonMessage(NO_DIFF_MESSAGE, options)
	end
	return diffLinesUnified(string.split(aFormat, '\n'), string.split(bFormat, '\n'), options)
end

-- deviation: omitted, no ordered tables in lua

function compareObjects(
	a,
	b,
	options: DiffOptions?
)
	local difference
	local hasThrown = false
	local noDiffMessage = getCommonMessage(NO_DIFF_MESSAGE, options)

	local ok, _ = pcall(function()
		local aCompare = prettyFormat(a, FORMAT_OPTIONS_0)
		local bCompare = prettyFormat(b, FORMAT_OPTIONS_0)

		if aCompare == bCompare then
			difference = noDiffMessage
		else
			local aDisplay = prettyFormat(a, FORMAT_OPTIONS)
			local bDisplay = prettyFormat(b, FORMAT_OPTIONS)
			difference = diffLinesUnified2(
				string.split(aDisplay, '\n'),
				string.split(bDisplay, '\n'),
				string.split(aCompare, '\n'),
				string.split(bCompare, '\n'),
				options
			)
		end
	end)
	if not ok then
		hasThrown = true
	end

	-- // If the comparison yields no results, compare again but this time
	-- // without calling `toJSON`. It's also possible that toJSON might throw.
	if difference == nil or difference == noDiffMessage then
		local aCompare = prettyFormat(a, FALLBACK_FORMAT_OPTIONS_0)
		local bCompare = prettyFormat(b, FALLBACK_FORMAT_OPTIONS_0)

		if aCompare == bCompare then
			difference = noDiffMessage
		else
			local aDisplay = prettyFormat(a, FALLBACK_FORMAT_OPTIONS)
			local bDisplay = prettyFormat(b, FALLBACK_FORMAT_OPTIONS)

			difference = diffLinesUnified2(
				string.split(aDisplay, '\n'),
				string.split(bDisplay, '\n'),
				string.split(aCompare, '\n'),
				string.split(bCompare, '\n'),
				options
			)
		end

		if difference ~= noDiffMessage and not hasThrown then
			difference = getCommonMessage(SIMILAR_MESSAGE, options) .. '\n\n' .. difference
		end
	end

	return difference
end

return {
	diffLinesRaw = diffLinesRaw,
	diffLinesUnified = diffLinesUnified,
	diffLinesUnified2 = diffLinesUnified2,

	diffStringsRaw = diffStringsRaw,
	diffStringsUnified = diffStringsUnified,

	DIFF_DELETE = DIFF_DELETE,
	DIFF_EQUAL = DIFF_EQUAL,
	DIFF_INSERT = DIFF_INSERT,
	Diff = Diff,

	diff = diff,
}
