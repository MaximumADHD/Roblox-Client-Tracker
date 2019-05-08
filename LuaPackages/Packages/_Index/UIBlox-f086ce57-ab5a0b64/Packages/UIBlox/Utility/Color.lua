local Color = {}

function Color.rgbFromHex(hexColor)
	assert(hexColor >= 0 and hexColor <= 0xffffff, "rgbFromHex: Out of range")

	local b = hexColor % 256
	hexColor = (hexColor - b) / 256
	local g = hexColor % 256
	hexColor = (hexColor - g) / 256
	local r = hexColor

	return r, g, b
end

function Color.color3FromHex(hexColor)
	return Color3.fromRGB(Color.rgbFromHex(hexColor))
end

return Color