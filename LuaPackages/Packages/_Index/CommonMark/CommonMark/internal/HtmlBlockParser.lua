-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/internal/HtmlBlockParser.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local AbstractBlockParser = require(Root.parser.block.AbstractBlockParser)
local AsciiMatcher = require(Root.text.AsciiMatcher)
local BlockContent = require(Root.internal.BlockContent)
local BlockContinue = require(Root.parser.block.BlockContinue)
local BlockParserFactory = require(Root.parser.block.BlockParserFactory)
local BlockStart = require(Root.parser.block.BlockStart)
local CharMatcher = require(Root.text.CharMatcher)
local HtmlInlineParser = require(Root.internal.inline.HtmlInlineParser)
local MatchedBlockParser = require(Root.parser.block.MatchedBlockParser)
local Nodes = require(Root.node.Nodes)
local ParserState = require(Root.parser.block.ParserState)
local Scanner = require(Root.parser.beta.Scanner)
local SourceLine = require(Root.parser.SourceLine)

type AbstractBlockParser = AbstractBlockParser.AbstractBlockParser
type AsciiMatcher = AsciiMatcher.AsciiMatcher
type BlockContent = BlockContent.BlockContent
type BlockContinue = BlockContinue.BlockContinue
type BlockParserFactory = BlockParserFactory.BlockParserFactory
type BlockStart = BlockStart.BlockStart
type CharMatcher = CharMatcher.CharMatcher
type HtmlBlock = Nodes.HtmlBlock
type MatchedBlockParser = MatchedBlockParser.MatchedBlockParser
type ParserState = ParserState.ParserState
type SourceLine = SourceLine.SourceLine

local byte, find, gsub, lower, sub = string.byte, string.find, string.gsub, string.lower, string.sub

local LT = byte("<")
local GT = byte(">")
local SLASH = byte("/")
local SPACE = byte(" ")
local TAB = byte("\t")
local NEWLINE = byte("\n")
local VERTICAL_TAB = 0x0B
local FORM_FEED = 0x0C
local CARRIAGE_RETURN = byte("\r")

-- PORT NOTE: Java's BLOCK_PATTERNS regexes are matcher functions (porting-from-java.md, Regex →
-- scanners), each under an `Upstream:` comment. An opener takes the line from its first non-space
-- character and answers Java's `find()` of the `^`-anchored pattern; a closer takes the whole line
-- and answers `find()` anywhere in it. The TAGNAME ... CLOSETAG string constants only built the
-- type 7 pattern, which reuses HtmlInlineParser's tag scanner instead, so they are gone.

-- Java's `\s` without UNICODE_CHARACTER_CLASS: [ \t\n\x0B\f\r].
local function isWhitespace(c: number?): boolean
	return c == SPACE or c == TAB or c == NEWLINE or c == VERTICAL_TAB or c == FORM_FEED or c == CARRIAGE_RETURN
end

-- Java's `$` without MULTILINE: the end of the input, or just before a line terminator (\n, \r,
-- \r\n, U+0085, U+2028 or U+2029) that ends it, but not between \r and \n.
local FINAL_LINE_TERMINATORS: { [string]: true } = {
	["\n"] = true,
	["\r"] = true,
	["\r\n"] = true,
	["\u{85}"] = true,
	["\u{2028}"] = true,
	["\u{2029}"] = true,
}

local function isDollar(s: string, index: number): boolean
	if index == #s then
		return true
	end
	if byte(s, index + 1) == NEWLINE and index > 0 and byte(s, index - 1 + 1) == CARRIAGE_RETURN then
		return false
	end
	return FINAL_LINE_TERMINATORS[sub(s, index + 1)] == true
end

-- The run of ASCII letters and digits at index, lowercased, and the index after it. Each name in
-- the type 1 and type 6 alternations is such a run, and every tail they allow (`\s`, `/`, `>`,
-- `$`) starts with something else, so a name matches only when it is the whole run.
local function nameAt(s: string, index: number): (string, number)
	local _, finish = find(s, "^[A-Za-z0-9]*", index + 1)
	-- finish is the 1-based index of the run's last byte, which is the 0-based index after it
	local after = finish :: number
	return lower(sub(s, index + 1, after)), after
