-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-diff/src/index.ts
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
local String = LuauPolyfill.String
local Symbol = LuauPolyfill.Symbol

type Record<T, V> = { [T]: V }

local PrettyFormat = require(Packages.PrettyFormat)
local prettyFormat = PrettyFormat.format
local PrettyFormat_ = require(CurrentModule.PrettyFormat)
-- ROBLOX TODO: fix PrettyFormat types imports
type PrettyFormatOptions = PrettyFormat_.PrettyFormatOptions

local chalk = require(Packages.ChalkLua)

local getType = require(Packages.JestGetType).getType

local cleanupSemanticModule = require(CurrentModule.CleanupSemantic)
local DIFF_DELETE = cleanupSemanticModule.DIFF_DELETE
local DIFF_EQUAL = cleanupSemanticModule.DIFF_EQUAL
local DIFF_INSERT = cleanupSemanticModule.DIFF_INSERT
local Diff = cleanupSemanticModule.Diff
export type Diff = cleanupSemanticModule.Diff

local normalizeDiffOptions = require(CurrentModule.NormalizeDiffOptions).normalizeDiffOptions

local diffLinesRaw = require(CurrentModule.DiffLines).diffLinesRaw
local diffLinesUnified = require(CurrentModule.DiffLines).diffLinesUnified
local diffLinesUnified2 = require(CurrentModule.DiffLines).diffLinesUnified2

local diffStringsRaw = require(CurrentModule.PrintDiffs).diffStringsRaw
local diffStringsUnified = require(CurrentModule.PrintDiffs).diffStringsUnified

local typesModule = require(CurrentModule.types)
export type DiffOptions = typesModule.DiffOptions
export type DiffOptionsColor = typesModule.DiffOptionsColor

local NO_DIFF_MESSAGE = require(CurrentModule.Constants).NO_DIFF_MESSAGE
local SIMILAR_MESSAGE = require(CurrentModule.Constants).SIMILAR_MESSAGE

-- ROBLOX deviation start: predefine functions
local comparePrimitive
local compareObjects
local getFormatOptions
local getObjectsDifference
-- ROBLOX deviation end

local function getCommonMessage(message: string, options: DiffOptions?)
	local commonColor = normalizeDiffOptions(options)["commonColor"]
	return commonColor(message)
end

-- ROBLOX TODO: continue to add prettyFormat plugins
local prettyFormatPlugins = PrettyFormat.plugins
local PLUGINS = {
	prettyFormatPlugins.AsymmetricMatcher,
	-- ROBLOX deviation: Roblox Instance matchers
	prettyFormatPlugins.RobloxInstance,
}
local FORMAT_OPTIONS = {
	plugins = PLUGINS,
}
local FALLBACK_FORMAT_OPTIONS = {
	callToJSON = false,
	maxDepth = 10,
	plugins = PLUGINS,
}

-- local sortTable

-- Generate a string that will highlight the difference between two values
-- with green and red. (similar to how github does code diffing)
-- eslint-disable-next-line @typescript-eslint/explicit-module-boundary-types
local function diff(a: any, b: any, options: DiffOptions?): string?
	if Object.is(a, b) then
		return getCommonMessage(NO_DIFF_MESSAGE, options)
	end

	local aType = getType(a)
	local expectedType = aType
	local omitDifference = false

	if aType == "table" and getType(a.asymmetricMatch) == "function" then
		if a["$$typeof"] ~= Symbol.for_("jest.asymmetricMatcher") then
			-- Do not know expected type of user-defined asymmetric matcher.
			return nil
		end
		if typeof(a.getExpectedType) ~= "function" then
			-- For example, expect.anything() matches either null or undefined
			return nil
		end
		expectedType = a:getExpectedType()
		-- Primitive types boolean and number omit difference below.
		-- For example, omit difference for expect.stringMatching(regexp)
		omitDifference = expectedType == "string"
	end

	if expectedType ~= getType(b) then
		return string.format(
			"  Comparing two different types of values." .. " Expected %s but " .. "received %s.",
			chalk.green(expectedType),
			chalk.red(getType(b))
		)
	end

	if omitDifference then
		return nil
	end

	if aType == "string" then
		return diffLinesUnified(string.split(a, "\n"), string.split(b, "\n"), options)
	elseif aType == "boolean" or aType == "number" then
		return comparePrimitive(a, b, options)
		-- ROBLOX deviation: omitted, no ordered tables in lua
		-- elseif aType == 'table' then
		-- 	return compareObjects(sortTable(a), sortTable(b), options)
	end
	return compareObjects(a, b, options)
