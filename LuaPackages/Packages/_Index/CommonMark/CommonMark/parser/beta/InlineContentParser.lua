-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/parser/beta/InlineContentParser.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local InlineParserState = require(Root.parser.beta.InlineParserState)
local ParsedInline = require(Root.parser.beta.ParsedInline)

type InlineParserState = InlineParserState.InlineParserState
type ParsedInline = ParsedInline.ParsedInline

-- Parser for a type of inline content. Registered via a InlineContentParserFactory and created by
-- its create method. The lifetime of this is tied to each inline content snippet that is parsed,
-- as a new instance is created for each.
export type InlineContentParser = {
	-- Try to parse inline content starting from the current position. Note that the character at
	-- the current position is one of InlineContentParserFactory.getTriggerCharacters of the
	-- factory that created this parser.
	--
	-- For a given inline content snippet that is being parsed, this method can be called multiple
	-- times: each time a trigger character is encountered.
	--
	-- Returns the result of parsing; can indicate that this parser is not interested, or that
	-- parsing was successful.
	tryParse: (self: InlineContentParser, inlineParserState: InlineParserState) -> ParsedInline?,
}

return {}
