-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-diff/src/printDiffs.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  */

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
type Array<T> = LuauPolyfill.Array<T>

local CleanupSemantic = require(CurrentModule.CleanupSemantic)
local DIFF_EQUAL = CleanupSemantic.DIFF_EQUAL
local cleanupSemantic = CleanupSemantic.cleanupSemantic
type Diff = CleanupSemantic.Diff

local DiffLines = require(CurrentModule.DiffLines)
local diffLinesUnified = DiffLines.diffLinesUnified
local printDiffLines = DiffLines.printDiffLines

local diffStrings = require(CurrentModule.DiffStrings)

local getAlignedDiffs = require(CurrentModule.GetAlignedDiffs)

local normalizeDiffOptions = require(CurrentModule.NormalizeDiffOptions).normalizeDiffOptions

local Types = require(CurrentModule.types)
type DiffOptions = Types.DiffOptions

local diffStringsRaw

local function hasCommonDiff(diffs: Array<Diff>, isMultiline: boolean): boolean
	if isMultiline then
		-- Important: Ignore common newline that was appended to multiline strings!
		local iLast = #diffs
		return Array.some(diffs, function(diff, i)
			return diff[1] == DIFF_EQUAL and (i ~= iLast or diff[2] ~= "\n")
		end)
	end

	return Array.some(diffs, function(diff)
		return diff[1] == DIFF_EQUAL
	end)
end

-- Compare two strings character-by-character.
-- Format as comparison lines in which changed substrings have inverse colors.
local function diffStringsUnified(a: string, b: string, options: DiffOptions?): string
	if a ~= b and #a ~= 0 and #b ~= 0 then
		local isMultiline = a:find("\n") ~= nil or b:find("\n") ~= nil

		-- getAlignedDiffs assumes that a newline was appended to the strings.
		local diffs = diffStringsRaw(
			isMultiline and a .. "\n" or a,
			isMultiline and b .. "\n" or b,
			true -- cleanupSemantic
		)

		if hasCommonDiff(diffs, isMultiline) then
			local optionsNormalized = normalizeDiffOptions(options)
			local lines = getAlignedDiffs(diffs, optionsNormalized.changeColor)
			return printDiffLines(lines, optionsNormalized)
		end
	end

	-- Fall back to line-by-line diff.
	return diffLinesUnified(a:split("\n"), b:split("\n"), options)
end

-- Compare two strings character-by-character.
-- Optionally clean up small common substrings, also known as chaff.
function diffStringsRaw(a: string, b: string, cleanup: boolean): Array<Diff>
	local diffs = diffStrings(a, b)

	if cleanup then
		cleanupSemantic(diffs) -- impure function
	end

	return diffs
end

return {
	diffStringsUnified = diffStringsUnified,
	diffStringsRaw = diffStringsRaw,
}
