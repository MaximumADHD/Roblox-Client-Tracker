local TextService = game:GetService('TextService')
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)

local GlobalSettings = require(Modules.Shell.GlobalSettings)
local Strings = require(Modules.Shell.LocalizedStrings)
local Utility = require(Modules.Shell.Utility)

local ControllerHint = require(script.Parent.ControllerHint)
local Edges = require(script.Parent.Edges)
local ButtonHint = require(script.Parent.ButtonHint)

local Overscan = Roact.Component:extend("Overscan")

function Overscan:render()
	-- We should really have a better API to handle text fits
	local resetOffset = TextService:GetTextSize(
		Strings:LocalizedString('ResetWord'),
		Utility.ConvertFontSizeEnumToInt(GlobalSettings.ButtonSize),
		GlobalSettings.RegularFont,
		Vector2.new(0, 0)
	)

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BorderSizePixel = 1,
		BackgroundTransparency = self.props.BackgroundTransparency,
		BackgroundColor3 = Color3.new(3/255, 3/255, 3/255),
	}, {
		Roact.createElement("ImageLabel", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			BackgroundColor3 = Color3.new(3/255, 3/255, 3/255),
			BorderSizePixel = 1,
			Visible = self.props.ImageVisible,
			Image = "rbxasset://textures/ui/Shell/ScreenAdjustment/Background.png",
		}),

		Title = Roact.createElement("TextLabel", {
			Position = UDim2.new(0, 230, 0, 205),
			BackgroundTransparency = 1,
			Font = GlobalSettings.LightFont,
			FontSize = GlobalSettings.HeaderSize,
			TextColor3 = GlobalSettings.WhiteTextColor,
			TextXAlignment = Enum.TextXAlignment.Left,
			Text = Strings:LocalizedString("ScreenSizeWord");
		}),

		Prompt = Roact.createElement("TextLabel", {
			Position = UDim2.new(0, 230, 0, 243),
			BackgroundTransparency = 1,
			Font = GlobalSettings.RegularFont,
			FontSize = GlobalSettings.ButtonSize,
			TextColor3 = GlobalSettings.WhiteTextColor,
			TextXAlignment = Enum.TextXAlignment.Left,
			Text = Strings:LocalizedString("ResizeScreenPrompt"),
		}),

		Controller = Roact.createElement(ControllerHint),

		AcceptHint = Roact.createElement(ButtonHint, {
			Position = UDim2.new(0.5, 25, 0.75, 0),
			Image = "rbxasset://textures/ui/Shell/ButtonIcons/AButton.png",
			Text = Strings:LocalizedString('AcceptWord'),
		}),

		ResetHint = Roact.createElement(ButtonHint, {
			Position = UDim2.new(0.5, -25 - 65 - resetOffset.x, 0.75, 0),
			Image = "rbxasset://textures/ui/Shell/ButtonIcons/XButton.png",
			Text = Strings:LocalizedString('ResetWord'),
		}),

		EdgeSelector = Roact.createElement(Edges, {
			onSetEdges = self.props.onUnmount,
		}),
	})
end

return Overscan