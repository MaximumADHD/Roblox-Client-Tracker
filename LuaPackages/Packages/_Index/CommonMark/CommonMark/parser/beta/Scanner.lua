-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/parser/beta/Scanner.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local CharMatcher = require(Root.text.CharMatcher)
local Position = require(Root.parser.beta.Position)
local SourceLine = require(Root.parser.SourceLine)
local SourceLines = require(Root.parser.SourceLines)
local SourceSpan = require(Root.node.SourceSpan)
local Utf8 = require(Root.internal.port.Utf8)

type CharMatcher = CharMatcher.CharMatcher
type Position = Position.Position
type SourceLine = SourceLine.SourceLine
type SourceLines = SourceLines.SourceLines
type SourceSpan = SourceSpan.SourceSpan

local byte, char, find, sub = string.byte, string.char, string.find, string.sub

local END = 0x00
local NEWLINE = byte("\n")
local SPACE = byte(" ")
local TAB = byte("\t")
local VERTICAL_TAB = 0x0B
local FORM_FEED = 0x0C
local CARRIAGE_RETURN = byte("\r")

local Scanner = {}
Scanner.__index = Scanner

-- Character representing the end of input source (or outside of the text in case of the
-- "previous" methods).
--
-- Note that we can use NULL to represent this because CommonMark does not allow those in the
-- input (we replace them in the beginning of parsing).
Scanner.END = END

type ScannerFields = {
	-- Lines without newlines at the end. The scanner will yield `\n` between lines because they're
	-- significant for parsing and the final output. There is no `\n` after the last line.
	_lines: { SourceLine },
	-- Which line we're at.
	_lineIndex: number,
	-- The index within the line. If index == length(), we pretend that there's a `\n` and only
	-- advance after we yield that.
	_index: number,
	-- Current line or "" if at the end of the lines (using "" instead of nil saves a nil check)
	_line: SourceLine,
	_lineLength: number,
	peek: (self: Scanner) -> number,
	peekCodePoint: (self: Scanner) -> number,
	peekPreviousCodePoint: (self: Scanner) -> number,
	hasNext: (self: Scanner) -> boolean,
	next: (self: Scanner) -> (),
	nextChar: (self: Scanner, c: number) -> boolean,
	nextString: (self: Scanner, content: string) -> boolean,
	matchMultiple: (self: Scanner, c: number) -> number,
	match: (self: Scanner, matcher: CharMatcher) -> number,
	whitespace: (self: Scanner) -> number,
	findChar: (self: Scanner, c: number) -> number,
	findMatcher: (self: Scanner, matcher: CharMatcher) -> number,
	position: (self: Scanner) -> Position,
	setPosition: (self: Scanner, position: Position) -> (),
	getSource: (self: Scanner, begin: Position, finish: Position) -> SourceLines,
	setLine: (self: Scanner, line: SourceLine) -> (),
	checkPosition: (self: Scanner, lineIndex: number, index: number) -> (),
}

export type Scanner = typeof(setmetatable({} :: ScannerFields, Scanner))

function Scanner.new(lines: { SourceLine }, lineIndex: number, index: number): Scanner
	local self: Scanner = setmetatable({
		_lines = lines,
		_lineIndex = lineIndex,
		_index = index,
		_line = SourceLine.of("", nil),
		_lineLength = 0,
	}, Scanner) :: any
	if #lines > 0 then
		self:checkPosition(lineIndex, index)
		self:setLine(lines[lineIndex + 1])
	end
	return self
end

function Scanner.of(lines: SourceLines): Scanner
	return Scanner.new(lines:getLines(), 0, 0)
end

function Scanner.peek(self: Scanner): number
	if self._index < self._lineLength then
		return byte(self._line:getContent(), self._index + 1)
	else
		if self._lineIndex < #self._lines - 1 then
			return NEWLINE
		else
			-- Don't return newline for end of last line
			return END
		end
	end
end

function Scanner.peekCodePoint(self: Scanner): number
	if self._index < self._lineLength then
		return Utf8.codePointAt(self._line:getContent(), self._index)
	else
		if self._lineIndex < #self._lines - 1 then
			return NEWLINE
		else
			-- Don't return newline for end of last line
			return END
		end
	end
end

function Scanner.peekPreviousCodePoint(self: Scanner): number
	if self._index > 0 then
		return Utf8.codePointBefore(self._line:getContent(), self._index)
	else
		if self._lineIndex > 0 then
			return NEWLINE
		else
			return END
		end
	end
end

function Scanner.hasNext(self: Scanner): boolean
	if self._index < self._lineLength then
		return true
	else
		-- No newline at end of last line
		return self._lineIndex < #self._lines - 1
	end
end

function Scanner.next(self: Scanner)
	self._index += 1
	if self._index > self._lineLength then
		self._lineIndex += 1
		if self._lineIndex < #self._lines then
			self:setLine(self._lines[self._lineIndex + 1])
		else
			self:setLine(SourceLine.of("", nil))
		end
		self._index = 0
	end
end

-- Check if the specified char is next and advance the position. `c` may be a newline.
function Scanner.nextChar(self: Scanner, c: number): boolean
	if self:peek() == c then
		self:next()
		return true
	else
		return false
	end
end

