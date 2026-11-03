-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/internal/LinkReferenceDefinitionParser.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local Escaping = require(Root.internal.util.Escaping)
local LinkScanner = require(Root.internal.util.LinkScanner)
local Nodes = require(Root.node.Nodes)
local Position = require(Root.parser.beta.Position)
local Scanner = require(Root.parser.beta.Scanner)
local SourceLine = require(Root.parser.SourceLine)
local SourceLines = require(Root.parser.SourceLines)
local SourceSpan = require(Root.node.SourceSpan)

type LinkReferenceDefinition = Nodes.LinkReferenceDefinition
type Position = Position.Position
type Scanner = Scanner.Scanner
type SourceLine = SourceLine.SourceLine
type SourceLines = SourceLines.SourceLines
type SourceSpan = SourceSpan.SourceSpan

local byte, gsub, sub = string.byte, string.gsub, string.sub

local NUL = 0x00
local CLOSE_BRACKET = byte("]")
local CLOSE_PAREN = byte(")")
local COLON = byte(":")
local DOUBLE_QUOTE = byte('"')
local LESS_THAN = byte("<")
local OPEN_BRACKET = byte("[")
local OPEN_PAREN = byte("(")
local SINGLE_QUOTE = byte("'")

-- Parser for link reference definitions at the beginning of a paragraph.
--
-- See https://spec.commonmark.org/0.31.2/#link-reference-definitions
local LinkReferenceDefinitionParser = {}
LinkReferenceDefinitionParser.__index = LinkReferenceDefinitionParser

-- PORT NOTE: the nested enum State is defined here, above its first use in new, rather than at
-- the end of the class.
export type State = "START_DEFINITION" | "LABEL" | "DESTINATION" | "START_TITLE" | "TITLE" | "PARAGRAPH"

LinkReferenceDefinitionParser.State = table.freeze({
	-- Looking for the start of a definition, i.e. `[`
	START_DEFINITION = "START_DEFINITION" :: "START_DEFINITION",
	-- Parsing the label, i.e. `foo` within `[foo]`
	LABEL = "LABEL" :: "LABEL",
	-- Parsing the destination, i.e. `/url` in `[foo]: /url`
	DESTINATION = "DESTINATION" :: "DESTINATION",
	-- Looking for the start of a title, i.e. the first `"` in `[foo]: /url "title"`
	START_TITLE = "START_TITLE" :: "START_TITLE",
	-- Parsing the content of the title, i.e. `title` in `[foo]: /url "title"`
	TITLE = "TITLE" :: "TITLE",

	-- End state, no matter what kind of lines we add, they won't be references
	PARAGRAPH = "PARAGRAPH" :: "PARAGRAPH",
})

local State = LinkReferenceDefinitionParser.State

-- PORT NOTE: the label and title StringBuilders are parts arrays kept on the instance, so they
-- are appended with table.insert rather than a local `n`. Methods that append read the array into
-- a local (`label`, `title`) first, so the analyzer sees it as non-nil.
type LinkReferenceDefinitionParserFields = {
	_state: State,
	_paragraphLines: { SourceLine },
	_definitions: { LinkReferenceDefinition },
	_sourceSpans: { SourceSpan },
	_label: { string }?,
	_destination: string?,
	_titleDelimiter: number,
	_title: { string }?,
	_referenceValid: boolean,
	parse: (self: LinkReferenceDefinitionParser, line: SourceLine) -> (),
	addSourceSpan: (self: LinkReferenceDefinitionParser, sourceSpan: SourceSpan) -> (),
	getParagraphLines: (self: LinkReferenceDefinitionParser) -> SourceLines,
	getParagraphSourceSpans: (self: LinkReferenceDefinitionParser) -> { SourceSpan },
	getDefinitions: (self: LinkReferenceDefinitionParser) -> { LinkReferenceDefinition },
	getState: (self: LinkReferenceDefinitionParser) -> State,
	removeLines: (self: LinkReferenceDefinitionParser, lines: number) -> { SourceSpan },
	startDefinition: (self: LinkReferenceDefinitionParser, scanner: Scanner) -> boolean,
	label: (self: LinkReferenceDefinitionParser, scanner: Scanner) -> boolean,
	destination: (self: LinkReferenceDefinitionParser, scanner: Scanner) -> boolean,
	startTitle: (self: LinkReferenceDefinitionParser, scanner: Scanner) -> boolean,
	title: (self: LinkReferenceDefinitionParser, scanner: Scanner) -> boolean,
	finishReference: (self: LinkReferenceDefinitionParser) -> (),
}

