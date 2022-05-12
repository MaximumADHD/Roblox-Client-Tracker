local EngineFeatureTextBoundsRoundUp = game:GetEngineFeature("TextBoundsRoundUp")

local TextService = game:GetService("TextService")

local Text = {}

-- FYI: Any number greater than 2^30 will make TextService:GetTextSize give invalid results
local MAX_BOUND = 10000

-- Remove with EngineFeatureTextBoundsRoundUp
Text._TEMP_PATCHED_PADDING = Vector2.new(0, 0)

if not EngineFeatureTextBoundsRoundUp then
	Text._TEMP_PATCHED_PADDING = Vector2.new(2, 2)
end

-- Wrapper function for GetTextSize
function Text.GetTextBounds(text, font, fontSize, bounds)
	return TextService:GetTextSize(text, fontSize, font, bounds) + Text._TEMP_PATCHED_PADDING
end

function Text.GetTextWidth(text, font, fontSize)
	return Text.GetTextBounds(text, font, fontSize, Vector2.new(MAX_BOUND, MAX_BOUND)).X
end

function Text.GetTextHeight(text, font, fontSize, widthCap)
	return Text.GetTextBounds(text, font, fontSize, Vector2.new(widthCap, MAX_BOUND)).Y
end

return Text
