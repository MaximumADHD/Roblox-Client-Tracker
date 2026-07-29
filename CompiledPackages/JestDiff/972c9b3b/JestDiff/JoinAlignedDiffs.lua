-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-diff/src/joinAlignedDiffs.ts
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
local DIFF_DELETE = CleanupSemantic.DIFF_DELETE
local DIFF_EQUAL = CleanupSemantic.DIFF_EQUAL
local DIFF_INSERT = CleanupSemantic.DIFF_INSERT
type Diff = CleanupSemantic.Diff

local Types = require(CurrentModule.types)
type DiffOptionsNormalized = Types.DiffOptionsNormalized
type DiffOptionsColor = Types.DiffOptionsColor

local function formatTrailingSpaces(line: string, trailingSpaceFormatter: DiffOptionsColor): string
	return line:gsub("%s+$", function(s)
		return trailingSpaceFormatter(s)
	end)
end

local function printDiffLine(
	line: string,
	isFirstOrLast: boolean,
	color: DiffOptionsColor,
	indicator: string,
	trailingSpaceFormatter: DiffOptionsColor,
	emptyFirstOrLastLinePlaceholder: string
): string
	if #line ~= 0 then
		return color(indicator .. " " .. formatTrailingSpaces(line, trailingSpaceFormatter))
	elseif indicator ~= " " then
		return color(indicator)
	elseif isFirstOrLast and #emptyFirstOrLastLinePlaceholder ~= 0 then
		return color(indicator .. " " .. emptyFirstOrLastLinePlaceholder)
	end
	return ""
end

local function printDeleteLine(line: string, isFirstOrLast: boolean, options: DiffOptionsNormalized): string
	return printDiffLine(
		line,
		isFirstOrLast,
		options.aColor,
		options.aIndicator,
		options.changeLineTrailingSpaceColor,
		options.emptyFirstOrLastLinePlaceholder
	)
end

local function printInsertLine(line: string, isFirstOrLast: boolean, options: DiffOptionsNormalized): string
	return printDiffLine(
		line,
		isFirstOrLast,
		options.bColor,
		options.bIndicator,
		options.changeLineTrailingSpaceColor,
		options.emptyFirstOrLastLinePlaceholder
	)
end

local function printCommonLine(line: string, isFirstOrLast: boolean, options: DiffOptionsNormalized): string
	return printDiffLine(
		line,
		isFirstOrLast,
		options.commonColor,
		options.commonIndicator,
		options.commonLineTrailingSpaceColor,
		options.emptyFirstOrLastLinePlaceholder
	)
end

-- In GNU diff format, indexes are one-based instead of zero-based.
local function createPatchMark(
	aStart: number,
	aEnd: number,
	bStart: number,
	bEnd: number,
	options: DiffOptionsNormalized
): string
	return options.patchColor(
		string.format("@@ -%d,%d +%d,%d @@", aStart + 1, aEnd - aStart, bStart + 1, bEnd - bStart)
	)
end

