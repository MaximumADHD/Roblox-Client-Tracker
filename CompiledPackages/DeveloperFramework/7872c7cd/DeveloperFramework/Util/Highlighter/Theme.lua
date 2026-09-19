local DEFAULT_TOKEN_COLORS = {
	background = Color3.fromRGB(0, 0, 0),
	iden = Color3.fromRGB(234, 234, 234),
	keyword = Color3.fromRGB(215, 174, 255),
	builtin = Color3.fromRGB(131, 206, 255),
	string = Color3.fromRGB(196, 255, 193),
	number = Color3.fromRGB(255, 125, 125),
	comment = Color3.fromRGB(140, 140, 155),
	operator = Color3.fromRGB(255, 239, 148),
	custom = Color3.fromRGB(119, 122, 255),
}

local Types = require(script.Parent.Types)

local Theme = {
	tokenColors = {},
	defaultColors = DEFAULT_TOKEN_COLORS,
}

function Theme.setColors(tokenColors: Types.TokenColors)
	assert(type(tokenColors) == "table", "Theme.updateColors expects a table")

	for tokenName, color in tokenColors do
		Theme.tokenColors[tokenName] = color
	end
end

function Theme.getColoredRichText(color: Color3, text: string): string
	return '<font color="#' .. color:ToHex() .. '">' .. text .. "</font>"
end

function Theme.getColor(tokenName: Types.TokenName): Color3
	return Theme.tokenColors[tokenName]
end

-- Initialize
Theme.setColors(DEFAULT_TOKEN_COLORS)

return Theme
