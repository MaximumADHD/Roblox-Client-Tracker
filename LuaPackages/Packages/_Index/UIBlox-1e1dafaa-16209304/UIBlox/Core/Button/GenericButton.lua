--[[
	Create a generic button that can be themed for different state the background and content.
]]
local ButtonRoot = script.Parent
local CoreRoot = ButtonRoot.Parent
local UIBloxRoot = CoreRoot.Parent
local Packages = UIBloxRoot.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local Cryo = require(Packages.Cryo)

local ControllableButton = require(ButtonRoot.ControllableButton)

local ControlState = require(UIBloxRoot.Core.Control.Enum.ControlState)

local withStyle = require(UIBloxRoot.Style.withStyle)
local Images = require(UIBloxRoot.App.ImageSet.Images)
local ImageSetComponent = require(UIBloxRoot.Core.ImageSet.ImageSetComponent)
local ShimmerPanel = require(UIBloxRoot.App.Loading.ShimmerPanel)
local IconSize = require(UIBloxRoot.App.Constant.IconSize)
local GenericTextLabel = require(UIBloxRoot.Core.Text.GenericTextLabel.GenericTextLabel)

local CONTENT_PADDING = 5

local GenericButton = Roact.PureComponent:extend("GenericButton")

local function getButtonStyle(contentMap, controlState, style)

	local buttonThemeClass = contentMap[controlState]
		or contentMap[ControlState.Default]

	local buttonStyle = {
		Color = style.Theme[buttonThemeClass].Color,
		Transparency = style.Theme[buttonThemeClass].Transparency,
	}

	--Based on the design specs, the disabled and pressed state is 0.5 * alpha value
	if controlState == ControlState.Disabled or
		controlState == ControlState.Pressed then
			buttonStyle.Transparency = 0.5 * buttonStyle.Transparency + 0.5
	end
	return buttonStyle
end

local function getContentStyle(contentMap, controlState, style)

	local contentThemeClass = contentMap[controlState]
		or contentMap[ControlState.Default]

	local contentStyle = {
		Color = style.Theme[contentThemeClass].Color,
		Transparency = style.Theme[contentThemeClass].Transparency,
	}

	--Based on the design specs, the disabled and pressed state is 0.5 * alpha value
	if controlState == ControlState.Disabled or
		controlState == ControlState.Pressed then
			contentStyle.Transparency = 0.5 * contentStyle.Transparency + 0.5
	end
	return contentStyle
end

function GenericButton:init()
	self.isMounted = false
	self.state = {
		controlState = ControlState.Initialize
	}

	self.onStateChanged = function(oldState, newState)
		if self.isMounted then
			self:setState({
				controlState = newState,
			})
			if self.props.onStateChanged then
				self.props.onStateChanged(oldState, newState)
			end
		end
	end
end

local colorStateMap = t.interface({
	-- The default state theme color class
	[ControlState.Default] = t.string,
})

local validateProps = t.interface({
	--The icon of the button
	icon = t.optional(t.string),

	--The text of the button
	text = t.optional(t.string),

	--The image being used as the background of the button
	buttonImage = t.string,

	--The theme color class mapping for different button states
	buttonStateColorMap = colorStateMap,

	--The theme color class mapping for different content tates
	contentStateColorMap = t.optional(colorStateMap),

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

	--THe state change callback for the button
	onStateChanged = t.optional(t.callback),

	--A Boolean value that determines whether user events are ignored and sink input
	userInteractionEnabled = t.optional(t.boolean),

	-- Note that this component can accept all valid properties of the Roblox TextLabel instance
})

GenericButton.defaultProps = {
	isDisabled = false,
	isLoading = false,
}

function GenericButton:render()
	return withStyle(function(style)

		assert(validateProps(self.props))
		assert(t.table(style), "Style provider is missing.")

		local currentState = self.state.controlState

		local text = self.props.text
		local icon = self.props.icon and ( Images[self.props.icon] or self.props.icon ) or nil
		local isLoading = self.props.isLoading
		local isDisabled = self.props.isDisabled

		local buttonStateColorMap = self.props.buttonStateColorMap
		local contentStateColorMap = self.props.contentStateColorMap
		local textStateColorMap = self.props.textStateColorMap or contentStateColorMap
		local iconStateColorMap = self.props.iconStateColorMap or contentStateColorMap

		if text then
			assert(colorStateMap(textStateColorMap), "textStateColorMap is missing or invalid.")
		end
		if icon then
			assert(colorStateMap(iconStateColorMap), "iconStateColorMap is missing or invalid.")
		end

		if isLoading then
			isDisabled = true
		end

		local buttonStyle = getButtonStyle(buttonStateColorMap, currentState, style)
		local textStyle = text and getContentStyle(textStateColorMap, currentState, style)
		local iconStyle = icon and getContentStyle(iconStateColorMap, currentState, style)
		local buttonImage = Images[self.props.buttonImage]
		local fontStyle = style.Font.Header2

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
					Size = UDim2.new(0, IconSize.Regular, 0, IconSize.Regular),
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

		return Roact.createElement(ControllableButton, Cryo.Dictionary.join(self.props, {
			icon = Cryo.None,
			text = Cryo.None,
			buttonImage = Cryo.None,
			buttonStateColorMap = Cryo.None,
			contentStateColorMap = Cryo.None,
			textStateColorMap = Cryo.None,
			iconStateColorMap = Cryo.None,
			onActivated = Cryo.None,
			isLoading = Cryo.None,
			[Roact.Children] = Cryo.None,
			isDisabled = isDisabled,
			onStateChanged = self.onStateChanged,
			userInteractionEnabled = self.props.userInteractionEnabled,
			Image = buttonImage,
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(8, 8, 9, 9),
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


function GenericButton:didMount()
	self.isMounted = true
end

function GenericButton:willUnmount()
	self.isMounted = false
end

return GenericButton