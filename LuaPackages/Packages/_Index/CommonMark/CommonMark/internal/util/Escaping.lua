-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/internal/util/Escaping.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local CaseFolding = require(Root.internal.data.CaseFolding)
local Html5Entities = require(Root.internal.util.Html5Entities)
local Utf8 = require(Root.internal.port.Utf8)

local byte, find, gsub, sub = string.byte, string.find, string.gsub, string.sub

local BACKSLASH = byte("\\")
local PERCENT = byte("%")
local SPACE = byte(" ")

-- PORT NOTE: Java's Replacer appends to a StringBuilder; here it returns the replacement, which
-- replaceAll appends to its parts array.
type Replacer = (input: string) -> string

-- PORT NOTE: stands in for a compiled Pattern: returns the 0-based start and end of the first
-- match at or after `from`, or -1, -1 when there is none.
type Finder = (s: string, from: number) -> (number, number)

local Escaping = {}

-- PORT NOTE: the Java regex character class becomes the equivalent Luau pattern set.
-- Upstream: [!"#$%&'()*+,./:;<=>?@\[\\\]^_`{|}~-]
Escaping.ESCAPABLE = "[!\"#$%%&'()*+,./:;<=>?@%[\\%]^_`{|}~%-]"

-- PORT NOTE: ENTITY isn't exported. Its bounded repeats have no Luau pattern equivalent, and
-- nothing else in the core reads it; matchEntity below implements it.

-- Upstream: [\\&]
local BACKSLASH_OR_AMP = "[\\&]"

local ESCAPED_CHAR = "^\\" .. Escaping.ESCAPABLE

-- 0-based index of the first match of `pattern` at or after `from`, or -1.
local function findPattern(s: string, pattern: string, from: number): number
	local i = find(s, pattern, from + 1)
	return if i then i - 1 else -1
end

-- Each branch's run is matched greedily up to the ";" and then its length is checked against the
-- bound, which is what the bounded repeat comes to when the run can't contain a ";". find's
-- 1-based index of the ";" is the 0-based end of the match.
-- Upstream: &(?:#x[a-f0-9]{1,6}|#[0-9]{1,7}|[a-z][a-z0-9]{1,31}); with CASE_INSENSITIVE
local function matchEntity(s: string, start: number): number?
	local afterAmp = start + 1
	local _, finish = find(s, "^#[Xx][0-9A-Fa-f]*;", afterAmp + 1)
	if finish ~= nil then
		local digits = finish - afterAmp - 3
		return if digits >= 1 and digits <= 6 then finish else nil
	end
	_, finish = find(s, "^#[0-9]*;", afterAmp + 1)
	if finish ~= nil then
		local digits = finish - afterAmp - 2
		return if digits >= 1 and digits <= 7 then finish else nil
	end
	_, finish = find(s, "^[A-Za-z][A-Za-z0-9]*;", afterAmp + 1)
	if finish ~= nil then
		local rest = finish - afterAmp - 2
		return if rest >= 1 and rest <= 31 then finish else nil
	end
	return nil
end

-- Upstream: \\[!"#$%&'()*+,./:;<=>?@\[\\\]^_`{|}~-]|&(?:#x[a-f0-9]{1,6}|#[0-9]{1,7}|[a-z][a-z0-9]{1,31}); with CASE_INSENSITIVE
local function findEntityOrEscapedChar(s: string, from: number): (number, number)
	local start = findPattern(s, BACKSLASH_OR_AMP, from)
	while start ~= -1 do
		local finish: number?
		if byte(s, start + 1) == BACKSLASH then
			local _, escapedEnd = find(s, ESCAPED_CHAR, start + 1)
			finish = escapedEnd
		else
			finish = matchEntity(s, start)
		end
		if finish ~= nil then
			return start, finish
		end
		start = findPattern(s, BACKSLASH_OR_AMP, start + 1)
	end
	return -1, -1
end

-- Length in bytes of the UTF-8 sequence Utf8.codePointAt decoded. A malformed byte decodes as
-- INVALID (-1) and stands alone.
local function encodedLength(codePoint: number): number
	if codePoint < 0x80 then
		return 1
	elseif codePoint < 0x800 then
		return 2
	elseif codePoint < 0x10000 then
		return 3
	else
		return 4
	end
end

local URI_UNSAFE = "[^:/?#@!$&'()*+,;=A-Za-z0-9%-._~]"

-- From RFC 3986 (see "reserved", "unreserved") except don't escape '[' or ']' to be compatible
-- with JS encodeURI
-- PORT NOTE: Java's regex matches one code point, and here the second branch matches one whole
-- UTF-8 sequence, so valid input encodes exactly as in Java. A malformed byte, which no Java
-- string can hold, matches alone and gets its own %XX.
-- Upstream: (%[a-fA-F0-9]{0,2}|[^:/?#@!$&'()*+,;=a-zA-Z0-9\-._~])
local function findEscapeInUri(s: string, from: number): (number, number)
	local start = findPattern(s, URI_UNSAFE, from)
	if start == -1 then
		return -1, -1
	end
	if byte(s, start + 1) == PERCENT then
		-- Always matches, possibly empty; find's 1-based last index is the 0-based end.
		local _, finish = find(s, "^[0-9A-Fa-f]?[0-9A-Fa-f]?", start + 2)
		return start, finish :: number
	end
	return start, start + encodedLength(Utf8.codePointAt(s, start))
end

local HEX_DIGITS = { "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F" }

-- Upstream: [ \t\r\n]+
local WHITESPACE = "[ \t\r\n]+"

local UNESCAPE_REPLACER: Replacer = function(input)
	if byte(input, 1) == BACKSLASH then
		return sub(input, 2, #input)
	else
		return Html5Entities.entityToString(input)
	end
end

local URI_REPLACER: Replacer = function(input)
	if byte(input, 1) == PERCENT then
		if #input == 3 then
			-- Already percent-encoded, preserve
			return input
		else
			-- %25 is the percent-encoding for %
			return "%25" .. sub(input, 2, #input)
		end
	else
		-- PORT NOTE: input.getBytes(UTF_8) is input itself, as a Luau string already holds its
		-- UTF-8 bytes. string.byte gives an unsigned byte, so Java's (b >> 4) & 0xF and b & 0xF
		-- become b // 16 and b % 16.
		local encoded = {}
		for i = 1, #input do
			local b = byte(input, i)
			encoded[i] = "%" .. HEX_DIGITS[b // 16 + 1] .. HEX_DIGITS[b % 16 + 1]
		end
		return table.concat(encoded)
	end
end

local HTML_ESCAPES = {
	["&"] = "&amp;",
	["<"] = "&lt;",
	[">"] = "&gt;",
	['"'] = "&quot;",
}

function Escaping.escapeHtml(input: string): string
	-- Avoid building a new string in the majority of cases (nothing to escape)
	-- PORT NOTE: the per-character switch with a lazily created StringBuilder becomes one gsub
	-- through a replacement table, behind a find for the nothing-to-escape case.
	if find(input, '[&<>"]') == nil then
		return input
	end
	return (gsub(input, '[&<>"]', HTML_ESCAPES))
end

local function replaceAll(p: Finder, s: string, replacer: Replacer): string
	local start, finish = p(s, 0)

	if start == -1 then
		return s
	end

	local sb = {}
	local n = 0
	local lastEnd = 0
	repeat
		n += 1
		sb[n] = sub(s, lastEnd + 1, start)
		n += 1
		sb[n] = replacer(sub(s, start + 1, finish))
		lastEnd = finish
		start, finish = p(s, lastEnd)
	until start == -1

	if lastEnd ~= #s then
		n += 1
		sb[n] = sub(s, lastEnd + 1, #s)
	end
	return table.concat(sb)
end

-- Replace entities and backslash escapes with literal characters.
function Escaping.unescapeString(s: string): string
	if find(s, BACKSLASH_OR_AMP) ~= nil then
		return replaceAll(findEntityOrEscapedChar, s, UNESCAPE_REPLACER)
	else
		return s
	end
end

function Escaping.percentEncodeUrl(s: string): string
	return replaceAll(findEscapeInUri, s, URI_REPLACER)
end

-- PORT NOTE: String.trim, which strips every character up to U+0020 from both ends. Those are all
-- single bytes.
local function trim(s: string): string
	local start = 0
	local finish = #s
	while start < finish and byte(s, start + 1) <= SPACE do
		start += 1
	end
	while finish > start and byte(s, finish - 1 + 1) <= SPACE do
		finish -= 1
	end
	return sub(s, start + 1, finish)
end

-- A byte that may start a sequence with a case fold: an ASCII capital or any non-ASCII byte.
local FOLD_CANDIDATE = "[A-Z\128-\255]"

-- Full Unicode case folding through the generated table. Malformed bytes decode as INVALID, which
-- has no fold, so they pass through unchanged.
local function caseFold(s: string): string
	local start = findPattern(s, FOLD_CANDIDATE, 0)
	if start == -1 then
		return s
	end

	local parts = {}
	local n = 0
	local lastEnd = 0
	while start ~= -1 do
		local codePoint = Utf8.codePointAt(s, start)
		local length = encodedLength(codePoint)
		local folded = CaseFolding[codePoint]
		if folded ~= nil then
			n += 1
			parts[n] = sub(s, lastEnd + 1, start)
			n += 1
			parts[n] = folded
			lastEnd = start + length
		end
		start = findPattern(s, FOLD_CANDIDATE, start + length)
	end
	n += 1
	parts[n] = sub(s, lastEnd + 1, #s)
	return table.concat(parts)
end

function Escaping.normalizeLabelContent(input: string): string
	local trimmed = trim(input)

	-- PORT NOTE: Java's toLowerCase(Locale.ROOT).toUpperCase(Locale.ROOT) (lower first, so that
	-- U+1E9E reaches "SS") becomes full Unicode case folding (C+F, Unicode 15.1) through
	-- internal/data/CaseFolding, which is what the spec's label matching asks for; U+1E9E folds to
	-- "ss" directly. The normalized label comes out folded (mostly lowercase) instead of
	-- uppercase. It is only used as a map key, though DefinitionMap.keySet exposes it. Which
	-- labels match can differ from Java's for the few characters where lower-then-upper and case
	-- folding disagree, and with the JDK's Unicode version.
	local caseFolded = caseFold(trimmed)

	return (gsub(caseFolded, WHITESPACE, " "))
end

-- PORT NOTE: test-only exports of the regex replacements, so their edge cases can be tested
-- directly.
Escaping._findEntityOrEscapedChar = findEntityOrEscapedChar
Escaping._findEscapeInUri = findEscapeInUri

return Escaping
