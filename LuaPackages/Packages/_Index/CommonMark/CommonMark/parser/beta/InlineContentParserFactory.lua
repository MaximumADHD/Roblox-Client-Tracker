-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/parser/beta/InlineContentParserFactory.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local InlineContentParser = require(Root.parser.beta.InlineContentParser)

type InlineContentParser = InlineContentParser.InlineContentParser

-- A factory for extending inline content parsing.
--
-- See Parser.Builder.customInlineContentParserFactory for how to register it.
--
-- PORT NOTE: Java's Set<Character> of trigger characters is a set table of byte values, as
-- InlineParserContext's link markers are.
export type InlineContentParserFactory = {
	-- An inline content parser needs to have a special "trigger" character which activates it.
	-- When this character is encountered during inline parsing, InlineContentParser.tryParse is
	-- called with the current parser state. It can also register for more than one trigger
	-- character.
	getTriggerCharacters: (self: InlineContentParserFactory) -> { [number]: true },
	-- Create an InlineContentParser that will do the parsing. Create is called once per text
	-- snippet of inline content inside block structures, and then called each time a trigger
	-- character is encountered.
	create: (self: InlineContentParserFactory) -> InlineContentParser,
}

return {}
