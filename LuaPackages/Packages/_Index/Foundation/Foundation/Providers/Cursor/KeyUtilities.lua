local Foundation = script:FindFirstAncestor("Foundation")

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local function encodeKey(tokens: Tokens, radius: UDim?, offset: number?, borderWidth: number?): string
	local pRadius = radius or UDim.new(0, 0)
	local pBorderWidth = borderWidth or tokens.Stroke.Thick
	local pOffset = (offset or tokens.Size.Size_150) - pBorderWidth

	return pRadius.Scale .. " " .. pRadius.Offset .. " " .. pOffset .. " " .. pBorderWidth
end

local decodeKey = function(key: string): (UDim, number, number)
	local parts = string.split(key, " ")

	local radius1 = tonumber(parts[1]) :: number
	local radius2 = tonumber(parts[2]) :: number
	local offset = tonumber(parts[3]) :: number
	local borderWidth = tonumber(parts[4]) :: number

	local cornerRadius = UDim.new(radius1, math.max(0, radius2 + offset))

	return cornerRadius, offset, borderWidth
end

return {
	encodeKey = encodeKey,
	decodeKey = decodeKey,
}
