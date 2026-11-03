-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/parser/block/AbstractBlockParser.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local BlockParser = require(Root.parser.block.BlockParser)
local DefinitionMap = require(Root.node.DefinitionMap)
local InlineParser = require(Root.parser.InlineParser)
local Node = require(Root.node.Node)
local SourceLine = require(Root.parser.SourceLine)
local SourceSpan = require(Root.node.SourceSpan)

type BlockParser = BlockParser.BlockParser
type DefinitionMap<D> = DefinitionMap.DefinitionMap<D>
type InlineParser = InlineParser.InlineParser
type Node = Node.Node
type SourceLine = SourceLine.SourceLine
type SourceSpan = SourceSpan.SourceSpan

local AbstractBlockParser = {}

-- PORT NOTE: the abstract class has no fields or constructor, so its type is the BlockParser
-- interface itself rather than a metatable type. Subclasses are `AbstractBlockParser &
-- ChildFields` with `__index` chained to this table, which lets them pass as a BlockParser
-- (BlockStart.of) without a cast. getBlock and tryContinue stay abstract: each subclass defines
-- them.
export type AbstractBlockParser = BlockParser

local EMPTY_DEFINITIONS: { DefinitionMap<any> } = table.freeze({})

function AbstractBlockParser.isContainer(_self: AbstractBlockParser): boolean
	return false
end

function AbstractBlockParser.canHaveLazyContinuationLines(_self: AbstractBlockParser): boolean
	return false
end

function AbstractBlockParser.canContain(_self: AbstractBlockParser, _childBlock: Node): boolean
	return false
end

function AbstractBlockParser.addLine(_self: AbstractBlockParser, _line: SourceLine) end

function AbstractBlockParser.addSourceSpan(self: AbstractBlockParser, sourceSpan: SourceSpan)
	self:getBlock():addSourceSpan(sourceSpan)
end

function AbstractBlockParser.getDefinitions(_self: AbstractBlockParser): { DefinitionMap<any> }
	return EMPTY_DEFINITIONS
end

function AbstractBlockParser.closeBlock(_self: AbstractBlockParser) end

function AbstractBlockParser.parseInlines(_self: AbstractBlockParser, _inlineParser: InlineParser) end

return AbstractBlockParser
