-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/internal/util/Html5Entities.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local HtmlEntities = require(Root.internal.data.HtmlEntities)

local byte, find, sub = string.byte, string.find, string.sub

local AMP = byte("&")
local SEMICOLON = byte(";")
local HASH = byte("#")
local PLUS = byte("+")
local MINUS = byte("-")
local LOWER_X = byte("x")
local UPPER_X = byte("X")

local REPLACEMENT_CHARACTER = "\u{FFFD}"

-- PORT NOTE: readEntities and ENTITY_PATH (parsing entities.txt from the classpath) are replaced
-- by the generated table internal/data/HtmlEntities, keyed by bare name like Java's map. It
-- holds the same names and values as entities.txt, and already holds NewLine, so Java's
-- entities.put("NewLine", "\n") patch isn't needed.
local NAMED_CHARACTER_REFERENCES: { [string]: string } = HtmlEntities

-- PORT NOTE: stands in for Integer.parseInt, returning nil where Java throws
-- NumberFormatException: an optional sign, then digits of the base, within int range. Only ASCII
-- digits are accepted, where Character.digit also takes other Unicode decimal digits; the
-- parser's callers only ever pass ASCII digits.
local function parseInt(value: string, base: number): number?
	local first = byte(value, 1)
	local negative = first == MINUS
	local digits = if negative or first == PLUS then sub(value, 2) else value
	local digitsPattern = if base == 16 then "^[0-9A-Fa-f]+$" else "^[0-9]+$"
	if find(digits, digitsPattern) == nil then
		return nil
	end
	local significant = find(digits, "[^0]")
	digits = if significant then sub(digits, significant) else ""
	-- More than 10 significant digits overflows an int in either base, and tonumber stays exact
	-- up to there.
	if #digits > 10 then
		return nil
	end
	local magnitude = tonumber(digits, base) or 0
	local result = if negative then -magnitude else magnitude
	if result < -2147483648 or result > 2147483647 then
		return nil
	end
	return result
end

local Html5Entities = {}

function Html5Entities.entityToString(input: string): string
	if byte(input, 1) ~= AMP or byte(input, #input) ~= SEMICOLON then
		return input
	end

	local value = sub(input, 2, #input - 1)
	if byte(value, 1) == HASH then
		value = sub(value, 2)
		local base = 10
		local first = byte(value, 1)
		if first == LOWER_X or first == UPPER_X then
			value = sub(value, 2)
			base = 16
		end

		local codePoint = parseInt(value, base)
		if codePoint == 0 then
			return REPLACEMENT_CHARACTER
		end
		-- PORT NOTE: Character.toChars throws IllegalArgumentException outside 0..0x10FFFF, which
		-- Java's catch turns into U+FFFD; that is the range check here. Surrogate code points
		-- (0xD800-0xDFFF) also become U+FFFD, a deliberate departure from Java (Elvis, 2026-10-05;
		-- changing-core-behavior.md, *Deviations*). Java returns a lone UTF-16 surrogate for a lone
		-- reference, and a high reference followed by a low one (&#xD83D;&#xDE00;) joins into U+1F600
		-- in unescapeString and in merged inline text; here each reference gives its own U+FFFD, so
		-- that pair gives two. cmark, commonmark.js, pulldown-cmark and goldmark do the same, as the
		-- spec asks for invalid code points, and every reference decodes to valid UTF-8.
		if
			codePoint == nil
			or codePoint < 0
			or codePoint > 0x10FFFF
			or (codePoint >= 0xD800 and codePoint <= 0xDFFF)
		then
			return REPLACEMENT_CHARACTER
		end
		return utf8.char(codePoint)
	else
		local s = NAMED_CHARACTER_REFERENCES[value]
		if s ~= nil then
			return s
		else
			return input
		end
	end
end

return Html5Entities
