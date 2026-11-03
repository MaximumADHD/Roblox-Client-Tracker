-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/internal/inline/BackslashInlineParser.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local Escaping = require(Root.internal.util.Escaping)
local InlineContentParser = require(Root.parser.beta.InlineContentParser)
local InlineContentParserFactory = require(Root.parser.beta.InlineContentParserFactory)
local InlineParserState = require(Root.parser.beta.InlineParserState)
local Nodes = require(Root.node.Nodes)
local ParsedInline = require(Root.parser.beta.ParsedInline)

type InlineContentParser = InlineContentParser.InlineContentParser
type InlineContentParserFactory = InlineContentParserFactory.InlineContentParserFactory
type InlineParserState = InlineParserState.InlineParserState
type ParsedInline = ParsedInline.ParsedInline

local byte, char, find = string.byte, string.char, string.find

local BACKSLASH = byte("\\")
local NEWLINE = byte("\n")

local BackslashInlineParser = {}
BackslashInlineParser.__index = BackslashInlineParser

-- `matches()` must match the whole string, hence the trailing `$`.
-- Upstream: '^' + Escaping.ESCAPABLE
local ESCAPABLE = "^" .. Escaping.ESCAPABLE .. "$"

type BackslashInlineParserFields = {
	_hardLineBreakEnabled: boolean,
}

-- PORT NOTE: not in commonmark-java, hardLineBreakEnabled (default true) backs
-- Parser.Builder.enabledInlineTypes' HardLineBreak. When false, a backslash before a newline is a
-- literal `\`, as before any other non-punctuation character, and the newline a soft break.
function BackslashInlineParser.new(hardLineBreakEnabled: boolean?): InlineContentParser
	return (
		setmetatable({ _hardLineBreakEnabled = hardLineBreakEnabled ~= false }, BackslashInlineParser) :: any
	) :: InlineContentParser
end

function BackslashInlineParser.tryParse(
	parser: InlineContentParser,
	inlineParserState: InlineParserState
): ParsedInline?
	local self: BackslashInlineParserFields = parser :: any
	local scanner = inlineParserState:scanner()
	-- Backslash
	scanner:next()

	local next = scanner:peek()
	if next == NEWLINE and self._hardLineBreakEnabled then
		scanner:next()
		return ParsedInline.of(Nodes.HardLineBreak(), scanner:position())
	elseif find(char(next), ESCAPABLE) ~= nil then
		scanner:next()
		return ParsedInline.of(Nodes.Text(char(next)), scanner:position())
	else
		return ParsedInline.of(Nodes.Text("\\"), scanner:position())
	end
end

local Factory = {}
Factory.__index = Factory

type FactoryFields = {
	_hardLineBreakEnabled: boolean?,
}

-- PORT NOTE: hardLineBreakEnabled is passed on to each parser (see BackslashInlineParser.new).
function Factory.new(hardLineBreakEnabled: boolean?): InlineContentParserFactory
	return (setmetatable({ _hardLineBreakEnabled = hardLineBreakEnabled }, Factory) :: any) :: InlineContentParserFactory
end

function Factory.getTriggerCharacters(_self: InlineContentParserFactory): { [number]: true }
	return { [BACKSLASH] = true }
end

function Factory.create(factory: InlineContentParserFactory): InlineContentParser
	local self: FactoryFields = factory :: any
	return BackslashInlineParser.new(self._hardLineBreakEnabled)
end

BackslashInlineParser.Factory = Factory

return BackslashInlineParser
