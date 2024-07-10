-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-diff/src/cleanupSemantic.ts
-- implementation adapted from:
-- https://github.com/google/diff-match-patch/blob/858b3812cc02e7d48da4beebb21d4d80dc1d3062/lua/diff_match_patch.lua
-- /**
--  * Diff Match and Patch
--  * Copyright 2018 The diff-match-patch Authors.
--  * https://github.com/google/diff-match-patch
--  *
--  * Licensed under the Apache License, Version 2.0 (the "License");
--  * you may not use this file except in compliance with the License.
--  * You may obtain a copy of the License at
--  *
--  *   http://www.apache.org/licenses/LICENSE-2.0
--  *
--  * Unless required by applicable law or agreed to in writing, software
--  * distributed under the License is distributed on an "AS IS" BASIS,
--  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--  * See the License for the specific language governing permissions and
--  * limitations under the License.
--  */

-- /**
--  * @fileoverview Computes the difference between two texts to create a patch.
--  * Applies the patch onto another text, allowing for errors.
--  * @author fraser@google.com (Neil Fraser)
--  */

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>

-- /**
--  * CHANGES by pedrottimark to diff_match_patch_uncompressed.ts file:
--  *
--  * 1. Delete anything not needed to use diff_cleanupSemantic method
--  * 2. Convert from prototype properties to var declarations
--  * 3. Convert Diff to class from constructor and prototype
--  * 4. Add type annotations for arguments and return values
--  * 5. Add exports
--  */

local _diff_cleanupSemanticLossless, _diff_cleanupMerge

local strsub, strbyte = string.sub, string.byte
local strmatch, strfind = string.match, string.find
local max, min, floor = math.max, math.min, math.floor
local tinsert, tremove = table.insert, table.remove

-- /**
--  * The data structure representing a diff is an array of tuples:
--  * [[DIFF_DELETE, 'Hello'], [DIFF_INSERT, 'Goodbye'], [DIFF_EQUAL, ' world.']]
--  * which means: delete 'Hello', add 'Goodbye' and keep ' world.'
--  */
local DIFF_DELETE = -1
local DIFF_INSERT = 1
local DIFF_EQUAL = 0

-- /**
--  * Class representing one diff tuple.
--  * Attempts to look like a two-element array (which is what this used to be).
--  * @param {number} op Operation, one of: DIFF_DELETE, DIFF_INSERT, DIFF_EQUAL.
--  * @param {string} text Text to be deleted, inserted, or retained.
--  * @constructor
--  */
-- ROBLOX FIXME Luau: Luau can't represent [1]: number, [2]: string
export type Diff = Array<any>
local Diff = {}
Diff.__index = Diff
function Diff.new(op: number, text: string): Diff
	return (setmetatable({ op :: any, text }, Diff) :: any) :: Diff
end

