local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Constants = require(script.Parent.Parent.Constants)
local utilBarHeight = Constants.UtilityBarFormatting.FrameHeight
local buttonWidth = Constants.UtilityBarFormatting.ClientServerButtonWidth
local font = Constants.Font.UtilBar
local fontSize = Constants.DefaultFontSize.UtilBar

local BUTTON_SIZE = UDim2.new(0, buttonWidth, 0, utilBarHeight)

local ClientServerButton = Roact.Component:extend("ClientServerButton")

function ClientServerButton:render()
	local isClientView = self.props.isClientView
	local onServerButton = self.props.onServerButton
	local onClientButton = self.props.onClientButton

	local serverButtonColor = Constants.Color.SelectedBlue
	local clientButtonColor = Constants.Color.UnselectedGray
	if isClientView then
		clientButtonColor = Constants.Color.SelectedBlue
		serverButtonColor = Constants.Color.UnselectedGray
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(0, 2 * buttonWidth, 0, utilBarHeight),
		BackgroundTransparency = 1,
		LayoutOrder = 1
	}, {
		ClientButton = Roact.createElement('TextButton', {
			Text = "Client",
			TextScaled = false,
			TextSize = fontSize,
			TextColor3 = Color3.new(1, 1, 1),
			Font = font,
			Size = BUTTON_SIZE,
			BackgroundColor3 = clientButtonColor,
			BackgroundTransparency = 0,
			LayoutOrder = 1,

			[Roact.Event.Activated] = onClientButton,
		}),
		ServerButton = Roact.createElement('TextButton', {
			Text = "Server",
			TextScaled = false,
			TextSize = fontSize,
			TextColor3 = Color3.new(1, 1, 1),
			Font = font,
			Size = BUTTON_SIZE,
			Position = UDim2.new(0, buttonWidth, 0, 0),
			BackgroundColor3 = serverButtonColor,
			BackgroundTransparency = 0,
			LayoutOrder = 2,

			[Roact.Event.Activated] = onServerButton,
		})
	})
end

return ClientServerButton