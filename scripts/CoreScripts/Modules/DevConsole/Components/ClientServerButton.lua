local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Constants = require(script.Parent.Parent.Constants)
local utilBarHeight = Constants.UtilityBarFormatting.FrameHeight
local smallFrameHeight = Constants.UtilityBarFormatting.SmallFrameHeight
local buttonWidth = Constants.UtilityBarFormatting.ClientServerButtonWidth
local smallButtonWidth = Constants.UtilityBarFormatting.ClientServerDropDownWidth
local font = Constants.Font.UtilBar
local fontSize = Constants.DefaultFontSize.UtilBar

local FullScreenDropDownButton = require(script.Parent.FullScreenDropDownButton)

local BUTTON_SIZE = UDim2.new(0, buttonWidth, 0, utilBarHeight)
local CLIENT_SERVER_NAMES = {"Client", "Server"}

local ClientServerButton = Roact.Component:extend("ClientServerButton")

function ClientServerButton:init()
	self.dropDownCallback = function(index)
		if index == 1 then
			self.props.onClientButton()
		elseif index == 2 then
			self.props.onServerButton()
		end
	end
end

function ClientServerButton:render()
	local useFullScreenDropDown = self.props.useFullScreenDropDown
	local isClientView = self.props.isClientView
	local layoutOrder = self.props.layoutOrder
	local onServerButton = self.props.onServerButton
	local onClientButton = self.props.onClientButton

	local serverButtonColor = Constants.Color.SelectedBlue
	local clientButtonColor = Constants.Color.UnselectedGray

	if isClientView then
		clientButtonColor = Constants.Color.SelectedBlue
		serverButtonColor = Constants.Color.UnselectedGray
	end

	if useFullScreenDropDown then
		return Roact.createElement(FullScreenDropDownButton, {
			buttonSize = UDim2.new(0, smallButtonWidth, 0, smallFrameHeight),
			dropDownList = CLIENT_SERVER_NAMES,
			selectedIndex = isClientView and 1 or 2,
			onSelection = self.dropDownCallback,
			layoutOrder = layoutOrder,
		})
	else
		return Roact.createElement("Frame", {
			Size = UDim2.new(0, 2 * buttonWidth, 0, utilBarHeight),
			BackgroundTransparency = 1,
			LayoutOrder = layoutOrder,
		}, {
			ClientButton = Roact.createElement('TextButton', {
				Text = CLIENT_SERVER_NAMES[1],
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
				Text = CLIENT_SERVER_NAMES[2],
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
end

return ClientServerButton