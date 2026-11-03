-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/internal/inline/HtmlInlineParser.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local AsciiMatcher = require(Root.text.AsciiMatcher)
local CharMatcher = require(Root.text.CharMatcher)
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

local LT = byte("<")
local GT = byte(">")
local SLASH = byte("/")
local QUESTION = byte("?")
local BANG = byte("!")
local MINUS = byte("-")
local OPEN_BRACKET = byte("[")
local CLOSE_BRACKET = byte("]")
local EQUALS = byte("=")
local SINGLE_QUOTE = byte("'")
local DOUBLE_QUOTE = byte('"')

local HtmlInlineParser = {}
HtmlInlineParser.__index = HtmlInlineParser

type HtmlInlineParserFields = {
	-- A scan that ran to the end of the input without finding the terminator it was looking for
	-- proves that no later scan in the same inline snippet can find it either (inline parsing only
	-- moves forward). Remembering that stops each `<` from scanning the rest of the input again,
	-- which would be quadratic for input like `<!--` repeated many times. A parser is created for
	-- each inline snippet, so these don't need to be reset.
	_noProcessingInstructionEnd: boolean,
	_noCommentEnd: boolean,
	_noCdataEnd: boolean,
	_noDeclarationEnd: boolean,
	tryParse: (self: HtmlInlineParser, inlineParserState: InlineParserState) -> ParsedInline?,
	tryProcessingInstruction: (self: HtmlInlineParser, scanner: Scanner) -> boolean,
	tryComment: (self: HtmlInlineParser, scanner: Scanner) -> boolean,
	tryCdata: (self: HtmlInlineParser, scanner: Scanner) -> boolean,
	tryDeclaration: (self: HtmlInlineParser, scanner: Scanner) -> boolean,
}

export type HtmlInlineParser = typeof(setmetatable({} :: HtmlInlineParserFields, HtmlInlineParser))

local asciiLetter: AsciiMatcher = AsciiMatcher.builder():range(byte("A"), byte("Z")):range(byte("a"), byte("z")):build()

-- spec: A tag name consists of an ASCII letter followed by zero or more ASCII letters, digits,
-- or hyphens (-).
local tagNameStart: AsciiMatcher = asciiLetter
local tagNameContinue: CharMatcher = tagNameStart:newBuilder():range(byte("0"), byte("9")):c(MINUS):build() :: any

-- spec: An attribute name consists of an ASCII letter, _, or :, followed by zero or more ASCII
-- letters, digits,
-- _, ., :, or -. (Note: This is the XML specification restricted to ASCII. HTML5 is laxer.)
local attributeStart: AsciiMatcher = asciiLetter:newBuilder():c(byte("_")):c(byte(":")):build()
local attributeContinue: CharMatcher =
	attributeStart:newBuilder():range(byte("0"), byte("9")):c(byte(".")):c(MINUS):build() :: any
-- spec: An unquoted attribute value is a nonempty string of characters not including
-- whitespace, ", ', =, <, >, or `.
local attributeValueEnd: CharMatcher = AsciiMatcher.builder()
	:c(byte(" "))
	:c(byte("\t"))
	:c(byte("\n"))
	:c(0x0B)
	:c(0x0C)
	:c(byte("\r"))
	:c(DOUBLE_QUOTE)
	:c(SINGLE_QUOTE)
	:c(EQUALS)
	:c(LT)
	:c(GT)
	:c(byte("`"))
	:build() :: any

local function htmlInline(start: Position, scanner: Scanner): ParsedInline?
	local text = scanner:getSource(start, scanner:position()):getContent()
	local node = Nodes.HtmlInline()
	node.literal = text
	return ParsedInline.of(node, scanner:position())
end

-- PORT NOTE: the unquoted attribute value's terminator set is a parameter (Java reads the
-- attributeValueEnd static), so HtmlBlockParser's type 7 opener can pass the block regex's set.
local function tryOpenTag(scanner: Scanner, valueEnd: CharMatcher): boolean
	-- spec: An open tag consists of a < character, a tag name, zero or more attributes,
	-- optional whitespace, an optional / character, and a > character.
	scanner:next()
	scanner:match(tagNameContinue)
	local whitespace = scanner:whitespace() >= 1
	-- spec: An attribute consists of whitespace, an attribute name, and an optional attribute
	-- value specification.
	while whitespace and scanner:match(attributeStart :: any) >= 1 do
		scanner:match(attributeContinue)
		-- spec: An attribute value specification consists of optional whitespace, a =
		-- character, optional whitespace, and an attribute value.
		whitespace = scanner:whitespace() >= 1
		if scanner:nextChar(EQUALS) then
			scanner:whitespace()
			local valueStart = scanner:peek()
			if valueStart == SINGLE_QUOTE then
				scanner:next()
				if scanner:findChar(SINGLE_QUOTE) < 0 then
					return false
				end
				scanner:next()
			elseif valueStart == DOUBLE_QUOTE then
				scanner:next()
				if scanner:findChar(DOUBLE_QUOTE) < 0 then
					return false
				end
				scanner:next()
			else
				if scanner:findMatcher(valueEnd) <= 0 then
					return false
				end
			end

			-- Whitespace is required between attributes
			whitespace = scanner:whitespace() >= 1
		end
	end

	scanner:nextChar(SLASH)
	return scanner:nextChar(GT)
end