end

local TYPE_1_NAMES: { [string]: true } = {
	script = true,
	pre = true,
	style = true,
	textarea = true,
}

-- Upstream: "^<(?:script|pre|style|textarea)(?:\\s|>|$)", Pattern.CASE_INSENSITIVE
local function isType1Opener(s: string): boolean
	if byte(s, 1) ~= LT then
		return false
	end
	local name, after = nameAt(s, 1)
	if not TYPE_1_NAMES[name] then
		return false
	end
	local c = byte(s, after + 1)
	return isWhitespace(c) or c == GT or isDollar(s, after)
end

-- Upstream: "</(?:script|pre|style|textarea)>", Pattern.CASE_INSENSITIVE
local function findType1Closer(line: string): boolean
	local lowered = lower(line)
	return find(lowered, "</script>", 1, true) ~= nil
		or find(lowered, "</pre>", 1, true) ~= nil
		or find(lowered, "</style>", 1, true) ~= nil
		or find(lowered, "</textarea>", 1, true) ~= nil
end

-- Upstream: "^<!--"
local function isType2Opener(s: string): boolean
	return sub(s, 1, 4) == "<!--"
end

-- Upstream: "-->"
local function findType2Closer(line: string): boolean
	return find(line, "-->", 1, true) ~= nil
end

-- Upstream: "^<[?]"
local function isType3Opener(s: string): boolean
	return sub(s, 1, 2) == "<?"
end

-- Upstream: "\\?>"
local function findType3Closer(line: string): boolean
	return find(line, "?>", 1, true) ~= nil
end

-- Upstream: "^<![A-Z]"
local function isType4Opener(s: string): boolean
	return find(s, "^<![A-Z]") ~= nil
end

-- Upstream: ">"
local function findType4Closer(line: string): boolean
	return find(line, ">", 1, true) ~= nil
end

-- Upstream: "^<!\\[CDATA\\["
local function isType5Opener(s: string): boolean
	return sub(s, 1, 9) == "<![CDATA["
end

-- Upstream: "\\]\\]>"
local function findType5Closer(line: string): boolean
	return find(line, "]]>", 1, true) ~= nil
end

local TYPE_6_NAMES: { [string]: true } = {}
for _, name in
	{
		"address",
		"article",
		"aside",
		"base",
		"basefont",
		"blockquote",
		"body",
		"caption",
		"center",
		"col",
		"colgroup",
		"dd",
		"details",
		"dialog",
		"dir",
		"div",
		"dl",
		"dt",
		"fieldset",
		"figcaption",
		"figure",
		"footer",
		"form",
		"frame",
		"frameset",
		"h1",
		"h2",
		"h3",
		"h4",
		"h5",
		"h6",
		"head",
		"header",
		"hr",
		"html",
		"iframe",
		"legend",
		"li",
		"link",
		"main",
		"menu",
		"menuitem",
		"nav",
		"noframes",
		"ol",
		"optgroup",
		"option",
		"p",
		"param",
		"search",
		"section",
		"summary",
		"table",
		"tbody",
		"td",
		"tfoot",
		"th",
		"thead",
		"title",
		"tr",
		"track",
		"ul",
	}
do
	TYPE_6_NAMES[name] = true
end

-- Upstream: "^</?(?:"
--         + "address|article|aside|"
--         + "base|basefont|blockquote|body|"
--         + "caption|center|col|colgroup|"
--         + "dd|details|dialog|dir|div|dl|dt|"
--         + "fieldset|figcaption|figure|footer|form|frame|frameset|"
--         + "h1|h2|h3|h4|h5|h6|head|header|hr|html|"
--         + "iframe|"
--         + "legend|li|link|"
--         + "main|menu|menuitem|"
--         + "nav|noframes|"
--         + "ol|optgroup|option|"
--         + "p|param|"
--         + "search|section|summary|"
--         + "table|tbody|td|tfoot|th|thead|title|tr|track|"
--         + "ul"
--         + ")(?:\\s|[/]?[>]|$)", Pattern.CASE_INSENSITIVE
local function isType6Opener(s: string): boolean
	if byte(s, 1) ~= LT then
		return false
	end
	local nameStart = if byte(s, 2) == SLASH then 2 else 1
	local name, after = nameAt(s, nameStart)
	if not TYPE_6_NAMES[name] then
		return false
	end
	local c = byte(s, after + 1)
	return isWhitespace(c) or c == GT or (c == SLASH and byte(s, after + 1 + 1) == GT) or isDollar(s, after)
