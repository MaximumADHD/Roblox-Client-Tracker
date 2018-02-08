--[[
		Creates a component with a gamepad image with a resize hint for the overscan screen
]]
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)
local GlobalSettings = require(Modules.Shell.GlobalSettings)
local Strings = require(Modules.Shell.LocalizedStrings)

return function(props)
	return Roact.createElement("ImageLabel", {
		Size = UDim2.new(0, 599, 0, 404),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundTransparency = 1,
		Image = "rbxasset://textures/ui/Shell/ScreenAdjustment/Controller@1080.png",
	}, {
		Line = Roact.createElement("Frame", {
			Size = UDim2.new(0, 240, 0, 1),
			Position = UDim2.new(0, 437, 0, 220),
			BackgroundTransparency = 0,
			BackgroundColor3 = Color3.new(1, 1, 1),
			BorderSizePixel = 0,
		}, {
			InputHint = Roact.createElement("TextLabel", {
				Size = UDim2.new(0, 0, 0, 0),
				Position = UDim2.new(1, 3, 0, -1),
				BackgroundTransparency = 1,
				Font = GlobalSettings.RegularFont,
				FontSize = GlobalSettings.ButtonSize,
				TextColor3 = GlobalSettings.WhiteTextColor,
				TextXAlignment = Enum.TextXAlignment.Left,
				Text = Strings:LocalizedString("ResizeScreenInputHint"),
			})
		}),
	})
end