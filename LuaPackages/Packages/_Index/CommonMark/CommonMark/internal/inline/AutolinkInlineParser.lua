-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/internal/inline/AutolinkInlineParser.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local AsciiMatcher = require(Root.text.AsciiMatcher)
local CharMatcher = require(Root.text.CharMatcher)
local InlineContentParser = require(Root.parser.beta.InlineContentParser)
local InlineContentParserFactory = require(Root.parser.beta.InlineContentParserFactory)
local InlineParserState = require(Root.parser.beta.InlineParserState)
local Nodes = require(Root.node.Nodes)
local ParsedInline = require(Root.parser.beta.ParsedInline)

type CharMatcher = CharMatcher.CharMatcher
type InlineContentParser = InlineContentParser.InlineContentParser
type InlineContentParserFactory = InlineContentParserFactory.InlineContentParserFactory
type InlineParserState = InlineParserState.InlineParserState
type ParsedInline = ParsedInline.ParsedInline

local byte, find, sub = string.byte, string.find, string.sub

local LT = byte("<")
local GT = byte(">")

local AutolinkInlineParser = {}
AutolinkInlineParser.__index = AutolinkInlineParser

local ANGLE_BRACKETS: CharMatcher = AsciiMatcher.builder():c(LT):c(GT):build() :: any

-- Upstream: ^[a-zA-Z][a-zA-Z0-9.+-]{1,31}:[^<>\u0000- ]*$
local function isUri(content: string): boolean
	local _, colon = find(content, "^[A-Za-z][A-Za-z0-9.+%-]*:")
	if colon == nil then
		return false
	end
	local schemeLength = colon - 1
	if schemeLength < 2 or schemeLength > 32 then
		return false
	end
	return find(content, "[%z\1- <>]", colon + 1) == nil
end

-- Upstream: [a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?
local function isDomainLabel(label: string): boolean
	if #label > 63 then
		return false
	end
	return find(label, "^[A-Za-z0-9]$") ~= nil or find(label, "^[A-Za-z0-9][A-Za-z0-9%-]*[A-Za-z0-9]$") ~= nil
end

-- Upstream: ^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*+$
local function isEmail(content: string): boolean
	local _, at = find(content, "^[A-Za-z0-9.!#$%%&'*+/=?^_`{|}~%-]+@")
	if at == nil then
		return false
	end
	local labelStart = at + 1
	while true do
		local dot = find(content, ".", labelStart, true)
		local labelEnd = if dot ~= nil then dot - 1 else #content
		if not isDomainLabel(sub(content, labelStart, labelEnd)) then
			return false
		end
		if dot == nil then
			return true
		end
		labelStart = dot + 1
	end
end

function AutolinkInlineParser.new(): InlineContentParser
	return (setmetatable({}, AutolinkInlineParser) :: any) :: InlineContentParser
end

function AutolinkInlineParser.tryParse(_self: InlineContentParser, inlineParserState: InlineParserState): ParsedInline?
	local scanner = inlineParserState:scanner()
	scanner:next()
	local textStart = scanner:position()
	if scanner:findMatcher(ANGLE_BRACKETS) > 0 then
		if scanner:peek() ~= GT then
			return ParsedInline.none()
		end

		local textSource = scanner:getSource(textStart, scanner:position())
		local content = textSource:getContent()
		scanner:next()

		local destination: string? = nil
		if isUri(content) then
			destination = content
		elseif isEmail(content) then
			destination = "mailto:" .. content
		end

		if destination ~= nil then
			local link = Nodes.Link(destination, nil)
			local text = Nodes.Text(content)
			text:setSourceSpans(textSource:getSourceSpans())
			link:appendChild(text)
			return ParsedInline.of(link, scanner:position())
		end
	end
	return ParsedInline.none()
end

local Factory = {}
Factory.__index = Factory

function Factory.new(): InlineContentParserFactory
	return (setmetatable({}, Factory) :: any) :: InlineContentParserFactory
end

function Factory.getTriggerCharacters(_self: InlineContentParserFactory): { [number]: true }
	return { [LT] = true }
end

function Factory.create(_self: InlineContentParserFactory): InlineContentParser
	return AutolinkInlineParser.new()
end

AutolinkInlineParser.Factory = Factory

-- PORT NOTE: test-only access to the URI and EMAIL regex replacements, so they can be checked
-- against the upstream patterns' edge cases directly.
AutolinkInlineParser._isUri = isUri
AutolinkInlineParser._isEmail = isEmail

return AutolinkInlineParser
