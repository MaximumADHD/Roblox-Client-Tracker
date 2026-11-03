-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/node/SourceSpan.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local SourceSpan = {}
SourceSpan.__index = SourceSpan

-- PORT NOTE: columnIndex, inputIndex and length count bytes of the UTF-8 input, not UTF-16 code
-- units as in Java (ROACTCHAT-2830). All three stay 0-based and half-open, as in Java.
type SourceSpanFields = {
	_lineIndex: number,
	_columnIndex: number,
	_inputIndex: number,
	_length: number,
	getLineIndex: (self: SourceSpan) -> number,
	getColumnIndex: (self: SourceSpan) -> number,
	getInputIndex: (self: SourceSpan) -> number,
	getLength: (self: SourceSpan) -> number,
	subSpan: (self: SourceSpan, beginIndex: number, endIndex: number?) -> SourceSpan,
	equals: (self: SourceSpan, o: SourceSpan?) -> boolean,
	toString: (self: SourceSpan) -> string,
}

export type SourceSpan = typeof(setmetatable({} :: SourceSpanFields, SourceSpan))

-- PORT NOTE: the private constructor is a local function, so only of and subSpan build spans.
local function new(lineIndex: number, columnIndex: number, inputIndex: number, length: number): SourceSpan
	if lineIndex < 0 then
		error(`lineIndex {lineIndex} must be >= 0`)
	end
	if columnIndex < 0 then
		error(`columnIndex {columnIndex} must be >= 0`)
	end
	if inputIndex < 0 then
		error(`inputIndex {inputIndex} must be >= 0`)
	end
	if length < 0 then
		error(`length {length} must be >= 0`)
	end
	return setmetatable({
		_lineIndex = lineIndex,
		_columnIndex = columnIndex,
		_inputIndex = inputIndex,
		_length = length,
	}, SourceSpan) :: any
end

function SourceSpan.of(line: number, col: number, input: number, length: number): SourceSpan
	return new(line, col, input, length)
end

-- PORT NOTE: the deprecated of(lineIndex, columnIndex, length) overload is not ported. Nothing in
-- commonmark-java calls it, and it would need a suffix (both overloads take ints).

function SourceSpan.getLineIndex(self: SourceSpan): number
	return self._lineIndex
end

function SourceSpan.getColumnIndex(self: SourceSpan): number
	return self._columnIndex
end

function SourceSpan.getInputIndex(self: SourceSpan): number
	return self._inputIndex
end

function SourceSpan.getLength(self: SourceSpan): number
	return self._length
end

-- PORT NOTE: subSpan(beginIndex) and subSpan(beginIndex, endIndex) differ only in arity (both
-- take ints, so a type suffix can't tell them apart). They merge into one method with an optional
-- endIndex, and the one-argument form delegates with length, as Java's does.
function SourceSpan.subSpan(self: SourceSpan, beginIndex: number, endIndex: number?): SourceSpan
	local length = self._length
	if endIndex == nil then
		return self:subSpan(beginIndex, length)
	end
	if beginIndex < 0 then
		error(`beginIndex {beginIndex} + must be >= 0`)
	end
	if beginIndex > length then
		error(`beginIndex {beginIndex} must be <= length {length}`)
	end
	if endIndex < 0 then
		error(`endIndex {endIndex} + must be >= 0`)
	end
	if endIndex > length then
		error(`endIndex {endIndex} must be <= length {length}`)
	end
	if beginIndex > endIndex then
		error(`beginIndex {beginIndex} must be <= endIndex {endIndex}`)
	end
	if beginIndex == 0 and endIndex == length then
		return self
	end
	return new(self._lineIndex, self._columnIndex + beginIndex, self._inputIndex + beginIndex, endIndex - beginIndex)
end

-- PORT NOTE: equals(Object) takes a SourceSpan? (the only class it can match), so the getClass
-- check reduces to the nil check. hashCode is not ported: Luau tables can't key on it, and
-- nothing hashes spans.
function SourceSpan.equals(self: SourceSpan, o: SourceSpan?): boolean
	if self == o then
		return true
	end
	if o == nil then
		return false
	end
	local that = o
	return self._lineIndex == that._lineIndex
		and self._columnIndex == that._columnIndex
		and self._inputIndex == that._inputIndex
		and self._length == that._length
end

function SourceSpan.toString(self: SourceSpan): string
	return `SourceSpan\{line={self._lineIndex}, column={self._columnIndex}, input={self._inputIndex}, length={self._length}}`
end

return SourceSpan
