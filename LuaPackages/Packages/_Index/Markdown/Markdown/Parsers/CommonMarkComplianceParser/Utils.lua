--!strict
--[[
	Utility functions for Markdown parsing, primarily for handling emphasis delimiters
	according to CommonMark specification.

	See https://spec.commonmark.org/0.31.2/#emphasis-and-strong-emphasis for the full details.
	The following rules are copied from the spec and define the core logic for handling emphasis and strong emphasis.

	1. A single * character can open emphasis iff (if and only if) it is part of a left-flanking delimiter run.
	2. A single _ character can open emphasis iff it is part of a left-flanking delimiter run and either (a) not part of a right-flanking delimiter run or (b) part of a right-flanking delimiter run preceded by a Unicode punctuation character.
	3. A single * character can close emphasis iff it is part of a right-flanking delimiter run.
	4. A single _ character can close emphasis iff it is part of a right-flanking delimiter run and either (a) not part of a left-flanking delimiter run or (b) part of a left-flanking delimiter run followed by a Unicode punctuation character.
	5. A double ** can open strong emphasis iff it is part of a left-flanking delimiter run.
	6. A double __ can open strong emphasis iff it is part of a left-flanking delimiter run and either (a) not part of a right-flanking delimiter run or (b) part of a right-flanking delimiter run preceded by a Unicode punctuation character.
	7. A double ** can close strong emphasis iff it is part of a right-flanking delimiter run.
	8. A double __ can close strong emphasis iff it is part of a right-flanking delimiter run and either (a) not part of a left-flanking delimiter run or (b) part of a left-flanking delimiter run followed by a Unicode punctuation character.
	9. Emphasis begins with a delimiter that can open emphasis and ends with a delimiter that can close emphasis, and that uses the same character (_ or *) as the opening delimiter. The opening and closing delimiters must belong to separate delimiter runs. If one of the delimiters can both open and close emphasis, then the sum of the lengths of the delimiter runs containing the opening and closing delimiters must not be a multiple of 3 unless both lengths are multiples of 3.
	10. Strong emphasis begins with a delimiter that can open strong emphasis and ends with a delimiter that can close strong emphasis, and that uses the same character (_ or *) as the opening delimiter. The opening and closing delimiters must belong to separate delimiter runs. If one of the delimiters can both open and close strong emphasis, then the sum of the lengths of the delimiter runs containing the opening and closing delimiters must not be a multiple of 3 unless both lengths are multiples of 3.
	11. A literal * character cannot occur at the beginning or end of *-delimited emphasis or **-delimited strong emphasis, unless it is backslash-escaped.
	12. A literal _ character cannot occur at the beginning or end of _-delimited emphasis or __-delimited strong emphasis, unless it is backslash-escaped.

	Where rules 1–12 above are compatible with multiple parsings, the following principles resolve ambiguity:

	13. The number of nestings should be minimized. Thus, for example, an interpretation <strong>...</strong> is always preferred to <em><em>...</em></em>.
	14. An interpretation <em><strong>...</strong></em> is always preferred to <strong><em>...</em></strong>.
	15. When two potential emphasis or strong emphasis spans overlap, so that the second begins before the first ends and ends after the first ends, the first takes precedence. Thus, for example, *foo _bar* baz_ is parsed as <em>foo _bar</em> baz_ rather than *foo <em>bar* baz</em>.
	16. When there are two potential emphasis or strong emphasis spans with the same closing delimiter, the shorter one (the one that opens later) takes precedence. Thus, for example, **foo **bar baz** is parsed as **foo <strong>bar baz</strong> rather than <strong>foo **bar baz</strong>.
	17. Inline code spans, links, images, and HTML tags group more tightly than emphasis. So, when there is a choice between an interpretation that contains one of these elements and one that does not, the former always wins. Thus, for example, *[foo*](bar) is parsed as *<a href="bar">foo*</a> rather than as <em>[foo</em>](bar).

	Definitions:
	A Unicode whitespace character is a character in the Unicode Zs general category, or a tab (U+0009), line feed (U+000A), form feed (U+000C), or carriage return (U+000D).
	Unicode whitespace is a sequence of one or more Unicode whitespace characters.
	An ASCII punctuation character is !, ", #, $, %, &, ', (, ), *, +, ,, -, ., / (U+0021–2F), :, ;, <, =, >, ?, @ (U+003A–0040), [, \, ], ^, _, ` (U+005B–0060), {, |, }, or ~ (U+007B–007E).
	A Unicode punctuation character is a character in the Unicode P (puncuation) or S (symbol) general categories.
]]

local Root = script:FindFirstAncestor("Markdown")
local Constants = require(Root.Parsers.Constants)
local Types = require(Root.Types)

type Node = Types.Node
type Token = Types.Token
type TokenContext = Types.TokenContext
type DelimiterName = Types.DelimiterName
type DelimiterChar = Types.DelimiterChar
type DelimiterInfo = Types.DelimiterInfo
type DelimiterMatch = Types.DelimiterMatch
type Delimiter = Types.Delimiter
type DelimiterRun = Types.DelimiterRun
type DelimiterToken = Types.DelimiterToken

