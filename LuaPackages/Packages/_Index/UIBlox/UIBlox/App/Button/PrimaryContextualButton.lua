local Button = script.Parent
local App = Button.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)
local RoactGamepad = require(Packages.RoactGamepad)

local Images = require(App.ImageSet.Images)
local CursorKind = require(App.SelectionImage.CursorKind)
local withSelectionCursorProvider = require(App.SelectionImage.withSelectionCursorProvider)
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
	local delayedInputImage = Images['component_assets/bulletRight_17']
	return withSelectionCursorProvider(function(getSelectionCursor)
		return Roact.createElement(RoactGamepad.Focusable[GenericButton], {
			Size = self.props.size,
			AnchorPoint = self.props.anchorPoint,
			Position = self.props.position,
			LayoutOrder = self.props.layoutOrder,
			SelectionImageObject = getSelectionCursor(CursorKind.RoundedRectNoInset),
			icon = self.props.icon,
			text = self.props.text,
			inputIcon = self.props.inputIcon,
			isDisabled = self.props.isDisabled,
			isLoading = self.props.isLoading,
			isDelayedInput = self.props.isDelayedInput,
			enableInputDelayed = self.props.enableInputDelayed,
			delayInputSeconds = self.props.delayInputSeconds,
			onActivated = self.props.onActivated,
			onStateChanged = self.props.onStateChanged,
			userInteractionEnabled = self.props.userInteractionEnabled,
			buttonImage = image,
			delayedInputImage = delayedInputImage,
			buttonStateColorMap = BUTTON_STATE_COLOR,
			contentStateColorMap = CONTENT_STATE_COLOR,

			NextSelectionUp = self.props.NextSelectionUp,
			NextSelectionDown = self.props.NextSelectionDown,
			NextSelectionLeft = self.props.NextSelectionLeft,
			NextSelectionRight = self.props.NextSelectionRight,
			[Roact.Ref] = self.props.buttonRef,
		})
	end)
end

return Roact.forwardRef(function (props, ref)
	return Roact.createElement(PrimaryContextualButton, Cryo.Dictionary.join(
		props,
		{buttonRef = ref}
	))
end)
