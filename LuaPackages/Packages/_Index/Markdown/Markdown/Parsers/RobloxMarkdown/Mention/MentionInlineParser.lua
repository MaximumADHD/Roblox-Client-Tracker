-- The profile's mention parser (ROACTCHAT-2831 #10), triggered on `<`. The grammar is
-- provisional (roblox-profile.md, *Open decisions*): `<@`, one or more ASCII digits, optionally `:` and one or more
-- of `[A-Za-z0-9_]`, then `>`, with no whitespace or newline anywhere and no length caps.
--
-- The scan never backtracks and stops at the first byte that can't continue the grammar, so it's
-- linear in the mention's length, and in a run of `<@` each attempt stops at the next `<`. On
-- failure it returns none without restoring the scanner: the inline parser resets the position, and
-- with HtmlInline and Autolink off the `<` is text.

local Root = script:FindFirstAncestor("Markdown")
local Packages = Root.Parent
local CommonMark = require(Packages.CommonMark)
local Mention = require(script.Parent.Mention)

type CharMatcher = CommonMark.CharMatcher
type InlineContentParser = CommonMark.InlineContentParser
type InlineContentParserFactory = CommonMark.InlineContentParserFactory
type InlineParserState = CommonMark.InlineParserState
type ParsedInline = CommonMark.ParsedInline

local byte = string.byte

local AT = byte("@")
local COLON = byte(":")
local GT = byte(">")
local LT = byte("<")

local DIGITS: CharMatcher = CommonMark.Text.AsciiMatcher.builder():range(byte("0"), byte("9")):build() :: any
local NAME_CHARACTERS: CharMatcher = CommonMark.Text.AsciiMatcher
	.builder()
	:range(byte("A"), byte("Z"))
	:range(byte("a"), byte("z"))
	:range(byte("0"), byte("9"))
	:c(byte("_"))
	:build() :: any

local MentionInlineParser = {}
MentionInlineParser.__index = MentionInlineParser

type MentionInlineParserFields = {
	tryParse: (self: MentionInlineParser, inlineParserState: InlineParserState) -> ParsedInline?,
}

export type MentionInlineParser = typeof(setmetatable({} :: MentionInlineParserFields, MentionInlineParser))

function MentionInlineParser.new(): InlineContentParser
	return (setmetatable({}, MentionInlineParser) :: any) :: InlineContentParser
end

-- Starts on the `<`.
function MentionInlineParser.tryParse(_self: MentionInlineParser, inlineParserState: InlineParserState): ParsedInline?
	local scanner = inlineParserState:scanner()
	scanner:next()
	if not scanner:nextChar(AT) then
		return CommonMark.Parser.Beta.ParsedInline.none()
	end

	local idStart = scanner:position()
	if scanner:match(DIGITS) == 0 then
		return CommonMark.Parser.Beta.ParsedInline.none()
	end
	local id = scanner:getSource(idStart, scanner:position()):getContent()

	local name: string? = nil
	if scanner:nextChar(COLON) then
		local nameStart = scanner:position()
		if scanner:match(NAME_CHARACTERS) == 0 then
			return CommonMark.Parser.Beta.ParsedInline.none()
		end
		name = scanner:getSource(nameStart, scanner:position()):getContent()
	end

	if not scanner:nextChar(GT) then
		return CommonMark.Parser.Beta.ParsedInline.none()
	end
	return CommonMark.Parser.Beta.ParsedInline.of(Mention(id, name), scanner:position())
end

local Factory = {}
Factory.__index = Factory

function Factory.new(): InlineContentParserFactory
	return setmetatable({}, Factory) :: any
end

function Factory.getTriggerCharacters(_self: InlineContentParserFactory): { [number]: true }
	return { [LT] = true }
end

function Factory.create(_self: InlineContentParserFactory): InlineContentParser
	return MentionInlineParser.new()
end

MentionInlineParser.Factory = Factory

return MentionInlineParser
