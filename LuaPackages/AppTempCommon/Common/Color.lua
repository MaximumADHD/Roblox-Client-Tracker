local Color = {}

function Color.RgbFromHex(hexColor)
	assert(hexColor >= 0 and hexColor <= 0xffffff, "RgbFromHex: Out of range")

	local b = hexColor % 256
	hexColor = (hexColor - b) / 256
	local g = hexColor % 256
	hexColor = (hexColor - g) / 256
	local r = hexColor

	return r, g, b
end

function Color.Color3FromHex(hexColor)
	return Color3.fromRGB(Color.RgbFromHex(hexColor))
end

return Color