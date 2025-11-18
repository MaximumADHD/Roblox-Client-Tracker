local base64 = require(script.base64)
local message = require(script.message)
local typeRegistry = require(script.typeRegistry)

export type Descriptor = message.Descriptor
export type Message<T, Fields> = message.Message<T, Fields>
export type CustomJson<T, Json> = message.CustomJson<T, Json>
export type TypeRegistry = typeRegistry.TypeRegistry

local proto = {}

export type Enum<T> = {
	fromName: (string) -> T?,

	fromNumber: (number) -> T?,
	toNumber: (T) -> number,
}

-- TODO: Round-trip all numbers in range for varint reader functions

local function readVarIntBytes(input: buffer, cursor: number): (number, number)
	local lo = 0
	local hi = 0
	local shift = 0

	repeat
		local b = buffer.readu8(input, cursor)
		local n = bit32.band(b, 0b0111_1111)
		lo = bit32.bor(lo, bit32.lshift(n, shift))
		hi = bit32.bor(hi, bit32.lshift(n, shift - 32))
		shift += 7
		cursor += 1
	until not bit32.btest(b, 0b1000_0000)

	return lo, hi, cursor
end

function proto.readVarIntU64(input: buffer, cursor: number): (number, number)
	local lo, hi
	lo, hi, cursor = readVarIntBytes(input, cursor)

	return hi * 0x100000000 + lo, cursor
end

function proto.readVarIntU32(input: buffer, cursor: number): (number, number)
	local lo, _
	lo, _, cursor = readVarIntBytes(input, cursor)

	return lo, cursor
end

function proto.readVarIntI64(input: buffer, cursor: number): (number, number)
	local lo, hi
	lo, hi, cursor = readVarIntBytes(input, cursor)

	if hi < 0x80000000 then
		return hi * 0x100000000 + lo, cursor
	end

	lo = bit32.bnot(lo) + 1
	hi = bit32.bnot(hi)

	if lo > 0xFFFFFFFF then
		lo = 0
		hi += 1
	end

	return -(hi * 0x100000000 + lo), cursor
end

function proto.readVarIntI32(input: buffer, cursor: number): (number, number)
	local lo, _
	lo, _, cursor = readVarIntBytes(input, cursor)

	if lo < 0x80000000 then
		return lo, cursor
	end

	return lo - 0x100000000, cursor
end

function proto.readVarIntS64(input: buffer, cursor: number): (number, number)
	local lo, hi
	lo, hi, cursor = readVarIntBytes(input, cursor)

	local isOdd = bit32.btest(lo, 1) -- will be negative
	if isOdd then
		-- add 1
		lo += 1
		if lo > 0xFFFFFFFF then
			lo = 0
			hi += 1
		end
	end

	-- edge case: hi overflows 32-bit after adding 1
	-- this only happens when the encoded value is -2^63
	if hi > 0xFFFFFFFF then
		return -2 ^ 63, cursor
	end

	-- divide by 2
	lo = bit32.bor(bit32.rshift(lo, 1), bit32.lshift(bit32.band(hi, 0b1), 31))
	hi = bit32.rshift(hi, 1)

	if isOdd then
		return -(hi * 0x100000000 + lo), cursor
	end

	return hi * 0x100000000 + lo, cursor
end

function proto.readVarIntS32(input: buffer, cursor: number): (number, number)
	local lo, _
	lo, _, cursor = readVarIntBytes(input, cursor)

	if bit32.btest(lo, 1) then
		return -(lo + 1) / 2, cursor
	end

	return lo / 2, cursor
end

proto.readVarInt = proto.readVarIntI64

function proto.readFloat(input: buffer, cursor: number): (number, number)
	return buffer.readf32(input, cursor), cursor + 4
end

function proto.readDouble(input: buffer, cursor: number): (number, number)
	return buffer.readf64(input, cursor), cursor + 8
end

function proto.readFixed32(input: buffer, cursor: number): (number, number)
	return buffer.readu32(input, cursor), cursor + 4
