local TextService = game:GetService("TextService")

local PREVENT_WRAPPING = Vector2.new(math.huge, math.huge)

local function getTextWidth(text, fontSize, font)
	return TextService:GetTextSize(text, fontSize, font, PREVENT_WRAPPING).X
end

return getTextWidth