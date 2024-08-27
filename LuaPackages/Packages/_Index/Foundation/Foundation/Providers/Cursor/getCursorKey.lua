local Foundation = script:FindFirstAncestor("Foundation")

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local encodeKey = function(radius: UDim, offset: number, borderWidth: number): string
	return string.format("%.2f %.2f %.2f %.2f", radius.Scale, radius.Offset, offset, borderWidth)
end

local function getCursorKey(tokens: Tokens, radius: UDim?, offset: number?, borderWidth: number?): string
	local pRadius = UDim.new(0, 0)
	if radius ~= nil then
		pRadius = radius
	end

	local pBorderWidth = tokens.Stroke.Thick
	if borderWidth ~= nil then
		assert(borderWidth > 0, "Error! borderWidth should be larger than 0.")
		pBorderWidth = borderWidth
	end

	local pOffset = 0
	if offset ~= nil then
		pOffset = (offset - pBorderWidth)
	else
		pOffset = (tokens.Size.Size_150 - pBorderWidth)
	end

	return encodeKey(pRadius, pOffset, pBorderWidth)
end

return getCursorKey
