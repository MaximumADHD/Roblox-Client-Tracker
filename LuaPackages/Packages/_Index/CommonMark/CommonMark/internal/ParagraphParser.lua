-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/internal/ParagraphParser.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local AbstractBlockParser = require(Root.parser.block.AbstractBlockParser)
local BlockContinue = require(Root.parser.block.BlockContinue)
local DefinitionMap = require(Root.node.DefinitionMap)
local InlineParser = require(Root.parser.InlineParser)
local LinkReferenceDefinitionParser = require(Root.internal.LinkReferenceDefinitionParser)
local Node = require(Root.node.Node)
local Nodes = require(Root.node.Nodes)
local ParserState = require(Root.parser.block.ParserState)
local SourceLine = require(Root.parser.SourceLine)
local SourceLines = require(Root.parser.SourceLines)
local SourceSpan = require(Root.node.SourceSpan)

type AbstractBlockParser = AbstractBlockParser.AbstractBlockParser
type BlockContinue = BlockContinue.BlockContinue
type DefinitionMap<D> = DefinitionMap.DefinitionMap<D>
type InlineParser = InlineParser.InlineParser
type LinkReferenceDefinition = Nodes.LinkReferenceDefinition
type LinkReferenceDefinitionParser = LinkReferenceDefinitionParser.LinkReferenceDefinitionParser
type Node = Node.Node
type Paragraph = Nodes.Paragraph
type ParserState = ParserState.ParserState
type SourceLine = SourceLine.SourceLine
type SourceLines = SourceLines.SourceLines
type SourceSpan = SourceSpan.SourceSpan

local ParagraphParser = setmetatable({}, { __index = AbstractBlockParser })
ParagraphParser.__index = ParagraphParser

type ParagraphParserFields = {
	_block: Paragraph,
	_linkReferenceDefinitionParser: LinkReferenceDefinitionParser,
	getParagraphLines: (self: ParagraphParser) -> SourceLines,
	removeLines: (self: ParagraphParser, lines: number) -> { SourceSpan },
}

export type ParagraphParser = AbstractBlockParser & ParagraphParserFields

-- PORT NOTE: the optional linkReferenceDefinitions isn't in commonmark-java (see
-- Parser.Builder.linkReferenceDefinitions); false leaves `[label]: destination` lines as paragraph
-- text, and nil or true is Java's behavior.
function ParagraphParser.new(linkReferenceDefinitions: boolean?): ParagraphParser
	return setmetatable({
		_block = Nodes.Paragraph(),
		_linkReferenceDefinitionParser = LinkReferenceDefinitionParser.new(linkReferenceDefinitions),
	}, ParagraphParser) :: any
end

function ParagraphParser.canHaveLazyContinuationLines(_self: ParagraphParser): boolean
	return true
end

function ParagraphParser.getBlock(self: ParagraphParser): Node
	return self._block
end

function ParagraphParser.tryContinue(_self: ParagraphParser, state: ParserState): BlockContinue?
	if not state:isBlank() then
		return BlockContinue.atIndex(state:getIndex())
	else
		return BlockContinue.none()
	end
end

function ParagraphParser.addLine(self: ParagraphParser, line: SourceLine)
	self._linkReferenceDefinitionParser:parse(line)
end

function ParagraphParser.addSourceSpan(self: ParagraphParser, sourceSpan: SourceSpan)
	-- Some source spans might belong to link reference definitions, others to the paragraph.
	-- The parser will handle that.
	self._linkReferenceDefinitionParser:addSourceSpan(sourceSpan)
end

function ParagraphParser.getDefinitions(self: ParagraphParser): { DefinitionMap<any> }
	local map: DefinitionMap<LinkReferenceDefinition> = DefinitionMap.new("LinkReferenceDefinition")
	for _, def in ipairs(self._linkReferenceDefinitionParser:getDefinitions()) do
		map:putIfAbsent(def.label :: string, def)
	end
	return table.freeze({ map })
end

function ParagraphParser.closeBlock(self: ParagraphParser)
	for _, def in ipairs(self._linkReferenceDefinitionParser:getDefinitions()) do
		self._block:insertBefore(def)
	end

	if self._linkReferenceDefinitionParser:getParagraphLines():isEmpty() then
		self._block:unlink()
	else
		self._block:setSourceSpans(self._linkReferenceDefinitionParser:getParagraphSourceSpans())
	end
end

function ParagraphParser.parseInlines(self: ParagraphParser, inlineParser: InlineParser)
	local lines = self._linkReferenceDefinitionParser:getParagraphLines()
	if not lines:isEmpty() then
		inlineParser:parse(lines, self._block)
	end
end

function ParagraphParser.getParagraphLines(self: ParagraphParser): SourceLines
	return self._linkReferenceDefinitionParser:getParagraphLines()
end

function ParagraphParser.removeLines(self: ParagraphParser, lines: number): { SourceSpan }
	return self._linkReferenceDefinitionParser:removeLines(lines)
end

return ParagraphParser
