-- Note: This is copied over from LuaApps for compatibility purposes.
-- Adapted and extended from https://github.com/iskolbin/lbase64.
-- Note that this decoder implementation does not attempt to identify
-- malformed Base-64; in that sense, it is an optimistic decoder that
-- makes a best-effort to produce valid output.
local Base64 = {}

function Base64.MakeEncoder(char62: string?, char63: string?, charPad: string?): { [number]: number }
	local encoder: { [number]: number } = {}
	for base64Code: number, base64Char: string in pairs({
		[0] = "A",
		"B",
		"C",
		"D",
		"E",
		"F",
		"G",
		"H",
		"I",
		"J",
		"K",
		"L",
		"M",
		"N",
		"O",
		"P",
		"Q",
		"R",
		"S",
		"T",
		"U",
		"V",
		"W",
		"X",
		"Y",
		"Z",
		"a",
		"b",
		"c",
		"d",
		"e",
		"f",
		"g",
		"h",
		"i",
		"j",
		"k",
		"l",
		"m",
		"n",
		"o",
		"p",
		"q",
		"r",
		"s",
		"t",
		"u",
		"v",
		"w",
		"x",
		"y",
		"z",
		"0",
		"1",
		"2",
		"3",
		"4",
		"5",
		"6",
		"7",
		"8",
		"9",
		char62 or "+",
		char63 or "/",
		charPad or "=",
	}) do
		encoder[base64Code] = base64Char:byte()
	end
	return encoder
end

local DEFAULT_ENCODER = Base64.MakeEncoder()

local char = string.char
local concat = table.concat
local extract = bit32.extract

function Base64.Encode(rawString: string, customEncoder: { [number]: number }?, useCaching: boolean?): string
	local encoder: { [number]: number } = customEncoder or DEFAULT_ENCODER
	local output, outputIndex, n = {}, 1, #rawString
	local nRemainder = n % 3
	local cache = {}

	-- Encode each group of three bytes (24 bits) as four characters, where
	-- each character comes from 6 bits of the group (the `base64Code`). For
	-- remaining bytes that do not fit into a group of three, pad these groups
	-- with one or two padding characters.
	for i = 1, n - nRemainder, 3 do
		local a, b, c = rawString:byte(i, i + 2)
		local tripleOctet = a * 0x10000 + b * 0x100 + c
		local encoded
		if useCaching then
			encoded = cache[tripleOctet]
			if not encoded then
				encoded = char(
					encoder[extract(tripleOctet, 18, 6)],
					encoder[extract(tripleOctet, 12, 6)],
					encoder[extract(tripleOctet, 6, 6)],
					encoder[extract(tripleOctet, 0, 6)]
				)
				cache[tripleOctet] = encoded
			end
		else
			encoded = char(
				encoder[extract(tripleOctet, 18, 6)],
				encoder[extract(tripleOctet, 12, 6)],
				encoder[extract(tripleOctet, 6, 6)],
				encoder[extract(tripleOctet, 0, 6)]
			)
		end
		output[outputIndex] = encoded
		outputIndex = outputIndex + 1
	end
	if nRemainder == 2 then
		local a, b = rawString:byte(n - 1, n)
		local doubleOctet = a * 0x10000 + b * 0x100
		output[outputIndex] = char(
			encoder[extract(doubleOctet, 18, 6)],
			encoder[extract(doubleOctet, 12, 6)],
			encoder[extract(doubleOctet, 6, 6)],
			encoder[64]
		)
	elseif nRemainder == 1 then
		local a = rawString:byte(n)
		local octet = a * 0x10000
		output[outputIndex] =
			char(encoder[extract(octet, 18, 6)], encoder[extract(octet, 12, 6)], encoder[64], encoder[64])
	end
	return concat(output)
end

return Base64
