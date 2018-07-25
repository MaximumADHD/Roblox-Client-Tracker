local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Constants = require(script.Parent.Parent.Constants)
local FRAME_HEIGHT = Constants.UtilityBarFormatting.FrameHeight
local SMALL_FRAME_HEIGHT = Constants.UtilityBarFormatting.SmallFrameHeight
local CS_BUTTON_WIDTH = Constants.UtilityBarFormatting.ClientServerButtonWidth
local SMALL_CS_BUTTON_WIDTH = Constants.UtilityBarFormatting.ClientServerDropDownWidth
local FONT = Constants.Font.UtilBar
local FONT_SIZE = Constants.DefaultFontSize.UtilBar
local FONT_COLOR = Constants.Color.Text

local FullScreenDropDownButton = require(script.Parent.FullScreenDropDownButton)
local DropDown = require(script.Parent.DropDown)

local BUTTON_SIZE = UDim2.new(0, CS_BUTTON_WIDTH, 0, FRAME_HEIGHT)
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
	local formFactor = self.props.formFactor
	local useDropDown = self.props.useDropDown
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

	if formFactor == Constants.FormFactor.Small then
		return Roact.createElement(FullScreenDropDownButton, {
			buttonSize = UDim2.new(0, SMALL_CS_BUTTON_WIDTH, 0, SMALL_FRAME_HEIGHT),
			dropDownList = CLIENT_SERVER_NAMES,
			selectedIndex = isClientView and 1 or 2,
			onSelection = self.dropDownCallback,
			layoutOrder = layoutOrder,
		})

	elseif useDropDown then
		return Roact.createElement(DropDown, {
			buttonSize = UDim2.new(0, SMALL_CS_BUTTON_WIDTH, 0, SMALL_FRAME_HEIGHT),
			dropDownList = CLIENT_SERVER_NAMES,
			selectedIndex = isClientView and 1 or 2,
			onSelection = self.dropDownCallback,
			layoutOrder = layoutOrder,
		})
	else
		return Roact.createElement("Frame", {
			Size = UDim2.new(0, 2 * CS_BUTTON_WIDTH, 0, FRAME_HEIGHT),
			BackgroundTransparency = 1,
			LayoutOrder = layoutOrder,
		}, {
			ClientButton = Roact.createElement('TextButton', {
				Text = CLIENT_SERVER_NAMES[1],
				TextSize = FONT_SIZE,
				TextColor3 = FONT_COLOR,
				Font = FONT,
				Size = BUTTON_SIZE,
				AutoButtonColor = false,
				BackgroundColor3 = clientButtonColor,
				BackgroundTransparency = 0,
				LayoutOrder = 1,

				[Roact.Event.Activated] = onClientButton,
			}),
			ServerButton = Roact.createElement('TextButton', {
				Text = CLIENT_SERVER_NAMES[2],
				TextSize = FONT_SIZE,
				TextColor3 = FONT_COLOR,
				Font = FONT,
				Size = BUTTON_SIZE,
				AutoButtonColor = false,
				Position = UDim2.new(0, CS_BUTTON_WIDTH, 0, 0),
				BackgroundColor3 = serverButtonColor,
				BackgroundTransparency = 0,
				LayoutOrder = 2,

				[Roact.Event.Activated] = onServerButton,
			})
		})
	end
end

return ClientServerButton