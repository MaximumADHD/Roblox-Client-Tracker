local Packages = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Packages.Roact)

local App = Packages.UIBlox.App
local Images = require(App.ImageSet.Images)

local Core = Packages.UIBlox.Core
local GenericButton = require(Core.Button.GenericButton)

local withStyle = require(Core.Style.withStyle)
local ControlState = require(Core.Control.Enum.ControlState)

local GenericButtonStory = Roact.PureComponent:extend("GenericButtonStory")

local BUTTON_STATE_COLOR = {
	[ControlState.Default] = "SystemPrimaryDefault",
	[ControlState.Hover] = "SystemPrimaryOnHover",
}

local CONTENT_STATE_COLOR = {
	[ControlState.Default] = "SystemPrimaryContent",
}

function GenericButtonStory:render()
	local isDisabled = self.props.controls.isDisabled
	local isLoading = self.props.controls.isLoading
	local userInteractionEnabled = self.props.controls.userInteractionEnabled
	local buttonImage = Images["component_assets/circle_17"]
	local text = self.props.text
	local icon = self.props.icon

	return withStyle(function(style)
		return Roact.createElement(GenericButton, {
			text = text,
			icon = icon,
			Size = UDim2.new(0, 144, 0, 48),
			buttonImage = buttonImage,
			buttonStateColorMap = BUTTON_STATE_COLOR,
			contentStateColorMap = CONTENT_STATE_COLOR,
			isDisabled = isDisabled,
			isLoading = isLoading,
			userInteractionEnabled = userInteractionEnabled,
			onActivated = function()
				print("Generic Button Clicked!")
			end,
			onStateChanged = function(oldState, newState)
				if oldState ~= ControlState.Initialize then
					print("state changed \n oldState:", oldState, " newState:", newState)
				end
			end,
		})
	end)
end

return {
	controls = {
		isDisabled = false,
		isLoading = false,
		userInteractionEnabled = true,
	},
	stories = {
		{
			name = "BlankButton",
			story = function(props)
				return Roact.createElement(GenericButtonStory, {
					controls = props.controls,
				})
			end,
		},
		{
			name = "TextButton",
			story = function(props)
				return Roact.createElement(GenericButtonStory, {
					controls = props.controls,
					text = "Cancel",
				})
			end,
		},
		{
			name = "LongTextButton",
			story = function(props)
				return Roact.createElement(GenericButtonStory, {
					controls = props.controls,
					text = "This text takes two lines",
				})
			end,
		},
		{
			name = "IconTextButton",
			story = function(props)
				return Roact.createElement(GenericButtonStory, {
					controls = props.controls,
					text = "Robux",
					icon = Images["icons/common/robux"],
				})
			end,
		},
		{
			name = "IconLongTextButton",
			story = function(props)
				return Roact.createElement(GenericButtonStory, {
					controls = props.controls,
					text = "This takes two lines",
					icon = Images["icons/common/robux"],
				})
			end,
		},
	},
}
