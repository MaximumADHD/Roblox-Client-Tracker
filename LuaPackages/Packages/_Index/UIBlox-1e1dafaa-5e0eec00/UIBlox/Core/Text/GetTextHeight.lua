local GetTextSize = require(script.Parent.GetTextSize)

-- NOTE: Any number greater than 2^30 will make TextService:GetTextSize give invalid results
local MAX_BOUND = 10000

local function getTextHeight(text, font, fontSize, widthCap)
	local bounds = Vector2.new(widthCap, MAX_BOUND)
	local textSize = GetTextSize(text, fontSize, font, bounds)
	return textSize.Y
end

return getTextHeight