export type LinkReferenceDefinitionParser = typeof(setmetatable(
	{} :: LinkReferenceDefinitionParserFields,
	LinkReferenceDefinitionParser
))

-- PORT NOTE: the optional definitionsEnabled isn't in commonmark-java (see
-- Parser.Builder.linkReferenceDefinitions). false starts in PARAGRAPH, so every line is paragraph
-- text; nil or true is Java's behavior.
function LinkReferenceDefinitionParser.new(definitionsEnabled: boolean?): LinkReferenceDefinitionParser
	return setmetatable({
		_state = if definitionsEnabled == false then State.PARAGRAPH else State.START_DEFINITION,
		_paragraphLines = {},
		_definitions = {},
		_sourceSpans = {},
		_label = nil,
		_destination = nil,
		_titleDelimiter = NUL,
		_title = nil,
		_referenceValid = false,
	}, LinkReferenceDefinitionParser) :: any
end

function LinkReferenceDefinitionParser.parse(self: LinkReferenceDefinitionParser, line: SourceLine)
	table.insert(self._paragraphLines, line)
	if self._state == State.PARAGRAPH then
		-- We're in a paragraph now. Link reference definitions can only appear at the
		-- beginning, so once we're in a paragraph, there's no going back.
		return
	end

	local scanner = Scanner.of(SourceLines.of(line))
	while scanner:hasNext() do
		local success: boolean
		-- PORT NOTE: the switch reads the state field once into a local for the if/elseif chain.
		local state = self._state
		if state == State.START_DEFINITION then
			success = self:startDefinition(scanner)
		elseif state == State.LABEL then
			success = self:label(scanner)
		elseif state == State.DESTINATION then
			success = self:destination(scanner)
		elseif state == State.START_TITLE then
			success = self:startTitle(scanner)
		elseif state == State.TITLE then
			success = self:title(scanner)
		else
			error(`Unknown parsing state: {state}`)
		end
		-- Parsing failed, which means we fall back to treating text as a paragraph.
		if not success then
			self._state = State.PARAGRAPH
			-- If parsing of the title part failed, we still have a valid reference that we can
			-- add, and we need to do it before the source span for this line is added.
			self:finishReference()
			return
		end
	end
end

function LinkReferenceDefinitionParser.addSourceSpan(self: LinkReferenceDefinitionParser, sourceSpan: SourceSpan)
	table.insert(self._sourceSpans, sourceSpan)
end

-- Returns the lines that are normal paragraph content, without newlines
function LinkReferenceDefinitionParser.getParagraphLines(self: LinkReferenceDefinitionParser): SourceLines
	return SourceLines.ofList(self._paragraphLines)
end

function LinkReferenceDefinitionParser.getParagraphSourceSpans(self: LinkReferenceDefinitionParser): { SourceSpan }
	return self._sourceSpans
end

function LinkReferenceDefinitionParser.getDefinitions(self: LinkReferenceDefinitionParser): { LinkReferenceDefinition }
	self:finishReference()
	return self._definitions
end

function LinkReferenceDefinitionParser.getState(self: LinkReferenceDefinitionParser): State
	return self._state
end

local function removeLast<T>(n: number, list: { T })
	if n >= #list then
		table.clear(list)
	else
		for _ = 0, n - 1 do
			table.remove(list)
		end
	end
end

