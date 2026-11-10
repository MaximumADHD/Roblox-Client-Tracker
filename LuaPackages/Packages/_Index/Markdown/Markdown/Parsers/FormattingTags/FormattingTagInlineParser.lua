-- The Roblox profile's formatting tag parser (ROACTCHAT-2959), triggered on `<`. With inline HTML
-- off, nothing else reads these tags, so it reads exactly `<b>`, `<i>`, `<u>`, `<s>` and their
-- closing forms as FormattingTagText, which FormattingTagPostProcessor pairs. On failure it returns
-- none without restoring the scanner, as MentionInlineParser does, and the `<` is text.

local Root = script:FindFirstAncestor("Markdown")
local Packages = Root.Parent
local CommonMark = require(Packages.CommonMark)
local FormattingTag = require(script.Parent.FormattingTag)

type InlineContentParser = CommonMark.InlineContentParser
type InlineContentParserFactory = CommonMark.InlineContentParserFactory
type InlineParserState = CommonMark.InlineParserState
type ParsedInline = CommonMark.ParsedInline

local byte = string.byte

local GT = byte(">")
local LT = byte("<")
local SLASH = byte("/")

local TAG_NAMES: { [number]: true } = {
	[byte("b")] = true,
	[byte("i")] = true,
	[byte("u")] = true,
	[byte("s")] = true,
}

local FormattingTagInlineParser = {}
FormattingTagInlineParser.__index = FormattingTagInlineParser

type FormattingTagInlineParserFields = {
	tryParse: (self: FormattingTagInlineParser, inlineParserState: InlineParserState) -> ParsedInline?,
}

export type FormattingTagInlineParser = typeof(setmetatable(
	{} :: FormattingTagInlineParserFields,
	FormattingTagInlineParser
))

function FormattingTagInlineParser.new(): InlineContentParser
	return (setmetatable({}, FormattingTagInlineParser) :: any) :: InlineContentParser
end

-- Starts on the `<`.
function FormattingTagInlineParser.tryParse(
	_self: FormattingTagInlineParser,
	inlineParserState: InlineParserState
): ParsedInline?
	local scanner = inlineParserState:scanner()
	local start = scanner:position()
	scanner:next()
	scanner:nextChar(SLASH)
	if not TAG_NAMES[scanner:peek()] then
		return CommonMark.Parser.Beta.ParsedInline.none()
	end
	scanner:next()
	if not scanner:nextChar(GT) then
		return CommonMark.Parser.Beta.ParsedInline.none()
	end
	local literal = scanner:getSource(start, scanner:position()):getContent()
	return CommonMark.Parser.Beta.ParsedInline.of(FormattingTag.text(literal), scanner:position())
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
	return FormattingTagInlineParser.new()
end

FormattingTagInlineParser.Factory = Factory

return FormattingTagInlineParser
