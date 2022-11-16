-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-diff/src/getAlignedDiffs.ts
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
local Diff = CleanupSemantic.Diff
type Diff = CleanupSemantic.Diff

local Types = require(CurrentModule.types)
type DiffOptionsColor = Types.DiffOptionsColor

-- Given change op and array of diffs, return concatenated string:
-- * include common strings
-- * include change strings which have argument op with changeColor
-- * exclude change strings which have opposite op
local function concatenateRelevantDiffs(op: number, diffs: Array<Diff>, changeColor: DiffOptionsColor): string
	return Array.reduce(diffs, function(reduced, diff)
		if diff[1] == DIFF_EQUAL then
			return reduced .. diff[2]
		elseif diff[1] == op and #diff[2] ~= 0 then -- empty if change is newline
			return reduced .. changeColor(diff[2])
		end
		return reduced .. ""
	end, "")
end

export type ChangeBuffer = {
	op: number,
	line: Array<Diff>,
	lines: Array<Diff>,
	changeColor: DiffOptionsColor,
	pushSubstring: (self: ChangeBuffer, substring: string) -> (),
	pushLine: (self: ChangeBuffer) -> (),
	isLineEmpty: (self: ChangeBuffer) -> boolean,
	pushDiff: (self: ChangeBuffer, diff: Diff) -> (),
	align: (self: ChangeBuffer, diff: Diff) -> (),
	moveLinesTo: (self: ChangeBuffer, lines: Array<Diff>) -> (),
}

-- Encapsulate change lines until either a common newline or the end.
local ChangeBuffer = {}
ChangeBuffer.__index = ChangeBuffer
function ChangeBuffer.new(op: number, changeColor: DiffOptionsColor): ChangeBuffer
	local self = (setmetatable({}, ChangeBuffer) :: any) :: ChangeBuffer
	self.op = op
	self.line = {}
	self.lines = {}
	self.changeColor = changeColor

	return self
end

function ChangeBuffer:pushSubstring(substring: string): ()
	self:pushDiff(Diff.new(self.op, substring))
end

function ChangeBuffer:pushLine(): ()
	-- Assume call only if line has at least one diff,
	-- therefore an empty line must have a diff which has an empty string.

	-- If line has multiple diffs, then assume it has a common diff,
	-- therefore change diffs have change color;
	-- otherwise then it has line color only.
	table.insert(
		self.lines,
		if #self.line ~= 1
			then Diff.new(self.op, concatenateRelevantDiffs(self.op, self.line, self.changeColor))
			else
				if self.line[1][1] == self.op
					then self.line[1] -- can use instance
					else Diff.new(self.op, self.line[1][2]) -- was common diff
	)
	self.line = {}
end

function ChangeBuffer:isLineEmpty(): boolean
	return #self.line == 0
end

-- Minor input to buffer.
function ChangeBuffer:pushDiff(diff: Diff): ()
	table.insert(self.line, diff)
end

-- Main input to buffer.
function ChangeBuffer:align(diff: Diff): ()
	local s = diff[2]

	if s:match("\n") then
		local substrings = s:split("\n")
		-- ROBLOX deviation: 1-indexing
		local iLast = #substrings
		for i, substring in ipairs(substrings) do
			if i < iLast then
				-- The first substring completes the current change line.
				-- A middle substring is a change line.
				self:pushSubstring(substring)
				self:pushLine()
			elseif #substring ~= 0 then
				-- The last substring starts a change line, if it is not empty.
				-- Important: This non-empty condition also automatically omits
				-- the newline appended to the end of expected and received strings.
				self:pushSubstring(substring)
			end
		end
	else
		-- Append non-multiline string to current change line.
		self:pushDiff(diff)
	end
end

-- Output from buffer.
function ChangeBuffer:moveLinesTo(lines: Array<Diff>): ()
	if not self:isLineEmpty() then
		self:pushLine()
	end

	for _, value in ipairs(self.lines) do
		table.insert(lines, value)
	end
	self.lines = {}