end

function comparePrimitive(a: number | boolean, b: number | boolean, options: DiffOptions?)
	local aFormat = prettyFormat(a, FORMAT_OPTIONS)
	local bFormat = prettyFormat(b, FORMAT_OPTIONS)
	if aFormat == bFormat then
		return getCommonMessage(NO_DIFF_MESSAGE, options)
	end
	return diffLinesUnified(string.split(aFormat, "\n"), string.split(bFormat, "\n"), options)
end

-- ROBLOX deviation: omitted, no ordered tables in lua

function compareObjects(a, b, options: DiffOptions?)
	local difference
	local hasThrown = false

	local ok, _ = pcall(function()
		local formatOptions = getFormatOptions(FORMAT_OPTIONS, options)
		difference = getObjectsDifference(a, b, formatOptions, options)
		-- local aCompare = prettyFormat(a, FORMAT_OPTIONS_0)
		-- local bCompare = prettyFormat(b, FORMAT_OPTIONS_0)

		-- if aCompare == bCompare then
		-- 	difference = noDiffMessage
		-- else
		-- 	local aDisplay = prettyFormat(a, FORMAT_OPTIONS)
		-- 	local bDisplay = prettyFormat(b, FORMAT_OPTIONS)
		-- 	difference = diffLinesUnified2(
		-- 		string.split(aDisplay, '\n'),
		-- 		string.split(bDisplay, '\n'),
		-- 		string.split(aCompare, '\n'),
		-- 		string.split(bCompare, '\n'),
		-- 		options
		-- 	)
		-- end
	end)
	if not ok then
		hasThrown = true
	end

	local noDiffMessage = getCommonMessage(NO_DIFF_MESSAGE, options)
	-- If the comparison yields no results, compare again but this time
	-- without calling `toJSON`. It's also possible that toJSON might throw.
	if difference == nil or difference == noDiffMessage then
		local formatOptions = getFormatOptions(FALLBACK_FORMAT_OPTIONS, options)
		difference = getObjectsDifference(a, b, formatOptions, options)
		-- local aCompare = prettyFormat(a, FALLBACK_FORMAT_OPTIONS_0)
		-- local bCompare = prettyFormat(b, FALLBACK_FORMAT_OPTIONS_0)

		-- if aCompare == bCompare then
		-- 	difference = noDiffMessage
		-- else
		-- 	local aDisplay = prettyFormat(a, FALLBACK_FORMAT_OPTIONS)
		-- 	local bDisplay = prettyFormat(b, FALLBACK_FORMAT_OPTIONS)

		-- 	difference = diffLinesUnified2(
		-- 		string.split(aDisplay, '\n'),
		-- 		string.split(bDisplay, '\n'),
		-- 		string.split(aCompare, '\n'),
		-- 		string.split(bCompare, '\n'),
		-- 		options
		-- 	)
		-- end

		if difference ~= noDiffMessage and not hasThrown then
			difference = getCommonMessage(SIMILAR_MESSAGE, options) .. "\n\n" .. difference
		end
	end

	return difference
end

function getFormatOptions(formatOptions: PrettyFormatOptions, options: DiffOptions?): PrettyFormatOptions
	local compareKeys = normalizeDiffOptions(options).compareKeys
	return Object.assign({}, formatOptions, { compareKeys = compareKeys })
end

function getObjectsDifference(
	a: Record<string, any>,
	b: Record<string, any>,
	formatOptions: PrettyFormatOptions,
	options: DiffOptions?
): string
	local formatOptionsZeroIndent = Object.assign({}, formatOptions, { indent = 0 })
	local aCompare = prettyFormat(a, formatOptionsZeroIndent)
	local bCompare = prettyFormat(b, formatOptionsZeroIndent)
	if aCompare == bCompare then
		return getCommonMessage(NO_DIFF_MESSAGE, options)
	else
		local aDisplay = prettyFormat(a, formatOptions)
		local bDisplay = prettyFormat(b, formatOptions)
		return diffLinesUnified2(
			String.split(aDisplay, "\n"),
			String.split(bDisplay, "\n"),
			String.split(aCompare, "\n"),
			String.split(bCompare, "\n"),
			options
		)
	end
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
