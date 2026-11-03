-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/parser/InlineParserContext.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local LinkProcessor = require(Root.parser.beta.LinkProcessor)

-- PORT NOTE: the interface is defined in parser/beta/LinkProcessor.lua, because it and
-- LinkProcessor name each other; this module re-exports it at the Java path.
export type InlineParserContext = LinkProcessor.InlineParserContext

return {}