end

-- Encapsulate common and change lines
local CommonBuffer = {}
CommonBuffer.__index = CommonBuffer
function CommonBuffer.new(deleteBuffer, insertBuffer)
	local self = {}
	self.deleteBuffer = deleteBuffer
	self.insertBuffer = insertBuffer
	self.lines = {}
	setmetatable(self, CommonBuffer)
	return self
end

function CommonBuffer:pushDiffCommonLine(diff: Diff): ()
	table.insert(self.lines, diff)
end

function CommonBuffer:pushDiffChangeLines(diff: Diff): ()
	local isDiffEmpty = #diff[2] == 0

	-- An empty diff string is redundant, unless a change line is empty.
	if not isDiffEmpty or self.deleteBuffer:isLineEmpty() then
		self.deleteBuffer:pushDiff(diff)
	end
	if not isDiffEmpty or self.insertBuffer:isLineEmpty() then
		self.insertBuffer:pushDiff(diff)
	end
end

function CommonBuffer:flushChangeLines(): ()
	self.deleteBuffer:moveLinesTo(self.lines)
	self.insertBuffer:moveLinesTo(self.lines)
end

function CommonBuffer:align(diff: Diff): ()
	local op = diff[1]
	local s = diff[2]

	if s:match("\n") then
		local substrings = s:split("\n")
		-- ROBLOX deviation: 1-indexing
		local iLast = #substrings
		for i, substring in ipairs(substrings) do
			if i == 1 then
				local subdiff = Diff.new(op, substring)
				if self.deleteBuffer:isLineEmpty() and self.insertBuffer:isLineEmpty() then
					-- If both current change lines are empty,
					-- then the first substring is a common line.
					self:flushChangeLines()
					self:pushDiffCommonLine(subdiff)
				else
					-- If either current change line is non-empty,
					-- then the first substring completes the change lines.
					self:pushDiffChangeLines(subdiff)
					self:flushChangeLines()
				end
			elseif i < iLast then
				-- A middle substring is a common line.
				self:pushDiffCommonLine(Diff.new(op, substring))
			elseif #substring ~= 0 then
				-- The last substring starts a change line, if it is not empty.
				-- Important: This non-empty condition also automatically omits
				-- the newline appended to the end of expected and received strings.
				self:pushDiffChangeLines(Diff.new(op, substring))
			end
		end
	else
		-- Append non-multiline string to current change lines.
		-- Important: It cannot be at the end following empty change lines,
		-- because newline appended to the end of expected and received strings.
		self:pushDiffChangeLines(diff)
	end
end

function CommonBuffer:getLines(): Array<Diff>
	self:flushChangeLines()
	return self.lines
end

-- Given diffs from expected and received strings,
-- return new array of diffs split or joined into lines.
--
-- To correctly align a change line at the end, the algorithm:
-- * assumes that a newline was appended to the strings
-- * omits the last newline from the output array
--
-- Assume the function is not called:
-- * if either expected or received is empty string
-- * if neither expected nor received is multiline string
return function(diffs: Array<Diff>, changeColor: DiffOptionsColor): Array<Diff>
	local deleteBuffer = ChangeBuffer.new(DIFF_DELETE, changeColor)
	local insertBuffer = ChangeBuffer.new(DIFF_INSERT, changeColor)
	-- ROBLOX FIXME Luau: another issue with normalization: Property 'deleteBuffer' is not compatible
	local commonBuffer = CommonBuffer.new(deleteBuffer, insertBuffer) :: any

	for _, diff in ipairs(diffs) do
		local case = diff[1]
		if case == DIFF_DELETE then
			deleteBuffer:align(diff)
		elseif case == DIFF_INSERT then
			insertBuffer:align(diff)
		else
			commonBuffer:align(diff)
		end
	end

	return commonBuffer:getLines()
end
