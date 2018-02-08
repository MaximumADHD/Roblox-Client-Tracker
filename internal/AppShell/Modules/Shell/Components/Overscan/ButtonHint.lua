--[[
		Creates a component with a button image and hint text
]]
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)
local GlobalSettings = require(Modules.Shell.GlobalSettings)

return function(props)
	return Roact.createElement("ImageLabel", {
		Size = UDim2.new(0, 65, 0, 65),
		Position = props.Position,
		BackgroundTransparency = 1,
		Image = props.Image,
	}, {
		Text = Roact.createElement("TextLabel", {
			Size = UDim2.new(0, 0, 1, 0),
			Position = UDim2.new(1, 5, 0, -3),
			BackgroundTransparency = 1,
			Font = GlobalSettings.RegularFont,
			FontSize = GlobalSettings.ButtonSize,
			TextColor3 = GlobalSettings.WhiteTextColor,
			TextXAlignment = Enum.TextXAlignment.Left,
			Text = props.Text,
		})
	})
end