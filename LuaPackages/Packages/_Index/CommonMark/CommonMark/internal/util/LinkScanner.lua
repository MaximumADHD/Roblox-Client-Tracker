-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/internal/util/LinkScanner.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local Scanner = require(Root.parser.beta.Scanner)

type Scanner = Scanner.Scanner

local byte = string.byte

local BACKSLASH = byte("\\")
local CLOSE_BRACKET = byte("]")
local CLOSE_PAREN = byte(")")
local DOUBLE_QUOTE = byte('"')
local GREATER_THAN = byte(">")
local LESS_THAN = byte("<")
local NEWLINE = byte("\n")
local OPEN_BRACKET = byte("[")
local OPEN_PAREN = byte("(")
local SINGLE_QUOTE = byte("'")
local SPACE = byte(" ")

local IS_ESCAPABLE: { [number]: boolean } = {}
do
	local escapable = "!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~"
	for i = 1, #escapable do
		IS_ESCAPABLE[byte(escapable, i)] = true
	end
end

local function isEscapable(c: number): boolean
	return IS_ESCAPABLE[c] == true
end

local LinkScanner = {}

-- Attempt to scan the contents of a link label (inside the brackets), stopping after the
-- content or returning false. The stopped position can bei either the closing `]`, or the
-- end of the line if the label continues on the next line.
function LinkScanner.scanLinkLabelContent(scanner: Scanner): boolean
	while scanner:hasNext() do
		local c = scanner:peek()
		if c == BACKSLASH then
			scanner:next()
			if isEscapable(scanner:peek()) then
				scanner:next()
			end
		elseif c == CLOSE_BRACKET then
			return true
		elseif c == OPEN_BRACKET then
			-- spec: Unescaped square bracket characters are not allowed inside the opening
			-- and closing square brackets of link labels.
			return false
		else
			scanner:next()
		end
	end
	return true
end

-- spec: a nonempty sequence of characters that does not start with <, does not include ASCII
-- space or control characters, and includes parentheses only if (a) they are backslash-escaped
-- or (b) they are part of a balanced pair of unescaped parentheses
local function scanLinkDestinationWithBalancedParens(scanner: Scanner): boolean
	local parens = 0
	local empty = true
	while scanner:hasNext() do
		local c = scanner:peek()
		if c == SPACE then
			return not empty
		elseif c == BACKSLASH then
			scanner:next()
			if isEscapable(scanner:peek()) then
				scanner:next()
			end
		elseif c == OPEN_PAREN then
			parens += 1
			-- Limit to 32 nested parens for pathological cases
			if parens > 32 then
				return false
			end
			scanner:next()
		elseif c == CLOSE_PAREN then
			if parens == 0 then
				return true
			else
				parens -= 1
			end
			scanner:next()
		else
			-- or control character
			-- PORT NOTE: Character.isISOControl(c) is c < 0x20 or c == 0x7F; Java's 0x80-0x9F
			-- range would match UTF-8 continuation bytes here.
			if c < 0x20 or c == 0x7F then
				return not empty
			end
			scanner:next()
		end
		empty = false
	end
	return true
end

-- Attempt to scan a link destination, stopping after the destination or returning false.
function LinkScanner.scanLinkDestination(scanner: Scanner): boolean
	if not scanner:hasNext() then
		return false
	end

	if scanner:nextChar(LESS_THAN) then
		while scanner:hasNext() do
			local c = scanner:peek()
			if c == BACKSLASH then
				scanner:next()
				if isEscapable(scanner:peek()) then
					scanner:next()
				end
			elseif c == NEWLINE or c == LESS_THAN then
				return false
			elseif c == GREATER_THAN then
				scanner:next()
				return true
			else
				scanner:next()
			end
		end
		return false
	else
		return scanLinkDestinationWithBalancedParens(scanner)
	end
end

function LinkScanner.scanLinkTitle(scanner: Scanner): boolean
	if not scanner:hasNext() then
		return false
	end

	local endDelimiter
	local c = scanner:peek()
	if c == DOUBLE_QUOTE then
		endDelimiter = DOUBLE_QUOTE
	elseif c == SINGLE_QUOTE then
		endDelimiter = SINGLE_QUOTE
	elseif c == OPEN_PAREN then
		endDelimiter = CLOSE_PAREN
	else
		return false
	end
	scanner:next()

	if not LinkScanner.scanLinkTitleContent(scanner, endDelimiter) then
		return false
	end
	if not scanner:hasNext() then
		return false
	end
	scanner:next()
	return true
end

function LinkScanner.scanLinkTitleContent(scanner: Scanner, endDelimiter: number): boolean
	while scanner:hasNext() do
		local c = scanner:peek()
		if c == BACKSLASH then
			scanner:next()
			if isEscapable(scanner:peek()) then
				scanner:next()
			end
		elseif c == endDelimiter then
			return true
		elseif endDelimiter == CLOSE_PAREN and c == OPEN_PAREN then
			-- unescaped '(' in title within parens is invalid
			return false
		else
			scanner:next()
		end
	end
	return true
end

return LinkScanner
