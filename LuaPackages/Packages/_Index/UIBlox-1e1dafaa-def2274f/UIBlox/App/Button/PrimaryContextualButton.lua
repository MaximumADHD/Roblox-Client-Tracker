local Button = script.Parent
local App = Button.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)

local Images = require(App.ImageSet.Images)
local validateButtonProps = require(Button.validateButtonProps)
local GenericButton = require(UIBlox.Core.Button.GenericButton)
local ControlState = require(UIBlox.Core.Control.Enum.ControlState)

local PrimaryContextualButton = Roact.PureComponent:extend("PrimaryContextualButton")

local BUTTON_STATE_COLOR = {
	[ControlState.Default] = "ContextualPrimaryDefault",
	[ControlState.Hover] = "ContextualPrimaryOnHover",
}

local CONTENT_STATE_COLOR = {
	[ControlState.Default] = "ContextualPrimaryContent",
}

PrimaryContextualButton.defaultProps = {
	isDisabled = false,
	isLoading = false,
}

function PrimaryContextualButton:render()
	assert(validateButtonProps(self.props))
	local image = Images["component_assets/circle_17"]
	return Roact.createElement(GenericButton, {
		Size = self.props.size,
		AnchorPoint = self.props.anchorPoint,
		Position = self.props.position,
		LayoutOrder = self.props.layoutOrder,
		icon = self.props.icon,
		text = self.props.text,
		isDisabled = self.props.isDisabled,
		isLoading = self.props.isLoading,
		onActivated = self.props.onActivated,
		onStateChanged = self.props.onStateChanged,
		userInteractionEnabled = self.props.userInteractionEnabled,
		buttonImage = image,
		buttonStateColorMap = BUTTON_STATE_COLOR,
		contentStateColorMap = CONTENT_STATE_COLOR,
	})
end

return PrimaryContextualButton