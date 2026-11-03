-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/internal/util/LineReader.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local Characters = require(Root.text.Characters)

local byte, sub = string.byte, string.sub

local NEWLINE = byte("\n")

-- Reads lines from a string like java.io.BufferedReader but also returns the line terminators.
--
-- Line terminators can be either a line feed "\n", carriage return "\r", or a carriage return
-- followed by a line feed "\r\n". Call getLineTerminator() after readLine() to obtain the
-- corresponding line terminator. If the input has a line at the end without a terminator,
-- getLineTerminator() returns nil.
--
-- PORT NOTE: Java reads a java.io.Reader through an 8192-char buffer (CHAR_BUFFER_SIZE,
-- EXPECTED_LINE_LENGTH, cbuf, fill, finish). The Luau API parses strings, so this reader wraps a
-- whole string, which serves as a buffer filled once with limit = #input. A line therefore never
-- spans a refill, and the paths for a partial line or a CR at the end of the buffer have no
-- counterpart.
local LineReader = {}
LineReader.__index = LineReader

type LineReaderFields = {
	_input: string?,
	_position: number,
	_limit: number,
	_lineTerminator: string?,
	readLine: (self: LineReader) -> string?,
	getLineTerminator: (self: LineReader) -> string?,
	close: (self: LineReader) -> (),
}

export type LineReader = typeof(setmetatable({} :: LineReaderFields, LineReader))

function LineReader.new(input: string): LineReader
	return setmetatable({
		_input = input,
		_position = 0,
		_limit = #input,
		_lineTerminator = nil,
	}, LineReader) :: any
end

-- PORT NOTE: Java's private instance method line() becomes a file-local function taking self,
-- forward-declared so it stays after close() in Java's order.
local line: (self: LineReader, line: string?, lineTerminator: string?) -> string?

-- Read a line of text. Returns the line, or nil when the end of the input has been reached and no
-- more lines can be read.
function LineReader.readLine(self: LineReader): string?
	local input = self._input
	-- PORT NOTE: Java throws a NullPointerException when reading after close(); this raises an
	-- explicit error.
	if input == nil then
		error("LineReader is closed")
	end

	local position = self._position
	if position >= self._limit then
		-- End of stream, return null for end.
		return line(self, nil, nil)
	end

	local i = Characters.findLineBreak(input, position)
	if i == -1 then
		-- The last line, without a terminator.
		self._position = self._limit
		return line(self, sub(input, position + 1, self._limit), nil)
	end

	if byte(input, i + 1) == NEWLINE then
		self._position = i + 1
		return line(self, sub(input, position + 1, i), "\n")
	elseif byte(input, i + 1 + 1) == NEWLINE then
		self._position = i + 2
		return line(self, sub(input, position + 1, i), "\r\n")
	else
		self._position = i + 1
		return line(self, sub(input, position + 1, i), "\r")
	end
end

-- Return the line terminator of the last read line from readLine(): "\n", "\r", "\r\n", or nil.
function LineReader.getLineTerminator(self: LineReader): string?
	return self._lineTerminator
end

-- PORT NOTE: there is no Reader to close; close() releases the input, and stays idempotent as in
-- Java.
function LineReader.close(self: LineReader)
	if self._input == nil then
		return
	end
	self._input = nil
end

-- selene: allow(shadowing)
function line(self: LineReader, line: string?, lineTerminator: string?): string?
	self._lineTerminator = lineTerminator
	return line
end

return LineReader
