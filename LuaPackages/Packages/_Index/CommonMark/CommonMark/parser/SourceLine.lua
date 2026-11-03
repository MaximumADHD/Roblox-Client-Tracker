-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/parser/SourceLine.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local SourceSpan = require(Root.node.SourceSpan)

type SourceSpan = SourceSpan.SourceSpan

local sub = string.sub

local SourceLine = {}
SourceLine.__index = SourceLine

type SourceLineFields = {
	_content: string,
	_sourceSpan: SourceSpan?,
	getContent: (self: SourceLine) -> string,
	getSourceSpan: (self: SourceLine) -> SourceSpan?,
	substring: (self: SourceLine, beginIndex: number, endIndex: number) -> SourceLine,
}

export type SourceLine = typeof(setmetatable({} :: SourceLineFields, SourceLine))

-- PORT NOTE: the private constructor is a local function, so only of builds lines.
local function new(content: string, sourceSpan: SourceSpan?): SourceLine
	return setmetatable({
		_content = content,
		_sourceSpan = sourceSpan,
	}, SourceLine) :: any
end

function SourceLine.of(content: string, sourceSpan: SourceSpan?): SourceLine
	return new(content, sourceSpan)
end

function SourceLine.getContent(self: SourceLine): string
	return self._content
end

function SourceLine.getSourceSpan(self: SourceLine): SourceSpan?
	return self._sourceSpan
end

function SourceLine.substring(self: SourceLine, beginIndex: number, endIndex: number): SourceLine
	local content = self._content
	-- PORT NOTE: string.sub clamps out-of-range indexes where CharSequence.subSequence throws, so
	-- String's bounds check is written out, with its StringIndexOutOfBoundsException message.
	if beginIndex < 0 or beginIndex > endIndex or endIndex > #content then
		error(`begin {beginIndex}, end {endIndex}, length {#content}`)
	end
	local newContent = sub(content, beginIndex + 1, endIndex)
	local newSourceSpan = nil
	local sourceSpan = self._sourceSpan
	if sourceSpan ~= nil then
		local length = endIndex - beginIndex
		if length ~= 0 then
			local columnIndex = sourceSpan:getColumnIndex() + beginIndex
			local inputIndex = sourceSpan:getInputIndex() + beginIndex
			newSourceSpan = SourceSpan.of(sourceSpan:getLineIndex(), columnIndex, inputIndex, length)
		end
	end
	return SourceLine.of(newContent, newSourceSpan)
end

return SourceLine
