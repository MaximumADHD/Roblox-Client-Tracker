-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/parser/block/BlockParser.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local BlockContinue = require(Root.parser.block.BlockContinue)
local DefinitionMap = require(Root.node.DefinitionMap)
local InlineParser = require(Root.parser.InlineParser)
local Node = require(Root.node.Node)
local SourceLine = require(Root.parser.SourceLine)
local SourceSpan = require(Root.node.SourceSpan)

type BlockContinue = BlockContinue.BlockContinue
type DefinitionMap<D> = DefinitionMap.DefinitionMap<D>
type InlineParser = InlineParser.InlineParser
type Node = Node.Node
type SourceLine = SourceLine.SourceLine
type SourceSpan = SourceSpan.SourceSpan

-- Parser for a specific block node.
--
-- Implementations should subclass AbstractBlockParser instead of implementing this directly.
export type BlockParser = {
	-- Return true if the block that is parsed is a container (contains other blocks), or false if
	-- it's a leaf.
	isContainer: (self: BlockParser) -> boolean,
	-- Return true if the block can have lazy continuation lines.
	--
	-- Lazy continuation lines are lines that were rejected by this tryContinue but didn't match
	-- any other block parsers either.
	--
	-- If true is returned here, those lines will get added via addLine. For false, the block is
	-- closed instead.
	canHaveLazyContinuationLines: (self: BlockParser) -> boolean,
	canContain: (self: BlockParser, childBlock: Node) -> boolean,
	getBlock: (self: BlockParser) -> Node,
	tryContinue: (self: BlockParser, parserState: ParserState) -> BlockContinue?,
	-- Add the part of a line that belongs to this block parser to parse (i.e. without any
	-- container block markers). Note that the line will only include a SourceLine.getSourceSpan
	-- if source spans are enabled for inlines.
	addLine: (self: BlockParser, line: SourceLine) -> (),
	-- Add a source span of the currently parsed block. The default implementation in
	-- AbstractBlockParser adds it to the block. Unless you have some complicated parsing where you
	-- need to check source positions, you don't need to override this.
	addSourceSpan: (self: BlockParser, sourceSpan: SourceSpan) -> (),
	-- Return definitions parsed by this parser. The definitions returned here can later be
	-- accessed during inline parsing via InlineParserContext.getDefinition.
	getDefinitions: (self: BlockParser) -> { DefinitionMap<any> },
	closeBlock: (self: BlockParser) -> (),
	parseInlines: (self: BlockParser, inlineParser: InlineParser) -> (),
}

-- State of the parser that is used in block parsers.
--
-- This interface is not intended to be implemented by clients.
--
-- PORT NOTE: parser/block/ParserState.java's interface is defined here and re-exported by
-- ParserState.lua. BlockParser and ParserState name each other, and Luau types can't be imported
-- from a module that requires the importer, so the pair lives in one module.
export type ParserState = {
	-- The current source line being parsed (full line).
	getLine: (self: ParserState) -> SourceLine,
	-- The current index within the line (0-based).
	getIndex: (self: ParserState) -> number,
	-- The index of the next non-space character starting from getIndex (may be the same)
	-- (0-based).
	getNextNonSpaceIndex: (self: ParserState) -> number,
	-- The column is the position within the line after tab characters have been processed as
	-- 4-space tab stops. If the line doesn't contain any tabs, it's the same as the getIndex. If
	-- the line starts with a tab, followed by text, then the column for the first character of
	-- the text is 4 (the index is 1).
	--
	-- Returns the current column within the line (0-based).
	getColumn: (self: ParserState) -> number,
	-- The indentation in columns (either by spaces or tab stop of 4), starting from getColumn.
	getIndent: (self: ParserState) -> number,
	-- True if the current line is blank starting from the index.
	isBlank: (self: ParserState) -> boolean,
	-- The deepest open block parser.
	getActiveBlockParser: (self: ParserState) -> BlockParser,
}

return {}
