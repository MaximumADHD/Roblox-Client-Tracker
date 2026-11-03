-- Roblox-written
-- Lenient UTF-8 decoding at a 0-based byte index. Stands in for Java's UTF-16 surrogate joining.
-- Malformed input never throws: it decodes as INVALID, which is neither punctuation nor
-- whitespace, like a lone surrogate in Java. U+FFFD would be wrong here, as it counts as
-- punctuation (So). As in Java, the index itself must be in range.

local byte = string.byte

local INVALID = -1

local Utf8 = {
	INVALID = INVALID,
}

local function isContinuation(b: number?): boolean
	return b ~= nil and b >= 0x80 and b <= 0xBF
end

-- Returns the code point starting at `index` and its length in bytes (1 when malformed).
local function decode(s: string, index: number): (number, number)
	local b1 = byte(s, index + 1)
	if b1 < 0x80 then
		return b1, 1
	end

	local length, codePoint, min
	if b1 >= 0xC2 and b1 <= 0xDF then
		length, codePoint, min = 2, b1 - 0xC0, 0x80
	elseif b1 >= 0xE0 and b1 <= 0xEF then
		length, codePoint, min = 3, b1 - 0xE0, 0x800
	elseif b1 >= 0xF0 and b1 <= 0xF4 then
		length, codePoint, min = 4, b1 - 0xF0, 0x10000
	else
		return INVALID, 1
	end

	for i = 1, length - 1 do
		local b = byte(s, index + 1 + i)
		if not isContinuation(b) then
			return INVALID, 1
		end
		codePoint = codePoint * 64 + ((b :: number) - 0x80)
	end

	-- Overlong forms, values past U+10FFFF and encoded surrogates.
	if codePoint < min or codePoint > 0x10FFFF or (codePoint >= 0xD800 and codePoint <= 0xDFFF) then
		return INVALID, 1
	end
	return codePoint, length
end

function Utf8.codePointAt(s: string, index: number): number
	return (decode(s, index))
end

-- The code point that ends just before `index`. A sequence that doesn't end exactly there (a
-- truncated lead byte, or stray continuation bytes) is INVALID.
function Utf8.codePointBefore(s: string, index: number): number
	local lead = index - 1
	while lead > 0 and lead > index - 4 and isContinuation(byte(s, lead + 1)) do
		lead -= 1
	end
	local codePoint, length = decode(s, lead)
	if lead + length ~= index then
		return INVALID
	end
	return codePoint
end

return Utf8