local function tryClosingTag(scanner: Scanner): boolean
	-- spec: A closing tag consists of the string </, a tag name, optional whitespace, and the
	-- character >.
	scanner:next()
	if scanner:match(tagNameStart :: any) >= 1 then
		scanner:match(tagNameContinue)
		scanner:whitespace()
		return scanner:nextChar(GT)
	end
	return false
end

-- PORT NOTE: Java's implicit default constructor; the four `no...End` fields start false as
-- Java's booleans do.
function HtmlInlineParser.new(): InlineContentParser
	local self = {
		_noProcessingInstructionEnd = false,
		_noCommentEnd = false,
		_noCdataEnd = false,
		_noDeclarationEnd = false,
	}
	return (setmetatable(self, HtmlInlineParser) :: any) :: InlineContentParser
end

function HtmlInlineParser.tryParse(self: HtmlInlineParser, inlineParserState: InlineParserState): ParsedInline?
	local scanner = inlineParserState:scanner()
	local start = scanner:position()
	-- Skip over `<`
	scanner:next()

	local c = scanner:peek()
	if tagNameStart:matches(c) then
		if tryOpenTag(scanner, attributeValueEnd) then
			return htmlInline(start, scanner)
		end
	elseif c == SLASH then
		if tryClosingTag(scanner) then
			return htmlInline(start, scanner)
		end
	elseif c == QUESTION then
		if self:tryProcessingInstruction(scanner) then
			return htmlInline(start, scanner)
		end
	elseif c == BANG then
		-- comment, declaration or CDATA
		scanner:next()
		c = scanner:peek()
		if c == MINUS then
			if self:tryComment(scanner) then
				return htmlInline(start, scanner)
			end
		elseif c == OPEN_BRACKET then
			if self:tryCdata(scanner) then
				return htmlInline(start, scanner)
			end
		elseif asciiLetter:matches(c) then
			if self:tryDeclaration(scanner) then
				return htmlInline(start, scanner)
			end
		end
	end

	return ParsedInline.none()
end

function HtmlInlineParser.tryProcessingInstruction(self: HtmlInlineParser, scanner: Scanner): boolean
	-- spec: A processing instruction consists of the string <?, a string of characters not
	-- including the string ?>, and the string ?>.
	if self._noProcessingInstructionEnd then
		return false
	end
	scanner:next()
	-- PORT NOTE: Java's `while ((found = scanner.find('?')) > 0)` assigns in the condition; here
	-- the find runs at the top of a `while true` loop that breaks when found <= 0.
	local found
	while true do
		found = scanner:findChar(QUESTION)
		if found <= 0 then
			break
		end
		scanner:next()
		if scanner:nextChar(GT) then
			return true
		end
	end
	-- The loop also ends when a `?` is found directly at the current position (`found == 0`),
	-- which is not the end of the input, so only remember the miss when the scan really did
	-- reach the end.
	self._noProcessingInstructionEnd = found < 0
	return false
end

function HtmlInlineParser.tryComment(self: HtmlInlineParser, scanner: Scanner): boolean
	-- spec: An [HTML comment](@) consists of `<!-->`, `<!--->`, or  `<!--`, a string of
	-- characters not including the string `-->`, and `-->` (see the [HTML
	-- spec](https://html.spec.whatwg.org/multipage/parsing.html#markup-declaration-open-state)).

	if self._noCommentEnd then
		-- Both `<!-->` and `<!--->` contain `-->` themselves, so this can't skip a valid short
		-- comment either.
		return false
	end

	-- Skip first `-`
	scanner:next()
	if not scanner:nextChar(MINUS) then
		return false
	end

	if scanner:nextChar(GT) or scanner:nextString("->") then
		return true
	end

	while scanner:findChar(MINUS) >= 0 do
		if scanner:nextString("-->") then
			return true
		else
			scanner:next()
		end
	end

	-- The loop above only ends when the scan reached the end of the input.
	self._noCommentEnd = true
	return false
end

function HtmlInlineParser.tryCdata(self: HtmlInlineParser, scanner: Scanner): boolean
	-- spec: A CDATA section consists of the string <![CDATA[, a string of characters not
	-- including the string ]]>, and the string ]]>.

	if self._noCdataEnd then
		return false
	end

	-- Skip `[`
	scanner:next()

	if scanner:nextString("CDATA[") then
		while scanner:findChar(CLOSE_BRACKET) >= 0 do
			if scanner:nextString("]]>") then
				return true
			else
				scanner:next()
			end
		end
		-- The loop above only ends when the scan reached the end of the input.
		self._noCdataEnd = true
	end

	return false
end

function HtmlInlineParser.tryDeclaration(self: HtmlInlineParser, scanner: Scanner): boolean
	-- spec: A declaration consists of the string <!, an ASCII letter, zero or more characters
	-- not including the character >, and the character >.
	if self._noDeclarationEnd then
		return false
	end
	scanner:match(asciiLetter :: any)
	if scanner:whitespace() <= 0 then
		return false
	end
	if scanner:findChar(GT) >= 0 then
		scanner:next()
		return true
	end
	-- `find` only returns a negative value when it reached the end of the input.
	self._noDeclarationEnd = true
	return false
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
	return HtmlInlineParser.new()
end

HtmlInlineParser.Factory = Factory

-- PORT NOTE: the private statics tryOpenTag and tryClosingTag are exported because
-- HtmlBlockParser's type 7 opener reuses them rather than translating Java's OPENTAG and CLOSETAG
-- regexes (porting-from-java.md, Regex → scanners).
HtmlInlineParser.tryOpenTag = tryOpenTag
HtmlInlineParser.tryClosingTag = tryClosingTag

return HtmlInlineParser
