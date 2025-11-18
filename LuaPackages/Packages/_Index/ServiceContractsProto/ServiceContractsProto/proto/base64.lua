--!native

--[[

Taken from https://github.com/Reselim/Base64

===============================================================================

Copyright (c) 2020 Reselim

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

]]

local lookupValueToASCII = {} :: { [number]: number }
local lookupASCIIToValue = {} :: { [number]: number }

local alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

for index = 1, #alphabet do
	local value = index - 1
	local ascii = string.byte(alphabet, index)

	lookupValueToASCII[value] = ascii
	lookupASCIIToValue[ascii] = value
end

lookupASCIIToValue[string.byte("=")] = 0

local function buildStringFromCodes(values: { number }): string
	local chunks = {} :: { string }

	for index = 1, #values, 4096 do
		table.insert(chunks, string.char(unpack(values, index, math.min(index + 4096 - 1, #values))))
	end

	return table.concat(chunks, "")
end

local function encode(input: string): string
	local inputLength = #input
	local outputLength = math.ceil(inputLength / 3) * 4

	local remainder = inputLength % 3

	if remainder == 0 then
		-- Since chunks are only 3 characters wide and we're parsing 4 characters, we need
		-- to add an extra 0 on the end (which will be discarded anyway)
		input ..= string.char(0)
	end

	local output = table.create(outputLength, 0) :: { number }

	for chunkIndex = 0, (outputLength / 4) - (if remainder == 0 then 1 else 2) do
		local inputIndex = chunkIndex * 3 + 1
		local outputIndex = chunkIndex * 4 + 1

		-- Parse this as a single 32-bit integer instead of splitting into multiple and combining after
		local chunk = bit32.rshift(string.unpack(">J", input, inputIndex), 8)

		output[outputIndex] = lookupValueToASCII[bit32.rshift(chunk, 18)]
		output[outputIndex + 1] = lookupValueToASCII[bit32.band(bit32.rshift(chunk, 12), 0b111111)]
		output[outputIndex + 2] = lookupValueToASCII[bit32.band(bit32.rshift(chunk, 6), 0b111111)]
		output[outputIndex + 3] = lookupValueToASCII[bit32.band(chunk, 0b111111)]
	end

	if remainder == 1 then -- AA==
		local chunk = string.byte(input, inputLength)

		output[outputLength - 3] = lookupValueToASCII[bit32.rshift(chunk, 2)]
		output[outputLength - 2] = lookupValueToASCII[bit32.band(bit32.lshift(chunk, 4), 0b111111)]
		output[outputLength - 1] = 61
		output[outputLength] = 61
	elseif remainder == 2 then -- AAA=
		local chunk = string.unpack(">H", input, inputLength - 1)

		output[outputLength - 3] = lookupValueToASCII[bit32.rshift(chunk, 10)]
		output[outputLength - 2] = lookupValueToASCII[bit32.band(bit32.rshift(chunk, 4), 0b111111)]
		output[outputLength - 1] = lookupValueToASCII[bit32.band(bit32.lshift(chunk, 2), 0b111111)]
		output[outputLength] = 61
	end

	return buildStringFromCodes(output)
end

local function decode(input: string): string
	local inputLength = #input
	local outputLength = math.ceil(inputLength / 4) * 3

	local padding = 0
	if string.byte(input, inputLength - 1) == 61 then
		padding = 2
	elseif string.byte(input, inputLength) == 61 then
		padding = 1
	end

	local output = table.create(outputLength - padding, 0)

	for chunkIndex = 0, (outputLength / 3) - 1 do
		local inputIndex = chunkIndex * 4 + 1
		local outputIndex = chunkIndex * 3 + 1

		local value1, value2, value3, value4 = string.byte(input, inputIndex, inputIndex + 3)

		-- Combine all variables into one 24-bit variable to be split up
		local compound = bit32.bor(
			bit32.lshift(lookupASCIIToValue[value1], 18),
			bit32.lshift(lookupASCIIToValue[value2], 12),
			bit32.lshift(lookupASCIIToValue[value3], 6),
			lookupASCIIToValue[value4]
		)

		output[outputIndex] = bit32.rshift(compound, 16)
		output[outputIndex + 1] = bit32.band(bit32.rshift(compound, 8), 0b11111111)
		output[outputIndex + 2] = bit32.band(compound, 0b11111111)
	end

	if padding >= 1 then
		output[outputLength] = nil

		if padding >= 2 then
			output[outputLength - 1] = nil
		end
	end

	return buildStringFromCodes(output)
end

return {
	encode = encode,
	decode = decode,
}
