-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/internal/inline/BackticksInlineParser.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local Characters = require(Root.text.Characters)
local InlineContentParser = require(Root.parser.beta.InlineContentParser)
local InlineContentParserFactory = require(Root.parser.beta.InlineContentParserFactory)
local InlineParserState = require(Root.parser.beta.InlineParserState)
local Nodes = require(Root.node.Nodes)
local ParsedInline = require(Root.parser.beta.ParsedInline)
local Position = require(Root.parser.beta.Position)

type InlineContentParser = InlineContentParser.InlineContentParser
type InlineContentParserFactory = InlineContentParserFactory.InlineContentParserFactory
type InlineParserState = InlineParserState.InlineParserState
type ParsedInline = ParsedInline.ParsedInline
type Position = Position.Position

local byte, gsub, sub = string.byte, string.gsub, string.sub

local BACKTICK = byte("`")
local SPACE = byte(" ")

local BackticksInlineParser = {}
BackticksInlineParser.__index = BackticksInlineParser

type BackticksInlineParserFields = {
	-- Keep track of positions of backtick runs to avoid repeated scanning with pathological inputs
	_backtickPositions: { [number]: Position },
	_scannedToEnd: boolean,
	tryParse: (self: BackticksInlineParser, inlineParserState: InlineParserState) -> ParsedInline?,
}

export type BackticksInlineParser = typeof(setmetatable({} :: BackticksInlineParserFields, BackticksInlineParser))

function BackticksInlineParser.new(): InlineContentParser
	local self = setmetatable({ _backtickPositions = {}, _scannedToEnd = false }, BackticksInlineParser)
	return (self :: any) :: InlineContentParser
end

function BackticksInlineParser.tryParse(
	self: BackticksInlineParser,
	inlineParserState: InlineParserState
): ParsedInline?
	local scanner = inlineParserState:scanner()
	local start = scanner:position()
	local openingLength = scanner:matchMultiple(BACKTICK)
	local afterOpening = scanner:position()

	if self._scannedToEnd then
		local potentialCloser: Position? = self._backtickPositions[openingLength]
		if potentialCloser == nil or potentialCloser:compareTo(start) <= 0 then
			-- We have already scanned the whole input before and know there's no matching
			-- closer, so no need to scan again; this is plain text.
			local text = Nodes.Text(scanner:getSource(start, afterOpening):getContent())
			return ParsedInline.of(text, afterOpening)
		end
	end

	while scanner:findChar(BACKTICK) > 0 do
		local beforeClosing = scanner:position()
		local length = scanner:matchMultiple(BACKTICK)
		-- Keep track of last position of backticks run of this length
		self._backtickPositions[length] = beforeClosing
		if length == openingLength then
			local node = Nodes.Code()

			local content = scanner:getSource(afterOpening, beforeClosing):getContent()
			content = (gsub(content, "\n", " "))

			-- spec: If the resulting string both begins and ends with a space character, but
			-- does not consist entirely of space characters, a single space character is
			-- removed from the front and back.
			if
				#content >= 3
				and byte(content, 1) == SPACE
				and byte(content, #content) == SPACE
				and Characters.hasNonSpace(content)
			then
				content = sub(content, 2, #content - 1)
			end

			node.literal = content
			return ParsedInline.of(node, scanner:position())
		end
	end

	-- Once we've scanned through the whole input, we have positions of any potential closing
	-- backticks (of any length).
	self._scannedToEnd = true

	-- If we got here, we didn't find a matching closing backtick sequence.
	local text = Nodes.Text(scanner:getSource(start, afterOpening):getContent())
	return ParsedInline.of(text, afterOpening)
end

local Factory = {}
Factory.__index = Factory

function Factory.new(): InlineContentParserFactory
	return (setmetatable({}, Factory) :: any) :: InlineContentParserFactory
end

function Factory.getTriggerCharacters(_self: InlineContentParserFactory): { [number]: true }
	return { [BACKTICK] = true }
end

function Factory.create(_self: InlineContentParserFactory): InlineContentParser
	return BackticksInlineParser.new()
end

BackticksInlineParser.Factory = Factory

return BackticksInlineParser