-- jest --no-expand
--
-- Given array of aligned strings with inverse highlight formatting,
-- return joined lines with diff formatting (and patch marks, if needed).
local function joinAlignedDiffsNoExpand(diffs: Array<Diff>, options: DiffOptionsNormalized): string
	local iLength = #diffs
	local nContextLines = options.contextLines
	local nContextLines2 = nContextLines + nContextLines

	-- First pass: count output lines and see if it has patches.
	local jLength = iLength
	local hasExcessAtStartOrEnd = false
	local nExcessesBetweenChanges = 0
	local i = 0
	while i ~= iLength do
		local iStart = i
		while i ~= iLength and diffs[i + 1][1] == DIFF_EQUAL do
			i += 1
		end

		if iStart ~= i then
			if iStart == 0 then
				-- at start
				if i > nContextLines then
					jLength -= i - nContextLines -- subtract excess common lines
					hasExcessAtStartOrEnd = true
				end
			elseif i == iLength then
				-- at end
				local n = i - iStart
				if n > nContextLines then
					jLength -= n - nContextLines -- subtract excess common lines
					hasExcessAtStartOrEnd = true
				end
			else
				-- between changes
				local n = i - iStart
				if n > nContextLines2 then
					jLength -= n - nContextLines2 -- subtract excess common lines
					nExcessesBetweenChanges += 1
				end
			end
		end

		while i ~= iLength and diffs[i + 1][1] ~= DIFF_EQUAL do
			i += 1
		end
	end

	local hasPatch = nExcessesBetweenChanges ~= 0 or hasExcessAtStartOrEnd
	if nExcessesBetweenChanges ~= 0 then
		jLength += nExcessesBetweenChanges + 1 -- add patch lines
	elseif hasExcessAtStartOrEnd then
		jLength += 1 -- add patch line
	end
	local jLast = jLength - 1

	local lines: { [number]: string } = {}

	local jPatchMark = 0 -- index of placeholder line for current patch mark
	if hasPatch then
		table.insert(lines, "") -- placeholder line for first patch mark
	end

	-- Indexes of expected or received lines in current patch:
	local aStart = 0
	local bStart = 0
	local aEnd = 0
	local bEnd = 0

	local pushCommonLine = function(line: string): ()
		local j = #lines
		table.insert(lines, printCommonLine(line, j == 0 or j == jLast, options))
		aEnd += 1
		bEnd += 1
	end

	local pushDeleteLine = function(line: string): ()
		local j = #lines
		table.insert(lines, printDeleteLine(line, j == 0 or j == jLast, options))
		aEnd += 1
	end

	local pushInsertLine = function(line: string): ()
		local j = #lines
		table.insert(lines, printInsertLine(line, j == 0 or j == jLast, options))
		bEnd += 1
	end

	-- Second pass: push lines with diff formatting (and patch marks, if needed).
	i = 0
	while i ~= iLength do
		local iStart = i
		while i ~= iLength and diffs[i + 1][1] == DIFF_EQUAL do
			i += 1
		end

		if iStart ~= i then
			if iStart == 0 then
				-- at beginning
				if i > nContextLines then
					iStart = i - nContextLines
					aStart = iStart
					bStart = iStart
					aEnd = aStart
					bEnd = bStart
				end

				local iCommon = iStart
				while iCommon ~= i do
					pushCommonLine(diffs[iCommon + 1][2])
					iCommon += 1
				end
			elseif i == iLength then
				-- at end
				local iEnd = i
				if i - iStart > nContextLines then
					iEnd = iStart + nContextLines
				end

				local iCommon = iStart
				while iCommon ~= iEnd do
					pushCommonLine(diffs[iCommon + 1][2])
					iCommon += 1
				end
			else
				-- between changes
				local nCommon = i - iStart

				if nCommon > nContextLines2 then
					local iEnd = iStart + nContextLines

					local iCommon = iStart
					while iCommon ~= iEnd do
						pushCommonLine(diffs[iCommon + 1][2])
						iCommon += 1
					end

					lines[jPatchMark + 1] = createPatchMark(aStart, aEnd, bStart, bEnd, options)
					jPatchMark = #lines
					table.insert(lines, "") -- placeholder line for next patch mark

					local nOmit = nCommon - nContextLines2
					aStart = aEnd + nOmit
					bStart = bEnd + nOmit
					aEnd = aStart
					bEnd = bStart

					iCommon = i - nContextLines
					while iCommon ~= i do
						pushCommonLine(diffs[iCommon + 1][2])
						iCommon += 1
					end
				else
					local iCommon = iStart
					while iCommon ~= i do
						pushCommonLine(diffs[iCommon + 1][2])
						iCommon += 1
					end
				end
			end
		end

		while i ~= iLength and diffs[i + 1][1] == DIFF_DELETE do
			pushDeleteLine(diffs[i + 1][2])
			i += 1
		end

		while i ~= iLength and diffs[i + 1][1] == DIFF_INSERT do
			pushInsertLine(diffs[i + 1][2])
			i += 1
		end
	end

	if hasPatch then
		lines[jPatchMark + 1] = createPatchMark(aStart, aEnd, bStart, bEnd, options)
	end

	return table.concat(lines, "\n")
end

-- jest --expand
--
-- Given array of aligned strings with inverse highlight formatting,
-- return joined lines with diff formatting.
local function joinAlignedDiffsExpand(diffs: Array<Diff>, options: DiffOptionsNormalized): string
	return table.concat(
		Array.map(diffs, function(diff, i: number, diffs_: { [number]: any }): string
			local line = diff[2]
			-- ROBLOX deviation: 1-indexing
			local isFirstOrLast = i == 1 or i == #diffs_

			local case = diff[1] :: number
			if case == DIFF_DELETE then
				return printDeleteLine(line, isFirstOrLast, options)
			elseif case == DIFF_INSERT then
				return printInsertLine(line, isFirstOrLast, options)
			else
				return printCommonLine(line, isFirstOrLast, options)
			end
		end),
		"\n"
	)
end

return {
	joinAlignedDiffsNoExpand = joinAlignedDiffsNoExpand,
	joinAlignedDiffsExpand = joinAlignedDiffsExpand,
}