--[[
* Determine the common prefix of two strings.
* @param {string} text1 First string.
* @param {string} text2 Second string.
* @return {number} The number of characters common to the start of each
*    string.
--]]
local function _diff_commonPrefix(text1: string, text2: string): number
	-- Quick check for common null cases.
	if #text1 == 0 or #text2 == 0 or strbyte(text1, 1, 1) ~= strbyte(text2, 1, 1) then
		return 0
	end
	-- Binary search.
	-- Performance analysis: https://neil.fraser.name/news/2007/10/09/
	local pointermin = 1
	local pointermax = min(#text1, #text2)
	local pointermid = pointermax
	local pointerstart = 1
	while pointermin < pointermid do
		if strsub(text1, pointerstart, pointermid) == strsub(text2, pointerstart, pointermid) then
			pointermin = pointermid
			pointerstart = pointermin
		else
			pointermax = pointermid
		end
		pointermid = floor(pointermin + (pointermax - pointermin) / 2)
	end
	return pointermid
end

--[[
* Determine the common suffix of two strings.
* @param {string} text1 First string.
* @param {string} text2 Second string.
* @return {number} The number of characters common to the end of each string.
--]]
local function _diff_commonSuffix(text1: string, text2: string): number
	-- Quick check for common null cases.
	if #text1 == 0 or #text2 == 0 or strbyte(text1, -1) ~= strbyte(text2, -1) then
		return 0
	end
	-- Binary search.
	-- Performance analysis: https://neil.fraser.name/news/2007/10/09/
	local pointermin = 1
	local pointermax = min(#text1, #text2)
	local pointermid = pointermax
	local pointerend = 1
	while pointermin < pointermid do
		if strsub(text1, -pointermid, -pointerend) == strsub(text2, -pointermid, -pointerend) then
			pointermin = pointermid
			pointerend = pointermin
		else
			pointermax = pointermid
		end
		pointermid = floor(pointermin + (pointermax - pointermin) / 2)
	end
	return pointermid
end

--[[
* Determine if the suffix of one string is the prefix of another.
* @param {string} text1 First string.
* @param {string} text2 Second string.
* @return {number} The number of characters common to the end of the first
*     string and the start of the second string.
* @private
--]]
local function _diff_commonOverlap(text1: string, text2: string): number
	-- Cache the text lengths to prevent multiple calls.
	local text1_length = #text1
	local text2_length = #text2
	-- Eliminate the null case.
	if text1_length == 0 or text2_length == 0 then
		return 0
	end
	-- Truncate the longer string.
	if text1_length > text2_length then
		text1 = strsub(text1, text1_length - text2_length + 1)
	elseif text1_length < text2_length then
		text2 = strsub(text2, 1, text1_length)
	end
	local text_length = min(text1_length, text2_length)
	-- Quick check for the worst case.
	if text1 == text2 then
		return text_length
	end

	-- Start by looking for a single character match
	-- and increase length until no match is found.
	-- Performance analysis: https://neil.fraser.name/news/2010/11/04/
	local best = 0
	local length = 1
	while true do
		local pattern = strsub(text1, text_length - length + 1)
		local found = strfind(text2, pattern, 1, true)
		if found == nil then
			return best
		end
		-- ROBLOX FIXME Luau: narrowing/type state should make this cast unnecessary
		length += (found :: number - 1)
		if found == 1 or strsub(text1, text_length - length + 1) == strsub(text2, 1, length) then
			best = length
			length += 1
		end
	end
	return best
end

--[[
* Reduce the number of edits by eliminating semantically trivial equalities.
* @param {Array.<Array.<number|string>>} diffs Array of diff tuples.
--]]
local function diff_cleanupSemantic(diffs: Array<Diff>)
	local changes = false
	local equalities = {} -- Stack of indices where equalities are found.
	local equalitiesLength = 0 -- Keeping our own length var is faster.
	local lastEquality = nil
	-- Always equal to diffs[equalities[equalitiesLength]][2]
	local pointer = 1 -- Index of current position.
	-- Number of characters that changed prior to the equality.
	local length_insertions1 = 0
	local length_deletions1 = 0
	-- Number of characters that changed after the equality.
	local length_insertions2 = 0
	local length_deletions2 = 0

	while diffs[pointer] do
		if diffs[pointer][1] == DIFF_EQUAL then -- Equality found.
			equalitiesLength = equalitiesLength + 1
			equalities[equalitiesLength] = pointer
			length_insertions1 = length_insertions2
			length_deletions1 = length_deletions2
			length_insertions2 = 0
			length_deletions2 = 0
			lastEquality = diffs[pointer][2]
		else -- An insertion or deletion.
			if diffs[pointer][1] == DIFF_INSERT then
				length_insertions2 = length_insertions2 + #diffs[pointer][2]
			else
				length_deletions2 = length_deletions2 + #diffs[pointer][2]
			end
			-- Eliminate an equality that is smaller or equal to the edits on both
			-- sides of it.
			if
				lastEquality
				and #lastEquality <= max(length_insertions1, length_deletions1)
				and #lastEquality <= max(length_insertions2, length_deletions2)
			then
				-- Duplicate record.
				tinsert(diffs, equalities[equalitiesLength], Diff.new(DIFF_DELETE, lastEquality))
				-- Change second copy to insert.
				diffs[equalities[equalitiesLength] + 1][1] = DIFF_INSERT
				-- Throw away the equality we just deleted.
				equalitiesLength = equalitiesLength - 1
				-- Throw away the previous equality (it needs to be reevaluated).
				equalitiesLength = equalitiesLength - 1
				pointer = (equalitiesLength > 0) and equalities[equalitiesLength] or 0
				length_insertions1, length_deletions1 = 0, 0 -- Reset the counters.
				length_insertions2, length_deletions2 = 0, 0
				lastEquality = nil
				changes = true
			end
		end
		pointer = pointer + 1
	end

	-- Normalize the diff.
	if changes then
		_diff_cleanupMerge(diffs)
	end
	_diff_cleanupSemanticLossless(diffs)

	-- Find any overlaps between deletions and insertions.
	-- e.g: <del>abcxxx</del><ins>xxxdef</ins>
	--   -> <del>abc</del>xxx<ins>def</ins>
	-- e.g: <del>xxxabc</del><ins>defxxx</ins>
	--   -> <ins>def</ins>xxx<del>abc</del>
	-- Only extract an overlap if it is as big as the edit ahead or behind it.
	pointer = 2
	while diffs[pointer] do
		if diffs[pointer - 1][1] == DIFF_DELETE and diffs[pointer][1] == DIFF_INSERT then
			local deletion = diffs[pointer - 1][2]
			local insertion = diffs[pointer][2]
			local overlap_length1 = _diff_commonOverlap(deletion, insertion)
			local overlap_length2 = _diff_commonOverlap(insertion, deletion)
			if overlap_length1 >= overlap_length2 then
				if overlap_length1 >= #deletion / 2 or overlap_length1 >= #insertion / 2 then
					-- Overlap found.  Insert an equality and trim the surrounding edits.
					tinsert(diffs, pointer, Diff.new(DIFF_EQUAL, strsub(insertion, 1, overlap_length1)))
					diffs[pointer - 1][2] = strsub(deletion, 1, #deletion - overlap_length1)
					diffs[pointer + 1][2] = strsub(insertion, overlap_length1 + 1)
					pointer = pointer + 1
				end
			else
				if overlap_length2 >= #deletion / 2 or overlap_length2 >= #insertion / 2 then
					-- Reverse overlap found.
					-- Insert an equality and swap and trim the surrounding edits.
					tinsert(diffs, pointer, Diff.new(DIFF_EQUAL, strsub(deletion, 1, overlap_length2)))
					diffs[pointer - 1] = { DIFF_INSERT, strsub(insertion, 1, #insertion - overlap_length2) }
					diffs[pointer + 1] = { DIFF_DELETE, strsub(deletion, overlap_length2 + 1) }
					pointer = pointer + 1
				end
			end
			pointer = pointer + 1
		end
		pointer = pointer + 1
	end
end

--[[
* Given two strings, compute a score representing whether the internal
* boundary falls on logical boundaries.
* Scores range from 6 (best) to 0 (worst).
* @param {string} one First string.
* @param {string} two Second string.
* @return {number} The score.
* @private
--]]
local function _diff_cleanupSemanticScore(one: string, two: string): number
	if #one == 0 or #two == 0 then
		-- Edges are the best.
		return 6
	end

	-- Each port of this function behaves slightly differently due to
	-- subtle differences in each language's definition of things like
	-- 'whitespace'.  Since this function's purpose is largely cosmetic,
	-- the choice has been made to use each language's native features
	-- rather than force total conformity.
	local char1 = strsub(one, -1)
	local char2 = strsub(two, 1, 1)
	local nonAlphaNumeric1 = strmatch(char1, "%W")
	local nonAlphaNumeric2 = strmatch(char2, "%W")
	local whitespace1 = nonAlphaNumeric1 and strmatch(char1, "%s")
	local whitespace2 = nonAlphaNumeric2 and strmatch(char2, "%s")
	local lineBreak1 = whitespace1 and strmatch(char1, "%c")
	local lineBreak2 = whitespace2 and strmatch(char2, "%c")
	local blankLine1 = lineBreak1 and strmatch(one, "\n\r?\n$")
	local blankLine2 = lineBreak2 and strmatch(two, "^\r?\n\r?\n")

	if blankLine1 or blankLine2 then
		-- Five points for blank lines.
		return 5
	elseif lineBreak1 or lineBreak2 then
		-- Four points for line breaks.
		return 4
	elseif nonAlphaNumeric1 and not whitespace1 and whitespace2 then
		-- Three points for end of sentences.
		return 3
	elseif whitespace1 or whitespace2 then
		-- Two points for whitespace.
		return 2
	elseif nonAlphaNumeric1 or nonAlphaNumeric2 then
		-- One point for non-alphanumeric.
		return 1
	end
	return 0
end

--[[
* Look for single edits surrounded on both sides by equalities
* which can be shifted sideways to align the edit to a word boundary.
* e.g: The c<ins>at c</ins>ame. -> The <ins>cat </ins>came.
* @param {Array.<Array.<number|string>>} diffs Array of diff tuples.
--]]
_diff_cleanupSemanticLossless = function(diffs: Array<Diff>)
	local pointer = 2
	-- Intentionally ignore the first and last element (don't need checking).
	while diffs[pointer + 1] do
		local prevDiff, nextDiff = diffs[pointer - 1], diffs[pointer + 1]
		if prevDiff[1] == DIFF_EQUAL and nextDiff[1] == DIFF_EQUAL then
			-- This is a single edit surrounded by equalities.
			local diff = diffs[pointer]

			local equality1 = prevDiff[2]
			local edit = diff[2]
			local equality2 = nextDiff[2]

			-- First, shift the edit as far left as possible.
			local commonOffset = _diff_commonSuffix(equality1, edit)
			if commonOffset > 0 then
				local commonString = strsub(edit, -commonOffset)
				equality1 = strsub(equality1, 1, -commonOffset - 1)
				edit = commonString .. strsub(edit, 1, -commonOffset - 1)
				equality2 = commonString .. equality2
			end

			-- Second, step character by character right, looking for the best fit.
			local bestEquality1 = equality1
			local bestEdit = edit
			local bestEquality2 = equality2
			local bestScore = _diff_cleanupSemanticScore(equality1, edit) + _diff_cleanupSemanticScore(edit, equality2)

			while strbyte(edit, 1) == strbyte(equality2, 1) do
				equality1 = equality1 .. strsub(edit, 1, 1)
				edit = strsub(edit, 2) .. strsub(equality2, 1, 1)
				equality2 = strsub(equality2, 2)
				local score = _diff_cleanupSemanticScore(equality1, edit) + _diff_cleanupSemanticScore(edit, equality2)
				-- The >= encourages trailing rather than leading whitespace on edits.
				if score >= bestScore then
					bestScore = score
					bestEquality1 = equality1
					bestEdit = edit
					bestEquality2 = equality2
				end
			end
			if prevDiff[2] ~= bestEquality1 then
				-- We have an improvement, save it back to the diff.
				if #bestEquality1 > 0 then
					diffs[pointer - 1][2] = bestEquality1
				else
					tremove(diffs, pointer - 1)
					pointer = pointer - 1
				end
				diffs[pointer][2] = bestEdit
				if #bestEquality2 > 0 then
					diffs[pointer + 1][2] = bestEquality2
				else
					tremove(diffs, pointer + 1)
					pointer -= 1
				end
			end
		end
		pointer += 1
	end
end

-- ROBLOX deviation: no need for regex patterns

_diff_cleanupMerge = function(diffs: Array<Diff>)
	diffs[#diffs + 1] = Diff.new(DIFF_EQUAL, "") -- Add a dummy entry at the end.
	local pointer = 1
	local count_delete, count_insert = 0, 0
	local text_delete, text_insert = "", ""
	local commonlength
	while diffs[pointer] do
		local diff_type = diffs[pointer][1]
		if diff_type == DIFF_INSERT then
			count_insert = count_insert + 1
			text_insert = text_insert .. diffs[pointer][2]
			pointer = pointer + 1
		elseif diff_type == DIFF_DELETE then
			count_delete = count_delete + 1
			text_delete = text_delete .. diffs[pointer][2]
			pointer = pointer + 1
		elseif diff_type == DIFF_EQUAL then
			-- Upon reaching an equality, check for prior redundancies.
			if count_delete + count_insert > 1 then
				if count_delete > 0 and count_insert > 0 then
					-- Factor out any common prefixies.
					commonlength = _diff_commonPrefix(text_insert, text_delete)
					if commonlength > 0 then
						local back_pointer = pointer - count_delete - count_insert
						if back_pointer > 1 and diffs[back_pointer - 1][1] == DIFF_EQUAL then
							diffs[back_pointer - 1][2] = diffs[back_pointer - 1][2]
								.. strsub(text_insert, 1, commonlength)
						else
							tinsert(diffs, 1, Diff.new(DIFF_EQUAL, strsub(text_insert, 1, commonlength)))
							pointer = pointer + 1
						end
						text_insert = strsub(text_insert, commonlength + 1)
						text_delete = strsub(text_delete, commonlength + 1)
					end
					-- Factor out any common suffixies.
					commonlength = _diff_commonSuffix(text_insert, text_delete)
					if commonlength ~= 0 then
						diffs[pointer][2] = strsub(text_insert, -commonlength) .. diffs[pointer][2]
						text_insert = strsub(text_insert, 1, -commonlength - 1)
						text_delete = strsub(text_delete, 1, -commonlength - 1)
					end
				end
				-- Delete the offending records and add the merged ones.
				pointer = pointer - count_delete - count_insert
				for i = 1, count_delete + count_insert do
					tremove(diffs, pointer)
				end
				if #text_delete > 0 then
					tinsert(diffs, pointer, Diff.new(DIFF_DELETE, text_delete))
					pointer = pointer + 1
				end
				if #text_insert > 0 then
					tinsert(diffs, pointer, Diff.new(DIFF_INSERT, text_insert))
					pointer = pointer + 1
				end
				pointer = pointer + 1
			elseif pointer > 1 and diffs[pointer - 1][1] == DIFF_EQUAL then
				-- Merge this equality with the previous one.
				diffs[pointer - 1][2] = diffs[pointer - 1][2] .. diffs[pointer][2]
				tremove(diffs, pointer)
			else
				pointer = pointer + 1
			end
			count_insert, count_delete = 0, 0
			text_delete, text_insert = "", ""
		end
	end
	if diffs[#diffs][2] == "" then
		diffs[#diffs] = nil -- Remove the dummy entry at the end.
	end

	-- Second pass: look for single edits surrounded on both sides by equalities
	-- which can be shifted sideways to eliminate an equality.
	-- e.g: A<ins>BA</ins>C -> <ins>AB</ins>AC
	local changes = false
	pointer = 2
	-- Intentionally ignore the first and last element (don't need checking).
	while pointer < #diffs do
		local prevDiff, nextDiff = diffs[pointer - 1], diffs[pointer + 1]
		if prevDiff[1] == DIFF_EQUAL and nextDiff[1] == DIFF_EQUAL then
			-- This is a single edit surrounded by equalities.
			local diff = diffs[pointer]
			local currentText = diff[2]
			local prevText = prevDiff[2]
			local nextText = nextDiff[2]
			if #prevText == 0 then
				tremove(diffs, pointer - 1)
				changes = true
			elseif strsub(currentText, -#prevText) == prevText then
				-- Shift the edit over the previous equality.
				diff[2] = prevText .. strsub(currentText, 1, -#prevText - 1)
				nextDiff[2] = prevText .. nextDiff[2]
				tremove(diffs, pointer - 1)
				changes = true
			elseif strsub(currentText, 1, #nextText) == nextText then
				-- Shift the edit over the next equality.
				prevDiff[2] = prevText .. nextText
				diff[2] = strsub(currentText, #nextText + 1) .. nextText
				tremove(diffs, pointer + 1)
				changes = true
			end
		end
		pointer = pointer + 1
	end
	-- If shifts were made, the diff needs reordering and another shift sweep.
	if changes then
		-- LUANOTE: no return value, but necessary to use 'return' to get
		-- tail calls.
		return _diff_cleanupMerge(diffs)
	end
	return
end

return {
	Diff = Diff,
	DIFF_EQUAL = DIFF_EQUAL,
	DIFF_DELETE = DIFF_DELETE,
	DIFF_INSERT = DIFF_INSERT,
	cleanupSemantic = diff_cleanupSemantic,

	-- private, used for testing only
	_diff_commonPrefix = _diff_commonPrefix,
	_diff_commonSuffix = _diff_commonSuffix,
	_diff_commonOverlap = _diff_commonOverlap,
	_diff_cleanupMerge = _diff_cleanupMerge,
	_diff_cleanupSemanticLossless = _diff_cleanupSemanticLossless,
}