-- Check if we have the specified content on the line and advance the position. Content must be
-- on a single line; to match newline characters, use nextChar.
function Scanner.nextString(self: Scanner, content: string): boolean
	if self._index < self._lineLength and self._index + #content <= self._lineLength then
		if sub(self._line:getContent(), self._index + 1, self._index + #content) ~= content then
			return false
		end
		self._index += #content
		return true
	else
		return false
	end
end

function Scanner.matchMultiple(self: Scanner, c: number): number
	local count = 0
	while self:peek() == c do
		count += 1
		self:next()
	end
	return count
end

function Scanner.match(self: Scanner, matcher: CharMatcher): number
	local count = 0
	while matcher:matches(self:peek()) do
		count += 1
		self:next()
	end
	return count
end

function Scanner.whitespace(self: Scanner): number
	local count = 0
	while true do
		local c = self:peek()
		if c == SPACE or c == TAB or c == NEWLINE or c == VERTICAL_TAB or c == FORM_FEED or c == CARRIAGE_RETURN then
			count += 1
			self:next()
		else
			return count
		end
	end
end

-- One byte set per character: NUL (which peeks as END) and c, escaped unless it's alphanumeric.
local findCharPatterns: { [number]: string } = {}

local function findCharPattern(c: number): string
	local pattern = findCharPatterns[c]
	if pattern == nil then
		local isAlphanumeric = (c >= byte("0") and c <= byte("9"))
			or (c >= byte("A") and c <= byte("Z"))
			or (c >= byte("a") and c <= byte("z"))
		pattern = "[\0" .. (if isAlphanumeric then "" else "%") .. char(c) .. "]"
		findCharPatterns[c] = pattern
	end
	return pattern
end

-- PORT NOTE: before Java's loop body runs, one find skips the run of the current line that is
-- neither c nor NUL, adding its length to count, so the body only runs where Java's would stop or
-- step over the line's end. It is one find on a byte set rather than separate plain finds for c and
-- NUL, because the NUL search would rescan to the end of the line on every call, which is
-- quadratic for callers that find in a loop (HtmlInlineParser's comment scan).
function Scanner.findChar(self: Scanner, c: number): number
	local count = 0
	while true do
		if self._index < self._lineLength then
			local stop = find(self._line:getContent(), findCharPattern(c), self._index + 1)
			local stopIndex = if stop ~= nil then stop - 1 else self._lineLength
			count += stopIndex - self._index
			self._index = stopIndex
		end
		local cur = self:peek()
		if cur == END then
			return -1
		elseif cur == c then
			return count
		end
		count += 1
		self:next()
	end
end

function Scanner.findMatcher(self: Scanner, matcher: CharMatcher): number
	local count = 0
	while true do
		local c = self:peek()
		if c == END then
			return -1
		elseif matcher:matches(c) then
			return count
		end
		count += 1
		self:next()
	end
end

-- Don't expose the int index, because it would be good if we could switch input to a
-- list of lines later instead of one contiguous string.
function Scanner.position(self: Scanner): Position
	return Position.new(self._lineIndex, self._index)
end

function Scanner.setPosition(self: Scanner, position: Position)
	self:checkPosition(position.lineIndex, position.index)
	self._lineIndex = position.lineIndex
	self._index = position.index
	self:setLine(self._lines[self._lineIndex + 1])
end

-- For cases where the caller appends the result to a parts buffer, we could offer another
-- method to avoid some unnecessary copying.
function Scanner.getSource(self: Scanner, begin: Position, finish: Position): SourceLines
	if begin.lineIndex == finish.lineIndex then
		-- Shortcut for common case of text from a single line
		local line = self._lines[begin.lineIndex + 1]
		local content = line:getContent()
		-- PORT NOTE: string.sub clamps out-of-range indexes where CharSequence.subSequence throws,
		-- so String's bounds check is written out, with its StringIndexOutOfBoundsException message.
		if begin.index < 0 or begin.index > finish.index or finish.index > #content then
			error(`begin {begin.index}, end {finish.index}, length {#content}`)
		end
		local newContent = sub(content, begin.index + 1, finish.index)
		local newSourceSpan: SourceSpan? = nil
		local sourceSpan = line:getSourceSpan()
		if sourceSpan ~= nil then
			newSourceSpan = sourceSpan:subSpan(begin.index, finish.index)
		end
		return SourceLines.of(SourceLine.of(newContent, newSourceSpan))
	else
		local sourceLines = SourceLines.empty()

		local firstLine = self._lines[begin.lineIndex + 1]
		sourceLines:addLine(firstLine:substring(begin.index, #firstLine:getContent()))

		-- Lines between begin and end (we are appending the full line)
		for line = begin.lineIndex + 1, finish.lineIndex - 1 do
			sourceLines:addLine(self._lines[line + 1])
		end

		local lastLine = self._lines[finish.lineIndex + 1]
		sourceLines:addLine(lastLine:substring(0, finish.index))
		return sourceLines
	end
end

function Scanner.setLine(self: Scanner, line: SourceLine)
	self._line = line
	self._lineLength = #line:getContent()
end

function Scanner.checkPosition(self: Scanner, lineIndex: number, index: number)
	if lineIndex < 0 or lineIndex >= #self._lines then
		error(`Line index {lineIndex} out of range, number of lines: {#self._lines}`)
	end
	local line = self._lines[lineIndex + 1]
	if index < 0 or index > #line:getContent() then
		error(`Index {index} out of range, line length: {#line:getContent()}`)
	end
end

return Scanner
