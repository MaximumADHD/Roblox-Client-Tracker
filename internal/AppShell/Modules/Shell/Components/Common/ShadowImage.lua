--[[
		Creates a component with a shadow image
]]
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)
local GlobalSettings = require(Modules.Shell.GlobalSettings)

return function(props)
	return Roact.createElement("ImageLabel", {
		Name = 'Shadow',
		Image = GlobalSettings.Images.Shadow,
		Size = UDim2.new(1,3,1,3),
		Position = UDim2.new(0,0,0,0),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(10,10,28,28),
		BackgroundTransparency = 1,
		ZIndex = props.ZIndex or 1,
	})
end