function LinkReferenceDefinitionParser.removeLines(self: LinkReferenceDefinitionParser, lines: number): { SourceSpan }
	local sourceSpans = self._sourceSpans
	local removedSpans =
		table.freeze(table.move(sourceSpans, math.max(#sourceSpans - lines, 0) + 1, #sourceSpans, 1, {}))
	removeLast(lines, self._paragraphLines)
	removeLast(lines, sourceSpans)
	return removedSpans
end

function LinkReferenceDefinitionParser.startDefinition(self: LinkReferenceDefinitionParser, scanner: Scanner): boolean
	-- Finish any outstanding references now. We don't do this earlier because we need
	-- addSourceSpan to have been called before we do it.
	self:finishReference()

	scanner:whitespace()
	if not scanner:nextChar(OPEN_BRACKET) then
		return false
	end

	self._state = State.LABEL
	local label = {}
	self._label = label

	if not scanner:hasNext() then
		table.insert(label, "\n")
	end
	return true
end

-- PORT NOTE: Java's label.length() counts UTF-16 units; this counts code points as the bytes
-- outside 0x80-0xBF (porting-from-java.md, Strings and characters). The helper has no Java
-- counterpart and sits above its only use, in label.
local function codePointCount(s: string): number
	local _, count = gsub(s, "[^\128-\191]", "")
	return count
end

function LinkReferenceDefinitionParser.label(self: LinkReferenceDefinitionParser, scanner: Scanner): boolean
	local start: Position = scanner:position()
	if not LinkScanner.scanLinkLabelContent(scanner) then
		return false
	end

	local label = self._label :: { string }
	table.insert(label, scanner:getSource(start, scanner:position()):getContent())

	if not scanner:hasNext() then
		-- label might continue on next line
		table.insert(label, "\n")
		return true
	elseif scanner:nextChar(CLOSE_BRACKET) then
		-- end of label
		if not scanner:nextChar(COLON) then
			return false
		end

		-- PORT NOTE: the parts array is joined once into labelString, which stands in for both
		-- label.length() and label.toString() below.
		local labelString = table.concat(label)
		-- spec: A link label can have at most 999 characters inside the square brackets.
		if codePointCount(labelString) > 999 then
			return false
		end

		local normalizedLabel = Escaping.normalizeLabelContent(labelString)
		if normalizedLabel == "" then
			return false
		end

		self._state = State.DESTINATION

		scanner:whitespace()
		return true
	else
		return false
	end
end

function LinkReferenceDefinitionParser.destination(self: LinkReferenceDefinitionParser, scanner: Scanner): boolean
	scanner:whitespace()
	local start: Position = scanner:position()
	if not LinkScanner.scanLinkDestination(scanner) then
		return false
	end

	local rawDestination = scanner:getSource(start, scanner:position()):getContent()
	self._destination = if byte(rawDestination, 1) == LESS_THAN
		then sub(rawDestination, 2, #rawDestination - 1)
		else rawDestination

	local whitespace = scanner:whitespace()
	if not scanner:hasNext() then
		-- Destination was at end of line, so this is a valid reference for sure (and maybe a
		-- title). If not at end of line, wait for title to be valid first.
		self._referenceValid = true
		table.clear(self._paragraphLines)
	elseif whitespace == 0 then
		-- spec: The title must be separated from the link destination by whitespace
		return false
	end

	self._state = State.START_TITLE
	return true
end

function LinkReferenceDefinitionParser.startTitle(self: LinkReferenceDefinitionParser, scanner: Scanner): boolean
	scanner:whitespace()
	if not scanner:hasNext() then
		self._state = State.START_DEFINITION
		return true
	end

	self._titleDelimiter = NUL
	local c = scanner:peek()
	if c == DOUBLE_QUOTE or c == SINGLE_QUOTE then
		self._titleDelimiter = c
	elseif c == OPEN_PAREN then
		self._titleDelimiter = CLOSE_PAREN
	end

	if self._titleDelimiter ~= NUL then
		self._state = State.TITLE
		local title = {}
		self._title = title
		scanner:next()
		if not scanner:hasNext() then
			table.insert(title, "\n")
		end
	else
		-- There might be another reference instead, try that for the same character.
		self._state = State.START_DEFINITION
	end
	return true
end

function LinkReferenceDefinitionParser.title(self: LinkReferenceDefinitionParser, scanner: Scanner): boolean
	local start: Position = scanner:position()
	if not LinkScanner.scanLinkTitleContent(scanner, self._titleDelimiter) then
		-- Invalid title, stop. Title collected so far must not be used.
		self._title = nil
		return false
	end

	local title = self._title :: { string }
	table.insert(title, scanner:getSource(start, scanner:position()):getContent())

	if not scanner:hasNext() then
		-- Title ran until the end of line, so continue on next line (until we find the
		-- delimiter)
		table.insert(title, "\n")
		return true
	end

	-- Skip delimiter character
	scanner:next()
	scanner:whitespace()
	if scanner:hasNext() then
		-- spec: No further non-whitespace characters may occur on the line.
		-- Title collected so far must not be used.
		self._title = nil
		return false
	end
	self._referenceValid = true
	table.clear(self._paragraphLines)

	-- See if there's another definition.
	self._state = State.START_DEFINITION
	return true
end

function LinkReferenceDefinitionParser.finishReference(self: LinkReferenceDefinitionParser)
	if not self._referenceValid then
		return
	end

	local d = Escaping.unescapeString(self._destination :: string)
	local t = if self._title ~= nil then Escaping.unescapeString(table.concat(self._title)) else nil
	local definition = Nodes.LinkReferenceDefinition(table.concat(self._label :: { string }), d, t)
	definition:setSourceSpans(self._sourceSpans)
	table.clear(self._sourceSpans)
	table.insert(self._definitions, definition)

	self._label = nil
	self._referenceValid = false
	self._destination = nil
	self._title = nil
end

return LinkReferenceDefinitionParser
