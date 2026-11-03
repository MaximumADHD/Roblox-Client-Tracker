-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/parser/SourceLines.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local SourceLine = require(Root.parser.SourceLine)
local SourceSpan = require(Root.node.SourceSpan)

type SourceLine = SourceLine.SourceLine
type SourceSpan = SourceSpan.SourceSpan

local SourceLines = {}
SourceLines.__index = SourceLines

type SourceLinesFields = {
	_lines: { SourceLine },
	addLine: (self: SourceLines, sourceLine: SourceLine) -> (),
	getLines: (self: SourceLines) -> { SourceLine },
	isEmpty: (self: SourceLines) -> boolean,
	getContent: (self: SourceLines) -> string,
	getSourceSpans: (self: SourceLines) -> { SourceSpan },
}

export type SourceLines = typeof(setmetatable({} :: SourceLinesFields, SourceLines))

function SourceLines.new(): SourceLines
	return setmetatable({ _lines = {} }, SourceLines) :: any
end

function SourceLines.empty(): SourceLines
	return SourceLines.new()
end

function SourceLines.of(sourceLine: SourceLine): SourceLines
	local sourceLines = SourceLines.new()
	sourceLines:addLine(sourceLine)
	return sourceLines
end

function SourceLines.ofList(sourceLines: { SourceLine }): SourceLines
	local result = SourceLines.new()
	table.move(sourceLines, 1, #sourceLines, 1, result._lines)
	return result
end

function SourceLines.addLine(self: SourceLines, sourceLine: SourceLine)
	table.insert(self._lines, sourceLine)
end

function SourceLines.getLines(self: SourceLines): { SourceLine }
	return self._lines
end

function SourceLines.isEmpty(self: SourceLines): boolean
	return #self._lines == 0
end

function SourceLines.getContent(self: SourceLines): string
	local parts = table.create(#self._lines)
	for i, line in ipairs(self._lines) do
		parts[i] = line:getContent()
	end
	return table.concat(parts, "\n")
end

function SourceLines.getSourceSpans(self: SourceLines): { SourceSpan }
	local sourceSpans = {}
	for _, line in ipairs(self._lines) do
		local sourceSpan = line:getSourceSpan()
		if sourceSpan ~= nil then
			table.insert(sourceSpans, sourceSpan)
		end
	end
	return sourceSpans
end

return SourceLines
