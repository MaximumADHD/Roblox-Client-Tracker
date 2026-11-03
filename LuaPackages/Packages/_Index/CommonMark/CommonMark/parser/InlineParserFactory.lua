-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/parser/InlineParserFactory.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local InlineParser = require(Root.parser.InlineParser)
local InlineParserContext = require(Root.parser.InlineParserContext)

type InlineParser = InlineParser.InlineParser
type InlineParserContext = InlineParserContext.InlineParserContext

-- Factory for custom inline parser.
--
-- PORT NOTE: Parser.Builder doesn't expose inlineParserFactory as an option (ROACTCHAT-2833), so
-- this stays the interface DocumentParser creates its inline parser through, with no custom
-- implementations.
export type InlineParserFactory = {
	-- Create an InlineParser to use for parsing inlines. This is called once per parsed document.
	create: (self: InlineParserFactory, inlineParserContext: InlineParserContext) -> InlineParser,
}

return {}
