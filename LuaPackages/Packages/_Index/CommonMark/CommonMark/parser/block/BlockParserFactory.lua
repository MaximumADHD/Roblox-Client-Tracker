-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/parser/block/BlockParserFactory.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local BlockStart = require(Root.parser.block.BlockStart)
local MatchedBlockParser = require(Root.parser.block.MatchedBlockParser)
local ParserState = require(Root.parser.block.ParserState)

type BlockStart = BlockStart.BlockStart
type MatchedBlockParser = MatchedBlockParser.MatchedBlockParser
type ParserState = ParserState.ParserState

-- Parser factory for a block node for determining when a block starts.
--
-- PORT NOTE: parser/block/AbstractBlockParserFactory.java, an empty abstract class implementing
-- this interface, is dropped (ROACTCHAT-2833). Factories implement BlockParserFactory directly
-- and cast to it at construction.
export type BlockParserFactory = {
	tryStart: (
		self: BlockParserFactory,
		state: ParserState,
		matchedBlockParser: MatchedBlockParser
	) -> BlockStart?,
}

return {}
