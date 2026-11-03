-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/internal/inline/EntityInlineParser.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local AsciiMatcher = require(Root.text.AsciiMatcher)
local CharMatcher = require(Root.text.CharMatcher)
local Html5Entities = require(Root.internal.util.Html5Entities)
local InlineContentParser = require(Root.parser.beta.InlineContentParser)
local InlineContentParserFactory = require(Root.parser.beta.InlineContentParserFactory)
local InlineParserState = require(Root.parser.beta.InlineParserState)
local Nodes = require(Root.node.Nodes)
local ParsedInline = require(Root.parser.beta.ParsedInline)
local Position = require(Root.parser.beta.Position)
local Scanner = require(Root.parser.beta.Scanner)

type AsciiMatcher = AsciiMatcher.AsciiMatcher
type CharMatcher = CharMatcher.CharMatcher
type InlineContentParser = InlineContentParser.InlineContentParser
type InlineContentParserFactory = InlineContentParserFactory.InlineContentParserFactory
type InlineParserState = InlineParserState.InlineParserState
type ParsedInline = ParsedInline.ParsedInline
type Position = Position.Position
type Scanner = Scanner.Scanner

local byte = string.byte

local AMP = byte("&")
local HASH = byte("#")
local LOWER_X = byte("x")
local UPPER_X = byte("X")
local SEMICOLON = byte(";")

local EntityInlineParser = {}
EntityInlineParser.__index = EntityInlineParser

type EntityInlineParserFields = {
	tryParse: (self: EntityInlineParser, inlineParserState: InlineParserState) -> ParsedInline?,
	entity: (self: EntityInlineParser, scanner: Scanner, start: Position) -> ParsedInline?,
}

export type EntityInlineParser = typeof(setmetatable({} :: EntityInlineParserFields, EntityInlineParser))

local hex: CharMatcher = AsciiMatcher.builder()
	:range(byte("0"), byte("9"))
	:range(byte("A"), byte("F"))
	:range(byte("a"), byte("f"))
	:build() :: any
local dec: CharMatcher = AsciiMatcher.builder():range(byte("0"), byte("9")):build() :: any
local entityStart: AsciiMatcher = AsciiMatcher.builder():range(byte("A"), byte("Z")):range(byte("a"), byte("z")):build()
local entityContinue: CharMatcher = entityStart:newBuilder():range(byte("0"), byte("9")):build() :: any

function EntityInlineParser.new(): InlineContentParser
	return (setmetatable({}, EntityInlineParser) :: any) :: InlineContentParser
end

function EntityInlineParser.tryParse(self: EntityInlineParser, inlineParserState: InlineParserState): ParsedInline?
	local scanner = inlineParserState:scanner()
	local start = scanner:position()
	-- Skip `&`
	scanner:next()

	local c = scanner:peek()
	if c == HASH then
		-- Numeric
		scanner:next()
		if scanner:nextChar(LOWER_X) or scanner:nextChar(UPPER_X) then
			local digits = scanner:match(hex)
			if 1 <= digits and digits <= 6 and scanner:nextChar(SEMICOLON) then
				return self:entity(scanner, start)
			end
		else
			local digits = scanner:match(dec)
			if 1 <= digits and digits <= 7 and scanner:nextChar(SEMICOLON) then
				return self:entity(scanner, start)
			end
		end
	elseif entityStart:matches(c) then
		scanner:match(entityContinue)
		if scanner:nextChar(SEMICOLON) then
			return self:entity(scanner, start)
		end
	end

	return ParsedInline.none()
end

function EntityInlineParser.entity(_self: EntityInlineParser, scanner: Scanner, start: Position): ParsedInline?
	local text = scanner:getSource(start, scanner:position()):getContent()
	return ParsedInline.of(Nodes.Text(Html5Entities.entityToString(text)), scanner:position())
end

local Factory = {}
Factory.__index = Factory

function Factory.new(): InlineContentParserFactory
	return (setmetatable({}, Factory) :: any) :: InlineContentParserFactory
end

function Factory.getTriggerCharacters(_self: InlineContentParserFactory): { [number]: true }
	return { [AMP] = true }
end

function Factory.create(_self: InlineContentParserFactory): InlineContentParser
	return EntityInlineParser.new()
end

EntityInlineParser.Factory = Factory

return EntityInlineParser
