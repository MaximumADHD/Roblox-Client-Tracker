-- upstream: https://github.com/facebook/jest/blob/v26.5.3/packages/jest-diff/src/printDiffs.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  */

local Workspace = script.Parent
local Modules = Workspace.Parent
local Packages = Modules.Parent.Parent

local Array = require(Packages.LuauPolyfill).Array

local DIFF_EQUAL = require(Workspace.CleanupSemantic).DIFF_EQUAL
local cleanupSemantic = require(Workspace.CleanupSemantic).cleanupSemantic

local diffLinesUnified = require(Workspace.DiffLines).diffLinesUnified
local printDiffLines = require(Workspace.DiffLines).printDiffLines

local diffStrings = require(Workspace.DiffStrings)

local getAlignedDiffs = require(Workspace.GetAlignedDiffs)

local normalizeDiffOptions = require(Workspace.NormalizeDiffOptions).normalizeDiffOptions

-- TODO: add external types

local diffStringsRaw

local function hasCommonDiff(diffs: { [number]: any }, isMultiline: boolean): boolean
	if isMultiline then
		-- // Important: Ignore common newline that was appended to multiline strings!
		local iLast = #diffs - 1
		return Array.some(diffs,
			function(diff, i)
				return diff[1] == DIFF_EQUAL and (i ~= iLast or diff[2] ~= '\n')
			end
		)
	end

	return Array.some(diffs, function(diff)
		return diff[1] == DIFF_EQUAL
	end)
end

-- // Compare two strings character-by-character.
-- // Format as comparison lines in which changed substrings have inverse colors.
local function diffStringsUnified(
	a: string,
	b: string,
	options
): string
	if a ~= b and #a ~= 0 and #b ~= 0 then
		local isMultiline = a:find('\n') ~= nil or b:find('\n') ~= nil

		-- // getAlignedDiffs assumes that a newline was appended to the strings.
		local diffs = diffStringsRaw(
			isMultiline and a .. '\n' or a,
			isMultiline and b .. '\n' or b,
			true -- // cleanupSemantic
		)

		if hasCommonDiff(diffs, isMultiline) then
			local optionsNormalized = normalizeDiffOptions(options)
			local lines = getAlignedDiffs(diffs, optionsNormalized.changeColor)
			return printDiffLines(lines, optionsNormalized)
		end
	end

	-- // Fall back to line-by-line diff.
	return diffLinesUnified(a:split('\n'), b:split('\n'), options)
end

-- // Compare two strings character-by-character.
-- // Optionally clean up small common substrings, also known as chaff.
function diffStringsRaw(
	a: string,
	b: string,
	cleanup: boolean
)
	local diffs = diffStrings(a, b)

	if cleanup then
		cleanupSemantic(diffs) -- // impure function
	end

	return diffs
end

return {
	diffStringsUnified = diffStringsUnified,
	diffStringsRaw = diffStringsRaw,
}