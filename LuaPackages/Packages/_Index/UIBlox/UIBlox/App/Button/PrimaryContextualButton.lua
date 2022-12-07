local Button = script.Parent
local App = Button.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local Cryo = require(Packages.Cryo)
local RoactGamepad = require(Packages.RoactGamepad)

local Images = require(App.ImageSet.Images)
local CursorKind = require(App.SelectionImage.CursorKind)
local withSelectionCursorProvider = require(App.SelectionImage.withSelectionCursorProvider)
local validateButtonProps = require(Button.validateButtonProps)
local GenericButton = require(UIBlox.Core.Button.GenericButton)
local ControlState = require(UIBlox.Core.Control.Enum.ControlState)
local UIBloxConfig = require(UIBlox.UIBloxConfig)

local PrimaryContextualButton = React.PureComponent:extend("PrimaryContextualButton")

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
	local delayedInputImage = Images["component_assets/bulletRight_17"]
	return withSelectionCursorProvider(function(getSelectionCursor)
		return React.createElement(RoactGamepad.Focusable[GenericButton], {
			[React.Tag] = self.props[React.Tag],
			Size = self.props.size,
			standardSize = if UIBloxConfig.enableStandardButtonSizes then self.props.standardSize else nil,
			maxWidth = if UIBloxConfig.enableStandardButtonSizes then self.props.maxWidth else nil,
			fitContent = if UIBloxConfig.enableStandardButtonSizes then self.props.fitContent else nil,
			AnchorPoint = self.props.anchorPoint,
			Position = self.props.position,
			LayoutOrder = self.props.layoutOrder,
			SelectionImageObject = getSelectionCursor(CursorKind.RoundedRectNoInset),
			icon = self.props.icon,
			text = self.props.text,
			inputIcon = self.props.inputIcon,
			fontStyle = self.props.fontStyle,
			isDisabled = self.props.isDisabled,
			isLoading = self.props.isLoading,
			isHoverBackgroundEnabled = true,
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
			ref = self.props.buttonRef,

			[React.Change.AbsoluteSize] = self.props[React.Change.AbsoluteSize],
			[React.Change.AbsolutePosition] = self.props[React.Change.AbsolutePosition],
		})
	end)
end

return React.forwardRef(function(props, ref)
	return React.createElement(PrimaryContextualButton, Cryo.Dictionary.join(props, { buttonRef = ref }))
end)