end

local tagNameStart: CharMatcher =
	AsciiMatcher.builder():range(byte("A"), byte("Z")):range(byte("a"), byte("z")):build() :: any

-- Upstream: UNQUOTEDVALUE = "[^\"'=<>`\\x00-\\x20]+", whose complement ends the value
local unquotedValueEnd: CharMatcher = AsciiMatcher.builder():range(0x00, 0x20):anyOf("\"'=<>`"):build() :: any

-- Upstream: "^(?:" + OPENTAG + '|' + CLOSETAG + ")\\s*$", Pattern.CASE_INSENSITIVE, where
--     OPENTAG = "<" + TAGNAME + ATTRIBUTE + "*+" + "\\s*/?>"
--     CLOSETAG = "</" + TAGNAME + "\\s*[>]"
--     TAGNAME = "[A-Za-z][A-Za-z0-9-]*"
--     ATTRIBUTE = "(?:" + "\\s+" + ATTRIBUTENAME + ATTRIBUTEVALUESPEC + "?)"
--     ATTRIBUTENAME = "[a-zA-Z_:][a-zA-Z0-9:._-]*"
--     ATTRIBUTEVALUESPEC = "(?:" + "\\s*=" + "\\s*" + ATTRIBUTEVALUE + ")"
--     ATTRIBUTEVALUE = "(?:" + UNQUOTEDVALUE + "|" + SINGLEQUOTEDVALUE + "|" + DOUBLEQUOTEDVALUE + ")"
--     UNQUOTEDVALUE = "[^\"'=<>`\\x00-\\x20]+"
--     SINGLEQUOTEDVALUE = "'[^']*'"
--     DOUBLEQUOTEDVALUE = "\"[^\"]*\""
-- PORT NOTE: rather than translating the regex, this runs HtmlInlineParser's tryOpenTag and
-- tryClosingTag (porting-from-java.md, Regex → scanners), which take the same tag and attribute
-- grammar and, like the possessive `*+`, never give back an attribute. Adjustments so it accepts
-- exactly the regex's language:
-- - The Scanner covers only this line, so whitespace never runs onto the next line.
-- - tryOpenTag ends an unquoted value at unquotedValueEnd, the regex's set (every byte up to 0x20),
--   rather than the inline parser's set, which lets the other control bytes into the value.
-- - The Scanner reads NUL as the end of input, where the regex accepts NUL inside a quoted value,
--   so NUL is swapped for 0x01, which every part of the regex treats the same way. The parser
--   never passes a NUL (DocumentParser's prepareLine replaces it), so only direct calls see this.
-- - CASE_INSENSITIVE changes nothing: every letter class already holds both cases.
local function isType7Opener(s: string): boolean
	if byte(s, 1) ~= LT then
		return false
	end
	local input = if find(s, "\0", 1, true) ~= nil then (gsub(s, "%z", "\1")) else s
	local scanner = Scanner.new({ SourceLine.of(input, nil) }, 0, 1)
	local c = scanner:peek()
	local matched
	if tagNameStart:matches(c) then
		matched = HtmlInlineParser.tryOpenTag(scanner, unquotedValueEnd)
	elseif c == SLASH then
		matched = HtmlInlineParser.tryClosingTag(scanner)
	else
		matched = false
	end
	if not matched then
		return false
	end
	scanner:whitespace()
	return isDollar(input, scanner:position().index)
end

type BlockPatterns = {
	opener: (s: string) -> boolean,
	closer: ((line: string) -> boolean)?,
}

-- PORT NOTE: each {opener, closer} Pattern pair is a record, and the unused type 0 row is dropped,
-- so the table is indexed by the block type directly.
local BLOCK_PATTERNS: { BlockPatterns } = {
	{ opener = isType1Opener, closer = findType1Closer },
	{ opener = isType2Opener, closer = findType2Closer },
	{ opener = isType3Opener, closer = findType3Closer },
	{ opener = isType4Opener, closer = findType4Closer },
	{ opener = isType5Opener, closer = findType5Closer },
	{
		opener = isType6Opener,
		closer = nil, -- terminated by blank line
	},
	{
		opener = isType7Opener,
		closer = nil, -- terminated by blank line
	},
}

local HtmlBlockParser = setmetatable({}, { __index = AbstractBlockParser })
HtmlBlockParser.__index = HtmlBlockParser

type HtmlBlockParserFields = {
	_block: HtmlBlock,
	_closingPattern: ((line: string) -> boolean)?,
	_finished: boolean,
	_content: BlockContent?,
}

export type HtmlBlockParser = AbstractBlockParser & HtmlBlockParserFields

function HtmlBlockParser.new(closingPattern: ((line: string) -> boolean)?): HtmlBlockParser
	return setmetatable({
		_block = Nodes.HtmlBlock(),
		_closingPattern = closingPattern,
		_finished = false,
		_content = BlockContent.new(),
	}, HtmlBlockParser) :: any
end

function HtmlBlockParser.getBlock(self: HtmlBlockParser): HtmlBlock
	return self._block
end

function HtmlBlockParser.tryContinue(self: HtmlBlockParser, state: ParserState): BlockContinue?
	if self._finished then
		return BlockContinue.none()
	end

	-- Blank line ends type 6 and type 7 blocks
	if state:isBlank() and self._closingPattern == nil then
		return BlockContinue.none()
	else
		return BlockContinue.atIndex(state:getIndex())
	end
end

-- PORT NOTE: content is cast to non-nil, as Java dereferences it unchecked: DocumentParser never
-- adds a line after closeBlock.
function HtmlBlockParser.addLine(self: HtmlBlockParser, line: SourceLine)
	(self._content :: BlockContent):add(line:getContent())

	local closingPattern = self._closingPattern
	if closingPattern ~= nil and closingPattern(line:getContent()) then
		self._finished = true
	end
end

function HtmlBlockParser.closeBlock(self: HtmlBlockParser)
	self._block.literal = (self._content :: BlockContent):getString()
	self._content = nil
end

-- PORT NOTE: Factory implements BlockParserFactory directly, because
-- AbstractBlockParserFactory is dropped (ROACTCHAT-2833).
local Factory = {}
Factory.__index = Factory

function Factory.new(): BlockParserFactory
	return setmetatable({}, Factory) :: any
end

function Factory.tryStart(
	_self: BlockParserFactory,
	state: ParserState,
	matchedBlockParser: MatchedBlockParser
): BlockStart?
	local nextNonSpace = state:getNextNonSpaceIndex()
	local line = state:getLine():getContent()

	if state:getIndent() < 4 and byte(line, nextNonSpace + 1) == LT then
		for blockType = 1, 7 do
			-- Type 7 can not interrupt a paragraph (not even a lazy one)
			if
				blockType == 7
				and (
					matchedBlockParser:getMatchedBlockParser():getBlock().kind == "Paragraph"
					or state:getActiveBlockParser():canHaveLazyContinuationLines()
				)
			then
				continue
			end
			local opener = BLOCK_PATTERNS[blockType].opener
			local closer = BLOCK_PATTERNS[blockType].closer
			local matches = opener(sub(line, nextNonSpace + 1))
			if matches then
				return BlockStart.of(HtmlBlockParser.new(closer)):atIndex(state:getIndex())
			end
		end
	end
	return BlockStart.none()
end

HtmlBlockParser.Factory = Factory

-- PORT NOTE: test-only access to the BLOCK_PATTERNS regex replacements, so they can be checked
-- against the upstream patterns' edge cases.
HtmlBlockParser._BLOCK_PATTERNS = BLOCK_PATTERNS

return HtmlBlockParser