end

function proto.readSignedFixed32(input: buffer, cursor: number): (number, number)
	return buffer.readi32(input, cursor), cursor + 4
end

-- TODO: Test with 0 to 2^32
function proto.readFixed64(output: buffer, cursor: number): (number, number)
	-- =(
	local hex = string.format("%08x", buffer.readu32(output, cursor + 4))
		.. string.format("%08x", buffer.readu32(output, cursor))

	return assert(tonumber(hex, 16), "Couldn't parse created hex"), cursor + 8
end

function proto.readSignedFixed64(_output: buffer, _cursor: number): (number, number)
	error("TODO: Read sfixed64")
end

function proto.readTag(input: buffer, cursor: number): (number, number, number)
	local varInt, newCursor = proto.readVarInt(input, cursor)
	return bit32.rshift(varInt, 3), bit32.band(varInt, 0b111), newCursor
end

function proto.readBuffer(input: buffer, cursor: number): (buffer, number)
	local length, newCursor = proto.readVarInt(input, cursor)
	local output = buffer.create(length)
	buffer.copy(output, 0, input, newCursor, length)
	return output, newCursor + length
end

local function reserveBuffer(output: buffer, cursor: number, amount: number): buffer
	if buffer.len(output) - cursor < amount then
		local newBuffer = buffer.create(3 ^ math.ceil(math.log(buffer.len(output) + amount, 3)))
		buffer.copy(newBuffer, 0, output, 0, cursor)
		return newBuffer
	else
		return output
	end
end

proto.wireTypes = {
	varint = 0,
	i64 = 1,
	lengthDelimited = 2,
	sgroup = 3,
	egroup = 4,
	i32 = 5,
}

function proto.writeVarInt(output: buffer, cursor: number, number: number): (buffer, number)
	if number >= 0 then
		repeat
			output = reserveBuffer(output, cursor, 1)
			local nextByte = number % 0x80
			number = number // 0x80
			buffer.writeu8(output, cursor, if number == 0 then nextByte else nextByte + 0x80)
			cursor += 1
		until number == 0
	else
		local positive = -number
		local hi = bit32.bnot(positive // 0x100000000)
		local lo = bit32.bnot(positive % 0x100000000) + 1
		if lo == 0x100000000 then
			lo = 0
			hi += 1
		end

		output = reserveBuffer(output, cursor, 10)
		buffer.writeu8(output, cursor, bit32.bor(0x80, bit32.band(lo, 0x7F)))
		buffer.writeu8(output, cursor + 1, bit32.bor(0x80, bit32.band(bit32.rshift(lo, 7), 0x7F)))
		buffer.writeu8(output, cursor + 2, bit32.bor(0x80, bit32.band(bit32.rshift(lo, 14), 0x7F)))
		buffer.writeu8(output, cursor + 3, bit32.bor(0x80, bit32.band(bit32.rshift(lo, 21), 0x7F)))
		buffer.writeu8(
			output,
			cursor + 4,
			bit32.bor(0x80, bit32.lshift(bit32.band(hi, 0b111), 4), bit32.rshift(lo, 28))
		)
		buffer.writeu8(output, cursor + 5, bit32.bor(0x80, bit32.band(bit32.rshift(hi, 3), 0x7F)))
		buffer.writeu8(output, cursor + 6, bit32.bor(0x80, bit32.band(bit32.rshift(hi, 10), 0x7F)))
		buffer.writeu8(output, cursor + 7, bit32.bor(0x80, bit32.band(bit32.rshift(hi, 17), 0x7F)))
		buffer.writeu8(output, cursor + 8, bit32.bor(0x80, bit32.band(bit32.rshift(hi, 24), 0x7F)))
		buffer.writeu8(output, cursor + 9, bit32.rshift(hi, 31))
		cursor += 10
	end

	return output, cursor
end

function proto.writeVarIntZigZag(output: buffer, cursor: number, number: number): (buffer, number)
	local isNegative = number < 0
	number = math.abs(number)

	local hi = number // 0x100000000
	local lo = number % 0x100000000

	-- multiply by 2
	local overflow = bit32.extract(lo, 31)
	lo = bit32.lshift(lo, 1)
	hi = bit32.bor(bit32.lshift(hi, 1), overflow)

	if isNegative then
		-- subtract 1
		lo -= 1
		if lo < 0 then
			lo = 0xFFFFFFFF
			hi -= 1
		end
	end

	repeat
		output = reserveBuffer(output, cursor, 1)
		local nextByte = lo % 0x80
		lo = bit32.bor(bit32.rshift(lo, 7), bit32.lshift(bit32.band(hi, 0x7F), 25))
		hi = bit32.rshift(hi, 7)
		local last = lo == 0 and hi == 0
		buffer.writeu8(output, cursor, if last then nextByte else nextByte + 0x80)
		cursor += 1
	until last

	return output, cursor
end

function proto.writeFloat(output: buffer, cursor: number, float: number): (buffer, number)
	output = reserveBuffer(output, cursor, 4)
	buffer.writef32(output, cursor, float)
	return output, cursor + 4
end

function proto.writeDouble(output: buffer, cursor: number, double: number): (buffer, number)
	output = reserveBuffer(output, cursor, 8)
	buffer.writef64(output, cursor, double)
	return output, cursor + 8
end

function proto.writeFixed32(output: buffer, cursor: number, input: number): (buffer, number)
	output = reserveBuffer(output, cursor, 4)
	buffer.writeu32(output, cursor, input)
	return output, cursor + 4
end

function proto.writeSignedFixed32(output: buffer, cursor: number, input: number): (buffer, number)
	output = reserveBuffer(output, cursor, 4)
	buffer.writei32(output, cursor, input)
	return output, cursor + 4
end

function proto.writeFixed64(output: buffer, cursor: number, input: number): (buffer, number)
	output = reserveBuffer(output, cursor, 8)

	-- =(
	local formatted = string.format("%016x", input)
	buffer.writeu32(output, cursor, (assert(tonumber(formatted:sub(9, 16), 16), "Couldn't parse created hex")))
	buffer.writeu32(output, cursor + 4, (assert(tonumber(formatted:sub(1, 8), 16), "Couldn't parse created hex")))

	return output, cursor + 8
end

function proto.writeSignedFixed64(_output: buffer, _cursor: number, _input: number): (buffer, number)
	error("TODO: Write sfixed64")
end

function proto.writeTag(output: buffer, cursor: number, field: number, wireType: number): (buffer, number)
	return proto.writeVarInt(output, cursor, bit32.lshift(field, 3) + wireType)
end

function proto.writeBuffer(output: buffer, cursor: number, input: buffer, length: number): (buffer, number)
	output, cursor = proto.writeVarInt(output, cursor, length)

	output = reserveBuffer(output, cursor, length)
	buffer.copy(output, cursor, input, 0, length)

	return output, cursor + length
end

function proto.writeString(output: buffer, cursor: number, text: string): (buffer, number)
	return proto.writeBuffer(output, cursor, buffer.fromstring(text), #text)
end

proto.json = {}

function proto.json.serializeNumber(input: number): string | number
	return if input == math.huge
		then "Infinity"
		elseif input == -math.huge then "-Infinity"
		elseif input ~= input then "NaN"
		else input
end

function proto.json.deserializeNumber(input: string | number): number
	if input == "Infinity" then
		return math.huge
	elseif input == "-Infinity" then
		return -math.huge
	elseif input == "NaN" then
		return 0 / 0
	elseif typeof(input) == "string" then
		local number = tonumber(input)
		assert(number ~= nil, "Number given that could not be parsed")
		return number
	else
		return input
	end
end

function proto.json.serializeBuffer(input: buffer): string
	return base64.encode(buffer.tostring(input))
end

function proto.json.deserializeBuffer(input: string): buffer
	return buffer.fromstring(base64.decode(input))
end

return proto
