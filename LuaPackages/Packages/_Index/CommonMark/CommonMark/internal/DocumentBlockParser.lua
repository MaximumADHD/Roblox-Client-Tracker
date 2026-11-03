-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/internal/DocumentBlockParser.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local AbstractBlockParser = require(Root.parser.block.AbstractBlockParser)
local BlockContinue = require(Root.parser.block.BlockContinue)
local Node = require(Root.node.Node)
local Nodes = require(Root.node.Nodes)
local ParserState = require(Root.parser.block.ParserState)

type AbstractBlockParser = AbstractBlockParser.AbstractBlockParser
type BlockContinue = BlockContinue.BlockContinue
type Document = Nodes.Document
type Node = Node.Node
type ParserState = ParserState.ParserState

local DocumentBlockParser = setmetatable({}, { __index = AbstractBlockParser })
DocumentBlockParser.__index = DocumentBlockParser

type DocumentBlockParserFields = {
	_document: Document,
}

export type DocumentBlockParser = AbstractBlockParser & DocumentBlockParserFields

function DocumentBlockParser.new(): DocumentBlockParser
	return setmetatable({ _document = Nodes.Document() }, DocumentBlockParser) :: any
end

function DocumentBlockParser.isContainer(_self: DocumentBlockParser): boolean
	return true
end

function DocumentBlockParser.canContain(_self: DocumentBlockParser, _block: Node): boolean
	return true
end

function DocumentBlockParser.getBlock(self: DocumentBlockParser): Document
	return self._document
end

function DocumentBlockParser.tryContinue(_self: DocumentBlockParser, state: ParserState): BlockContinue?
	return BlockContinue.atIndex(state:getIndex())
end

return DocumentBlockParser
