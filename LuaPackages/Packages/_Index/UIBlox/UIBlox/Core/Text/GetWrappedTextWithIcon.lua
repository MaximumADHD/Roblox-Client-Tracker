--!nonstrict
local GetTextSize = require(script.Parent.GetTextSize)

--[[
	Add spaces to the front of the text to make room for an inline icon.

	This method has flaws given our non-monospaced font but is the
	easiest closest approach to measuring inlined icons.

	text - The text to pad with spaces.
	fontSize - The integer representing the font size used.
	font - The font used.
	iconWidth - The width of the inline icon.
	iconPadding - The horizontal padding between the icon and text.
]]
local function getWrappedTextWithIcon(text, fontSize, font, iconWidth, iconPadding)
	-- GetTextSize doesn't tightly wrap the size of a single space so we
	-- use the difference between two spaces for exact size.
	local spaceTextSize = GetTextSize("  ", fontSize, font, Vector2.new(0, 0))
		- GetTextSize(" ", fontSize, font, Vector2.new(0, 0))
	local numSpaces = math.ceil((iconWidth + iconPadding) / spaceTextSize.X)
	return string.rep(" ", numSpaces) .. text
end

return getWrappedTextWithIcon