local DELIMITER_MAP: { [string]: DelimiterInfo } = {
	BOLD = { char = "*", length = 1 },
	BOLD_2 = { char = "*", length = 2 },
	ITALIC = { char = "_", length = 1 },
	ITALIC_2 = { char = "_", length = 2 },
	STRIKE = { char = "~", length = 1 },
	INLINE_CODE = { char = "`", length = 1 },
}

local module = {}

function module.getDelimiterInfo(tokenName: string): DelimiterInfo?
	return DELIMITER_MAP[tokenName]
end

function module.causesLineBreak(token: Token): boolean
	return token.name ~= "TEXT" or string.find(token.text, "\n", 0, true) ~= nil
end

function module.getTokenNameFromCharAndLength(char: DelimiterChar, length: number): DelimiterName
	if char == "`" then
		return "INLINE_CODE"
	elseif length == 2 then
		return if char == "*" then "BOLD_2" else "ITALIC_2"
	else
		return if char == "*" then "BOLD" elseif char == "~" then "STRIKE" else "ITALIC"
	end
end

function module.canDelimitersMatch(opener: Delimiter, closer: Delimiter): boolean
	if opener.runLength == 0 or closer.runLength == 0 then
		-- These delimiters have been fully used up
		return false
	end

	-- Paraphrased from rules 9 & 10:
	-- If one of the delimiters can both open and close,
	-- then the sum of the lengths of the delimiter runs must not be a multiple of 3
	-- unless both lengths are multiples of 3
	local canOpenAndClose = (opener.canOpen and opener.canClose) or (closer.canOpen and closer.canClose)
	if not canOpenAndClose then
		return true
	end

	if opener.runLength % 3 == 0 and closer.runLength % 3 == 0 then
		return true
	end

	if (opener.runLength + closer.runLength) % 3 == 0 then
		return false
	end

	return true
end

-- Inserts a match record into the list while keeping it sorted by with.startIdx (ascending)
function module.addDelimiterMatch(delimiter: Delimiter, match: DelimiterMatch): ()
	local matches = delimiter.matches or {}
	delimiter.matches = matches

	local low = 1
	local high = #matches
	local pos = high + 1 -- Default to insertion at the end

	local startIdx = match.with.startIdx

	while low <= high do
		local mid = math.floor((low + high) / 2)
		if startIdx < matches[mid].with.startIdx then
			pos = mid
			high = mid - 1
		else
			low = mid + 1
		end
	end

	table.insert(matches, pos, match)
end

-- Helper function to check if a character is whitespace
-- Used in flanking delimiter run checks (part of Rules 1-8)
-- Includes ASCII and Unicode whitespace characters
function module.isWhitespace(char: string?): boolean
	if not char or #char == 0 then
		return true
	end

	-- Check for ASCII whitespace
	if char:match(Constants.ASCII.WHITESPACE_PATTERN) ~= nil then
		return true
	end

	-- Check for Unicode whitespace
	if Constants.UNICODE.WHITESPACE[utf8.codepoint(char)] then
		return true
	end

	return false
end

-- Helper function to check if a character is punctuation
-- Used in flanking delimiter run checks for Rules 2, 4, 6, 8
-- CommonMark spec defines punctuation character as a character in the general
-- Unicode categories Pc, Pd, Pe, Pf, Pi, Po, or Ps.
function module.isPunctuation(char: string?): boolean
	if not char or #char == 0 then
		return false
	end

	-- Check ASCII punctuation
	if char:match(Constants.ASCII.PUNCTUATION_PATTERN) then
		return true
	end

	-- Check Unicode punctuation
	local charCodepoint = utf8.codepoint(char)
	if Constants.UNICODE.PUNCTUATION[charCodepoint] then
		return true
	end

	return false
end

-- Check if delimiter run is left-flanking according to CommonMark spec
-- Used to determine if delimiters can open emphasis (Rules 1, 2, 5, 6)
function module.isLeftFlanking(prevChar: string?, nextChar: string?): boolean
	-- A left-flanking delimiter run is a delimiter run that is:
	-- (1) not followed by whitespace, and either
	-- (2a) not followed by a punctuation character, or
	-- (2b) followed by a punctuation character and preceded by whitespace or a punctuation character

	-- Rule condition: not followed by whitespace
	if module.isWhitespace(nextChar) then
		return false
	end

	-- Rule condition: not followed by punctuation
	if not module.isPunctuation(nextChar) then
		return true
	end

	-- Rule condition: followed by punctuation AND preceded by whitespace or punctuation
	return module.isWhitespace(prevChar) or module.isPunctuation(prevChar)
end

