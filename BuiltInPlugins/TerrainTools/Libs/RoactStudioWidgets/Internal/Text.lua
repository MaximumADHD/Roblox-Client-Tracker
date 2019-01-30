--[[
	Text helper functions
]]

local TextService = game:GetService("TextService")

local hugeFrameSizeNoTextWrapping = Vector2.new(5000, 5000)

local Text = {}

function Text.calculateTextSize(text, textSize, font)
	return TextService:GetTextSize(text, textSize, font, hugeFrameSizeNoTextWrapping)
end

return Text