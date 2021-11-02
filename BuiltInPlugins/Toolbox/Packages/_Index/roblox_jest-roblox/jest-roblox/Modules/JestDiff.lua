-- upstream: https://github.com/facebook/jest/blob/v26.5.3/packages/jest-diff/src/index.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  */

local Workspace = script
local Modules = Workspace.Parent
local Packages = Modules.Parent.Parent

local Polyfills = require(Packages.LuauPolyfill)
local Object = Polyfills.Object
local Symbol = Polyfills.Symbol

local prettyFormat = require(Modules.PrettyFormat).prettyFormat

local chalk = require(Packages.ChalkLua)

local getType = require(Modules.JestGetType).getType

local DIFF_DELETE = require(Workspace.CleanupSemantic).DIFF_DELETE
local DIFF_EQUAL = require(Workspace.CleanupSemantic).DIFF_EQUAL
local DIFF_INSERT = require(Workspace.CleanupSemantic).DIFF_INSERT
local Diff = require(Workspace.CleanupSemantic).Diff

local normalizeDiffOptions = require(Workspace.NormalizeDiffOptions).normalizeDiffOptions

local diffLinesRaw = require(Workspace.DiffLines).diffLinesRaw
local diffLinesUnified = require(Workspace.DiffLines).diffLinesUnified
local diffLinesUnified2 = require(Workspace.DiffLines).diffLinesUnified2

local diffStringsRaw = require(Workspace.PrintDiffs).diffStringsRaw
local diffStringsUnified = require(Workspace.PrintDiffs).diffStringsUnified

local NO_DIFF_MESSAGE = require(Workspace.Constants).NO_DIFF_MESSAGE
local SIMILAR_MESSAGE = require(Workspace.Constants).SIMILAR_MESSAGE

-- TODO: add external types

local comparePrimitive, compareObjects

local function getCommonMessage(message: string, options: any?)
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

-- local pfPlugins = prettyFormat.plugins
local AsymmetricMatcher = require(Workspace.Parent.PrettyFormat).plugins.AsymmetricMatcher
local PLUGINS = { AsymmetricMatcher } -- TODO: continue to implement prettyFormat plugins
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
local function diff(a: any, b: any, options: any?): string | nil
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
	options: any?
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
	options: any?
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
