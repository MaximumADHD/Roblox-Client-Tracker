-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/text/Characters.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local UnicodeLetters = require(Root.internal.data.UnicodeLetters)
local UnicodePunctuation = require(Root.internal.data.UnicodePunctuation)
local UnicodeSpaceSeparators = require(Root.internal.data.UnicodeSpaceSeparators)
local Utf8 = require(Root.internal.port.Utf8)

local byte, char, find = string.byte, string.char, string.find

local SPACE = byte(" ")
local TAB = byte("\t")
local NEWLINE = byte("\n")
local FORM_FEED = 0x0C
local CARRIAGE_RETURN = byte("\r")
local DOLLAR = byte("$")
local PLUS = byte("+")
local LT = byte("<")
local EQUALS = byte("=")
local GT = byte(">")
local CARET = byte("^")
local BACKTICK = byte("`")
local PIPE = byte("|")
local TILDE = byte("~")

local Characters = {}

function Characters.find(c: number, s: string, startIndex: number): number
	local i = find(s, char(c), startIndex + 1, true)
	return if i then i - 1 else -1
end

function Characters.findLineBreak(s: string, startIndex: number): number
	local i = find(s, "[\n\r]", startIndex + 1)
	return if i then i - 1 else -1
end

-- See https://spec.commonmark.org/0.31.2/#blank-line
function Characters.isBlank(s: string): boolean
	return Characters.skipSpaceTab(s, 0, #s) == #s
end

function Characters.hasNonSpace(s: string): boolean
	local length = #s
	local skipped = Characters.skip(SPACE, s, 0, length)
	return skipped ~= length
end

-- Binary search over the flat { lo1, hi1, lo2, hi2, ... } inclusive ranges, where range k
-- (1-based) is ranges[2k - 1] .. ranges[2k].
local function isInRanges(ranges: { number }, codePoint: number): boolean
	local low, high = 1, #ranges // 2
	while low <= high do
		local mid = (low + high) // 2
		if codePoint < ranges[2 * mid - 1] then
			high = mid - 1
		elseif codePoint > ranges[2 * mid] then
			low = mid + 1
		else
			return true
		end
	end
	return false
end

function Characters.isLetter(s: string, index: number): boolean
	local codePoint = Utf8.codePointAt(s, index)
	-- PORT NOTE: Character.isLetter becomes a binary search of the generated Unicode 15.1 L* table
	-- (internal/data/UnicodeLetters), so the categories follow Unicode 15.1 rather than the
	-- running JDK's Unicode version.
	return isInRanges(UnicodeLetters, codePoint)
end

function Characters.isSpaceOrTab(s: string, index: number): boolean
	if index < #s then
		local c = byte(s, index + 1)
		if c == SPACE or c == TAB then
			return true
		end
	end
	return false
end

-- See https://spec.commonmark.org/0.31.2/#unicode-punctuation-character
function Characters.isPunctuationCodePoint(codePoint: number): boolean
	-- PORT NOTE: Character.getType's P* and S* cases become a binary search of the generated
	-- Unicode 15.1 table (internal/data/UnicodePunctuation), so the categories follow Unicode
	-- 15.1 rather than the running JDK's Unicode version.
	-- General category "P" (punctuation) and "S" (symbol)
	if isInRanges(UnicodePunctuation, codePoint) then
		return true
	else
		return codePoint == DOLLAR
			or codePoint == PLUS
			or codePoint == LT
			or codePoint == EQUALS
			or codePoint == GT
			or codePoint == CARET
			or codePoint == BACKTICK
			or codePoint == PIPE
			or codePoint == TILDE
	end
end

-- See https://spec.commonmark.org/0.31.2/#unicode-whitespace-character
function Characters.isWhitespaceCodePoint(codePoint: number): boolean
	if
		codePoint == SPACE
		or codePoint == TAB
		or codePoint == NEWLINE
		or codePoint == FORM_FEED
		or codePoint == CARRIAGE_RETURN
	then
		return true
	else
		-- PORT NOTE: Character.getType(codePoint) == SPACE_SEPARATOR becomes a lookup in the
		-- generated Unicode 15.1 Zs table (internal/data/UnicodeSpaceSeparators), so the category
		-- follows Unicode 15.1 rather than the running JDK's Unicode version.
		return UnicodeSpaceSeparators[codePoint] == true
	end
end

function Characters.skip(skip: number, s: string, startIndex: number, endIndex: number): number
	for i = startIndex, endIndex - 1 do
		if byte(s, i + 1) ~= skip then
			return i
		end
	end
	return endIndex
end

function Characters.skipBackwards(skip: number, s: string, startIndex: number, lastIndex: number): number
	for i = startIndex, lastIndex, -1 do
		if byte(s, i + 1) ~= skip then
			return i
		end
	end
	return lastIndex - 1
end

function Characters.skipSpaceTab(s: string, startIndex: number, endIndex: number): number
	for i = startIndex, endIndex - 1 do
		local c = byte(s, i + 1)
		if c ~= SPACE and c ~= TAB then
			return i
		end
	end
	return endIndex
end

function Characters.skipSpaceTabBackwards(s: string, startIndex: number, lastIndex: number): number
	for i = startIndex, lastIndex, -1 do
		local c = byte(s, i + 1)
		if c ~= SPACE and c ~= TAB then
			return i
		end
	end
	return lastIndex - 1
end

return Characters
