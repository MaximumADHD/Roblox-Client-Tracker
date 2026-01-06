local Root = script:FindFirstAncestor("Utils").Parent
local defaultTokenColors = require(script.defaultTokenColors)

local Types = require(Root.Types)

local Theme = {
	tokenColors = {},
	defaultColors = defaultTokenColors,
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
Theme.setColors(defaultTokenColors)

return Theme
