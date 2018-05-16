--[[
		Creates a vertical divider
		Props:
			Position : UDim2 - The position of the divider.
			DividerWidth : UDim - The width of the divider.
			DividerLength : UDim - The length of the divider.
			Color : Color3 - The color of the divider. Default GlobalSettings.PageDivideColor
			FillDirection : FillDirection - The direction of the divider.
]]
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)
local GlobalSettings = require(Modules.Shell.GlobalSettings)

return function(props)
	local color = props.Color or GlobalSettings.PageDivideColor
	local dividerLength = props.DividerLength
	local dividerWidth = props.DividerWidth or UDim.new(0,2)
	local position = props.Position
	local size
	if props.FillDirection == Enum.FillDirection.Horizontal then
		size = UDim2.new(dividerLength.Scale, dividerLength.Offset, dividerWidth.Scale, dividerWidth.Offset)
	else
		size = UDim2.new(dividerWidth.Scale, dividerWidth.Offset, dividerLength.Scale, dividerLength.Offset)
	end

	return Roact.createElement("Frame",{
		BackgroundColor3 = color,
		BorderSizePixel = 0,
		Size = size,
		Position = position,
	})
end