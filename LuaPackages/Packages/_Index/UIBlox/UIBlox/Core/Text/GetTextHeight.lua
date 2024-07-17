local GetTextSize = require(script.Parent.GetTextSize)

-- NOTE: Any number greater than 2^30 will make TextService:GetTextSize give invalid results
local MAX_BOUND = 10000

local function getTextHeight(text: string, font: Enum.Font, fontSize: number, widthCap: number, heightCap: number?)
	local defaultFrameHeight = heightCap or MAX_BOUND
	local bounds = Vector2.new(widthCap, math.min(MAX_BOUND, defaultFrameHeight))
	local textSize = GetTextSize(text, fontSize, font, bounds)
	return textSize.Y
end

return getTextHeight
