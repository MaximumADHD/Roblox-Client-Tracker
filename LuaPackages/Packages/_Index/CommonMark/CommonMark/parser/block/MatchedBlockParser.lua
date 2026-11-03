-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/parser/block/MatchedBlockParser.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local BlockParser = require(Root.parser.block.BlockParser)
local SourceLines = require(Root.parser.SourceLines)

type BlockParser = BlockParser.BlockParser
type SourceLines = SourceLines.SourceLines

-- Open block parser that was last matched during the continue phase. This is different from the
-- currently active block parser, as an unmatched block is only closed when a new block is
-- started.
--
-- This interface is not intended to be implemented by clients.
export type MatchedBlockParser = {
	getMatchedBlockParser: (self: MatchedBlockParser) -> BlockParser,
	-- Returns the current paragraph lines if the matched block is a paragraph. If you want to use
	-- some or all of the lines for starting a new block instead, use
	-- BlockStart.replaceParagraphLines.
	--
	-- Returns paragraph content or an empty list.
	getParagraphLines: (self: MatchedBlockParser) -> SourceLines,
}

return {}
