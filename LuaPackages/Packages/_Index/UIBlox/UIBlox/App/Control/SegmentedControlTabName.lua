local Control = script.Parent
local App = Control.Parent
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local Cryo = require(Packages.Cryo)

local Interactable = require(Core.Control.Interactable)

local ControlState = require(Core.Control.Enum.ControlState)
local getContentStyle = require(Core.Button.getContentStyle)

local withStyle = require(UIBlox.Core.Style.withStyle)
local ImageSetComponent = require(Core.ImageSet.ImageSetComponent)
local ShimmerPanel = require(UIBlox.App.Loading.ShimmerPanel)
local IconSize = require(UIBlox.App.ImageSet.Enum.IconSize)
local getIconSize = require(UIBlox.App.ImageSet.getIconSize)
local GenericTextLabel = require(Core.Text.GenericTextLabel.GenericTextLabel)
local validateFontInfo = require(UIBlox.Core.Style.Validator.validateFontInfo)

local validateImage = require(Core.ImageSet.Validator.validateImage)

local CONTENT_PADDING = 5

local SegmentedControlTabName = Roact.PureComponent:extend("SegmentedControlTabName")

function SegmentedControlTabName:init()
	self.state = {
		controlState = ControlState.Initialize
	}

	self.onStateChanged = function(oldState, newState)
		self:setState({
			controlState = newState,
		})
		if self.props.onStateChanged then
			self.props.onStateChanged(oldState, newState)
		end
	end
end

local colorStateMap = t.interface({
	-- The default state theme color class
	[ControlState.Default] = t.string,
})

local validateProps = t.interface({
	--The icon of the button
	icon = t.optional(validateImage),

	--The text of the button
	text = t.optional(t.string),

	fontStyle = t.optional(validateFontInfo),

	--The theme color class mapping for different text tates
	textStateColorMap = t.optional(colorStateMap),

	--The theme color class mapping for different icon tates
	iconStateColorMap = t.optional(colorStateMap),

	--Is the button disabled
	isDisabled = t.optional(t.boolean),

	--Is the button loading
	isLoading = t.optional(t.boolean),

	--The activated callback for the button
	onActivated = t.callback,

	--The state change callback for the button
	onStateChanged = t.optional(t.callback),

	--A Boolean value that determines whether user events are ignored and sink input
	userInteractionEnabled = t.optional(t.boolean),

	isSelectedStyle = t.optional(t.boolean),

	-- Note that this component can accept all valid properties of the Roblox ImageButton instance
})

SegmentedControlTabName.defaultProps = {
	isDisabled = false,
	isLoading = false,
	isSelectedStyle = false,
	SliceCenter = Rect.new(8, 8, 9, 9),
	textStateColorMap = {
		[ControlState.Default] = "SecondaryContent",
		[ControlState.Hover] = "SecondaryOnHover",
	},
	buttonStateColorMap = {
		[ControlState.Default] = "SecondaryContent",
	}
}

SegmentedControlTabName.validateProps = validateProps

function SegmentedControlTabName:render()
	return withStyle(function(style)

		local currentState = self.state.controlState

		local text = self.props.text
		local icon = self.props.icon
		local isLoading = self.props.isLoading
		local isDisabled = self.props.isDisabled

		local buttonStateColorMap = self.props.buttonStateColorMap
		local contentStateColorMap = self.props.contentStateColorMap
		local textStateColorMap = self.props.textStateColorMap or contentStateColorMap
		local iconStateColorMap = self.props.iconStateColorMap or contentStateColorMap

		if isLoading then
			isDisabled = true
		end

		local textState = currentState
		if self.props.isDisabled then
			textState = ControlState.Disabled
		elseif self.props.isSelectedStyle then
			textState = ControlState.Hover
		end
		local buttonStyle = getContentStyle(buttonStateColorMap, currentState, style)
		local textStyle = text and getContentStyle(textStateColorMap, textState, style)
		local iconStyle = icon and getContentStyle(iconStateColorMap, currentState, style)
		local fontStyle = self.props.fontStyle or style.Font.Header2

		local buttonContentLayer
		if isLoading then
			buttonContentLayer = {
				isLoadingShimmer = Roact.createElement(ShimmerPanel, {
					Size = UDim2.new(1, 0, 1, 0),
				})
			}
		else
			buttonContentLayer = self.props[Roact.Children] or {
				UIListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, CONTENT_PADDING),
				}),
				Icon = icon and Roact.createElement(ImageSetComponent.Label, {
					Size = UDim2.new(0, getIconSize(IconSize.Medium), 0, getIconSize(IconSize.Medium)),
					BackgroundTransparency = 1,
					Image = icon,
					ImageColor3 = iconStyle.Color,
					ImageTransparency = iconStyle.Transparency,
					LayoutOrder = 1,
				}) or nil,
				Text = text and Roact.createElement(GenericTextLabel, {
					BackgroundTransparency = 1,
					Text = text,
					fontStyle = fontStyle,
					colorStyle = textStyle,
					LayoutOrder = 2,
				}) or nil,
			}
		end

		return Roact.createElement(Interactable, Cryo.Dictionary.join(self.props, {
			icon = Cryo.None,
			text = Cryo.None,
			buttonStateColorMap = Cryo.None,
			contentStateColorMap = Cryo.None,
			textStateColorMap = Cryo.None,
			iconStateColorMap = Cryo.None,
			onActivated = Cryo.None,
			isLoading = Cryo.None,
			isSelectedStyle = Cryo.None,
			[Roact.Children] = Cryo.None,
			isDisabled = isDisabled,
			onStateChanged = self.onStateChanged,
			userInteractionEnabled = self.props.userInteractionEnabled,
			Image = Cryo.None,
			ScaleType = Enum.ScaleType.Slice,
			ImageColor3 = buttonStyle.Color,
			ImageTransparency = buttonStyle.Transparency,
			BackgroundTransparency = 1,
			AutoButtonColor = false,
			[Roact.Event.Activated] = self.props.onActivated,
		}), {
			ButtonContent = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
			}, buttonContentLayer)
		})
	end)
end

return SegmentedControlTabName
