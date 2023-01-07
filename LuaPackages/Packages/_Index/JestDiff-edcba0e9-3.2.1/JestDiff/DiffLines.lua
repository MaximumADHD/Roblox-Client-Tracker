-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-diff/src/diffLines.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  */

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>

local diff = require(Packages.DiffSequences)

local CleanupSemantic = require(CurrentModule.CleanupSemantic)
local DIFF_DELETE = CleanupSemantic.DIFF_DELETE
local DIFF_EQUAL = CleanupSemantic.DIFF_EQUAL
local DIFF_INSERT = CleanupSemantic.DIFF_INSERT
local Diff = CleanupSemantic.Diff
type Diff = CleanupSemantic.Diff

local joinAlignedDiffsExpand = require(CurrentModule.JoinAlignedDiffs).joinAlignedDiffsExpand
local joinAlignedDiffsNoExpand = require(CurrentModule.JoinAlignedDiffs).joinAlignedDiffsNoExpand

local normalizeDiffOptions = require(CurrentModule.NormalizeDiffOptions).normalizeDiffOptions

local Types = require(CurrentModule.types)
type DiffOptions = Types.DiffOptions
type DiffOptionsNormalized = Types.DiffOptionsNormalized

local diffLinesRaw

local function isEmptyString(lines: { [number]: string }): boolean
	return #lines == 1 and #lines[1] == 0
end

export type ChangeCounts = { a: number, b: number }

local function countChanges(diffs: Array<Diff>): ChangeCounts
	local a = 0
	local b = 0

	for _, d in ipairs(diffs) do
		local case = d[1]
		if case == DIFF_DELETE then
			a += 1
		elseif case == DIFF_INSERT then
			b += 1
		end
	end

	return { a = a, b = b }
end

local function printAnnotation(options: DiffOptionsNormalized, changeCounts: ChangeCounts): string
	local aAnnotation = options.aAnnotation
	local aColor = options.aColor
	local aIndicator = options.aIndicator
	local bAnnotation = options.bAnnotation
	local bColor = options.bColor
	local bIndicator = options.bIndicator
	local includeChangeCounts = options.includeChangeCounts
	local omitAnnotationLines = options.omitAnnotationLines

	if omitAnnotationLines then
		return ""
	end

	local aRest = ""
	local bRest = ""

	if includeChangeCounts then
		local aCount = tostring(changeCounts.a)
		local bCount = tostring(changeCounts.b)

		-- Padding right aligns the ends of the annotations.
		local baAnnotationLengthDiff = #bAnnotation - #aAnnotation
		local aAnnotationPadding = string.rep(" ", math.max(0, baAnnotationLengthDiff))
		local bAnnotationPadding = string.rep(" ", math.max(0, -baAnnotationLengthDiff))

		-- Padding left aligns the ends of the counts.
		local baCountLengthDiff = #bCount - #aCount
		local aCountPadding = string.rep(" ", math.max(0, baCountLengthDiff))
		local bCountPadding = string.rep(" ", math.max(0, -baCountLengthDiff))

		aRest = aAnnotationPadding .. "  " .. aIndicator .. " " .. aCountPadding .. aCount
		bRest = bAnnotationPadding .. "  " .. bIndicator .. " " .. bCountPadding .. bCount
	end

	return aColor(aIndicator .. " " .. aAnnotation .. aRest)
		.. "\n"
		.. bColor(bIndicator .. " " .. bAnnotation .. bRest)
		.. "\n\n"
end

local function printDiffLines(diffs: Array<Diff>, options: DiffOptionsNormalized): string
	if options.expand then
		return printAnnotation(options, countChanges(diffs)) .. joinAlignedDiffsExpand(diffs, options)
	end
	return printAnnotation(options, countChanges(diffs)) .. joinAlignedDiffsNoExpand(diffs, options)
end

-- Compare two arrays of strings line-by-line. Format as comparison lines.
local function diffLinesUnified(
	aLines: { [number]: string },
	bLines: { [number]: string },
	options: DiffOptions?
): string
	if isEmptyString(aLines) then
		aLines = {}
	end
	if isEmptyString(bLines) then
		bLines = {}
	end

	return printDiffLines(diffLinesRaw(aLines, bLines), normalizeDiffOptions(options))
end

-- Given two pairs of arrays of strings:
-- Compare the pair of comparison arrays line-by-line.
-- Format the corresponding lines in the pair of displayable arrays.
local function diffLinesUnified2(
	aLinesDisplay: { [number]: string },
	bLinesDisplay: { [number]: string },
	aLinesCompare: { [number]: string },
	bLinesCompare: { [number]: string },
	options: DiffOptions?
): string
	if isEmptyString(aLinesDisplay) and isEmptyString(aLinesCompare) then
		aLinesDisplay = {}
		aLinesCompare = {}
	end
	if isEmptyString(bLinesDisplay) and isEmptyString(bLinesCompare) then
		bLinesDisplay = {}
		bLinesCompare = {}
	end

	if #aLinesDisplay ~= #aLinesCompare or #bLinesDisplay ~= #bLinesCompare then
		-- Fall back to diff of display lines.
		return diffLinesUnified(aLinesDisplay, bLinesDisplay, options)
	end

	local diffs = diffLinesRaw(aLinesCompare, bLinesCompare)

	-- Replace comparison lines with displayable lines.
	local aIndex = 0
	local bIndex = 0
	for _, d in ipairs(diffs) do
		local case = d[1]
		if case == DIFF_DELETE then
			d[2] = aLinesDisplay[aIndex + 1]
			aIndex += 1
		elseif case == DIFF_INSERT then
			d[2] = bLinesDisplay[bIndex + 1]
			bIndex += 1
		else
			d[2] = bLinesDisplay[bIndex + 1]
			aIndex += 1
			bIndex += 1
		end
	end

	return printDiffLines(diffs, normalizeDiffOptions(options))
end

-- Compare two arrays of strings line-by-line.
function diffLinesRaw(aLines: { [number]: string }, bLines: { [number]: string }): Array<Diff>
	local aLength = #aLines
	local bLength = #bLines

	local isCommon = function(aIndex: number, bIndex: number)
		return aLines[aIndex + 1] == bLines[bIndex + 1]
	end

	local diffs = {}
	local aIndex = 0
	local bIndex = 0

	local foundSubsequence = function(nCommon: number, aCommon: number, bCommon: number)
		while aIndex ~= aCommon do
			table.insert(diffs, Diff.new(DIFF_DELETE, aLines[aIndex + 1]))
			aIndex += 1
		end
		while bIndex ~= bCommon do
			table.insert(diffs, Diff.new(DIFF_INSERT, bLines[bIndex + 1]))
			bIndex += 1
		end
		while nCommon ~= 0 do
			table.insert(diffs, Diff.new(DIFF_EQUAL, bLines[bIndex + 1]))
			nCommon -= 1
			aIndex += 1
			bIndex += 1
		end
	end

	diff(aLength, bLength, isCommon, foundSubsequence)

	-- After the last common subsequence, push remaining change items.
	while aIndex ~= aLength do
		table.insert(diffs, Diff.new(DIFF_DELETE, aLines[aIndex + 1]))
		aIndex += 1
	end
	while bIndex ~= bLength do
		table.insert(diffs, Diff.new(DIFF_INSERT, bLines[bIndex + 1]))
		bIndex += 1
	end

	return diffs
end

return {
	printDiffLines = printDiffLines,
	diffLinesUnified = diffLinesUnified,
	diffLinesUnified2 = diffLinesUnified2,
	diffLinesRaw = diffLinesRaw,
}