-- Check if delimiter run is right-flanking according to CommonMark spec
-- Used to determine if delimiters can close emphasis (Rules 3, 4, 7, 8)
function module.isRightFlanking(prevChar: string?, nextChar: string?): boolean
	-- A right-flanking delimiter run is a delimiter run that is:
	-- (1) not preceded by whitespace, and either
	-- (2a) not preceded by a punctuation character, or
	-- (2b) preceded by a punctuation character and followed by whitespace or a punctuation character

	-- Rule condition: not preceded by whitespace
	if module.isWhitespace(prevChar) then
		return false
	end

	-- Rule condition: not preceded by punctuation
	if not module.isPunctuation(prevChar) then
		return true
	end

	-- Rule condition: preceded by punctuation AND followed by whitespace or punctuation
	return module.isWhitespace(nextChar) or module.isPunctuation(nextChar)
end

-- Check if delimiter can open emphasis based on CommonMark flanking rules
-- Implements Rules 1, 2, 5, 6 for opening emphasis/strong emphasis
function module.canOpenEmphasis(delimiterRun: DelimiterRun): boolean
	if delimiterRun.char == "`" then
		return true
	end

	local leftFlanking = module.isLeftFlanking(delimiterRun.prevChar, delimiterRun.nextChar)

	if not leftFlanking then
		return false
	end

	if delimiterRun.char ~= "_" then
		-- Rule 1 & 5: * and ** can open if left-flanking
		return true
	else
		-- Rule 2 & 6: _ and __ can open if left-flanking and either:
		-- (a) not right-flanking or
		-- (b) right-flanking and preceded by punctuation
		local rightFlanking = module.isRightFlanking(delimiterRun.prevChar, delimiterRun.nextChar)
		return not rightFlanking or module.isPunctuation(delimiterRun.prevChar)
	end
end

-- Check if delimiter can close emphasis based on CommonMark flanking rules
-- Implements Rules 3, 4, 7, 8 for closing emphasis/strong emphasis
function module.canCloseEmphasis(delimiterRun: DelimiterRun): boolean
	if delimiterRun.char == "`" then
		return true
	end

	local rightFlanking = module.isRightFlanking(delimiterRun.prevChar, delimiterRun.nextChar)

	if not rightFlanking then
		return false
	end

	if delimiterRun.char ~= "_" then
		-- Rule 3 & 7: * and ** can close if right-flanking
		return true
	else
		-- Rule 4 & 8: _ and __ can close if right-flanking and either:
		-- (a) not left-flanking or
		-- (b) left-flanking and followed by punctuation
		local leftFlanking = module.isLeftFlanking(delimiterRun.prevChar, delimiterRun.nextChar)
		return not leftFlanking or module.isPunctuation(delimiterRun.nextChar)
	end
end

function module.getCharacterContext(input: string, cursor: number, lookahead: number): TokenContext
	if #input == 0 then
		return {}
	end

	local prevChar, nextChar = nil, nil

	-- Get previous character
	if cursor > 1 then
		local prevCodepointStart = utf8.offset(input, -1, cursor)
		if prevCodepointStart then
			prevChar = utf8.char(utf8.codepoint(input, prevCodepointStart))
		end
	end

	-- Get next character
	local nextByteStart = cursor + lookahead
	if nextByteStart <= #input then
		local nextCodepointStart = utf8.offset(input, 1, nextByteStart)
		if nextCodepointStart then
			nextChar = utf8.char(utf8.codepoint(input, nextCodepointStart))
		end
	end

	return {
		prevChar = prevChar,
		nextChar = nextChar,
	}
end

type InlineCodeInfo = {
	offset: number,
	length: number,
}
function module.isInsideInlineCode(tokens: { Token }, lineStart: number, tokenIndex: number?): boolean
	-- Gather the inline code delimiters on our current line
	local inlineCodeStack: { InlineCodeInfo } = {}
	local currentInlineCode: InlineCodeInfo? = nil
	for i = (tokenIndex or #tokens), 1, -1 do
		local priorToken = tokens[i]
		if priorToken.offset <= lineStart then
			break
		end
		if priorToken.name ~= "INLINE_CODE" then
			continue
		end
		if currentInlineCode and currentInlineCode.offset - 1 == priorToken.offset then
			-- Combine adjacent inline code blocks
			currentInlineCode.length += 1
			currentInlineCode.offset -= 1
		else
			-- Start a new inline code block
			currentInlineCode = {
				offset = priorToken.offset,
				length = #priorToken.text,
			}
			table.insert(inlineCodeStack, 1, currentInlineCode :: InlineCodeInfo)
		end
	end

	-- Check if any inline code blocks are unclosed
	local hasUnclosedInlineCode = false
	local inlineCodeIndex = 1
	while inlineCodeIndex <= #inlineCodeStack do
		-- Find the matching closer
		local expectedLength = inlineCodeStack[inlineCodeIndex].length
		local closerIndex = nil
		for i = inlineCodeIndex + 1, #inlineCodeStack do
			if inlineCodeStack[i].length == expectedLength then
				closerIndex = i
				break
			end
		end

		if closerIndex then
			-- Found a matching inline code block
			-- Move on to the next in the stack
			inlineCodeIndex = closerIndex + 1
		else
			-- No matching closer found, so we're inside an unclosed code block
			hasUnclosedInlineCode = true
			break
		end
	end

	return hasUnclosedInlineCode
end

return module
