-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/parser/block/ParserState.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local BlockParser = require(Root.parser.block.BlockParser)

-- PORT NOTE: the interface is defined in BlockParser.lua, because it and BlockParser name each
-- other; this module re-exports it at the Java path.
export type ParserState = BlockParser.ParserState

return {}
