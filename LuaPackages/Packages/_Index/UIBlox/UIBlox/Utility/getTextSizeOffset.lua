local UtilityRoot = script.Parent
local _UIBlox = UtilityRoot.Parent
local TextService = game:GetService("TextService")

return function(font: Enum.Font)
	local success, newTextSizeOffset = pcall(function()
		return TextService:GetTextSize("", 0, font, Vector2.new(math.huge, math.huge)).Y
	end)
	return success, newTextSizeOffset
end
