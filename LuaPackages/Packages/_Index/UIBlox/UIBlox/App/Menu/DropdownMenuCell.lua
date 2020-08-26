--[[
	Create a generic button that can be themed for different state the background and content.
]]
local Menu = script.Parent
local App = Menu.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Core = UIBlox.Core

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local Cryo = require(Packages.Cryo)

local Interactable = require(Core.Control.Interactable)

local ControlState = require(Core.Control.Enum.ControlState)

local withStyle = require(Core.Style.withStyle)
local ImageSetComponent = require(Core.ImageSet.ImageSetComponent)
local ShimmerPanel = require(App.Loading.ShimmerPanel)
local IconSize = require(App.Constant.IconSize)
local GenericTextLabel = require(Core.Text.GenericTextLabel.GenericTextLabel)

local validateImage = require(Core.ImageSet.Validator.validateImage)
local ButtonGetContentStyle = require(Core.Button.getContentStyle)

local CONTENT_PADDING = 5
local DropdownMenuCell = Roact.PureComponent:extend("DropdownMenuCell")



local function getButtonStyle(contentMap, controlState, style, isActive)
	local buttonStyle = ButtonGetContentStyle(contentMap, controlState, style)
	if (controlState ~= ControlState.Disabled and
	controlState ~= ControlState.Pressed) and
	isActive then
		buttonStyle.Transparency = 0.5 * buttonStyle.Transparency + 0.5
	end
	return buttonStyle
end

local function getContentStyle(contentMap, controlState, style, isActive, hasContent)
	local contentStyle = ButtonGetContentStyle(contentMap, controlState, style)

	if (controlState ~= ControlState.Disabled and
	controlState ~= ControlState.Pressed) and
	(isActive or not hasContent) then
		contentStyle.Transparency = 0.5 * contentStyle.Transparency + 0.5
	end
	return contentStyle
end

function DropdownMenuCell:init()
	self:setState({
		controlState = ControlState.Initialize,
	})

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

DropdownMenuCell.validateProps = t.interface({
	--The icon of the button
	icon = t.optional(validateImage),

	--The text of the button
	text = t.optional(t.string),

	--The image being used as the background of the button
	buttonImage = validateImage,

	--The theme color class mapping for different button states
	buttonStateColorMap = colorStateMap,

	--The theme color class mapping for different content tates
	contentStateColorMap = colorStateMap,

	--The theme color class mapping for different text tates
	textStateColorMap = t.optional(colorStateMap),

	--The theme color class mapping for different icon tates
	iconStateColorMap = t.optional(colorStateMap),

	--Is the button disabled
	isDisabled = t.optional(t.boolean),

	--Is the button activated
	isActivated = t.optional(t.boolean),

	--Does the button hold a selected value
	hasContent = t.optional(t.boolean),

	--Is the button loading
	isLoading = t.optional(t.boolean),

	--The activated callback for the button
	onActivated = t.callback,

	--THe state change callback for the button
	onStateChanged = t.optional(t.callback),

	--A Boolean value that determines whether user events are ignored and sink input
	userInteractionEnabled = t.optional(t.boolean),

	-- Note that this component can accept all valid properties of the Roblox ImageButton instance
})

DropdownMenuCell.defaultProps = {
	isDisabled = false,
	isLoading = false,
	SliceCenter = Rect.new(8, 8, 9, 9),
}

function DropdownMenuCell:render()
	return withStyle(function(style)

		assert(t.table(style), "Style provider is missing.")

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

		local buttonStyle = getButtonStyle(buttonStateColorMap, currentState, style, self.props.isActivated)
		local textStyle = text and getContentStyle(
			textStateColorMap,
			currentState,
			style,
			self.props.isActivated,
			self.props.hasContent)
		local iconStyle = icon and getContentStyle(
			iconStateColorMap,
			currentState,
			style,
			self.props.isActivated,
			true)
		local buttonImage = self.props.buttonImage
		local fontStyle = style.Font.Header2

		local buttonContentLayer
		if isLoading then
			buttonContentLayer = {
				isLoadingShimmer = Roact.createElement(ShimmerPanel, {
					Size = UDim2.fromScale(1,1),
				})
			}
		else
			buttonContentLayer = self.props[Roact.Children] or {
				TextContainer = Roact.createElement("Frame", {
					Size = UDim2.fromScale(1,1),
					BackgroundTransparency = 1,
				}, {
					UIListLayout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Horizontal,
						VerticalAlignment = Enum.VerticalAlignment.Center,
						HorizontalAlignment = Enum.HorizontalAlignment.Left,
						SortOrder = Enum.SortOrder.LayoutOrder,
						Padding = UDim.new(0, CONTENT_PADDING),
					}),
					Padding = Roact.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, 12),
					}),
					Text = text and Roact.createElement(GenericTextLabel, {
						BackgroundTransparency = 1,
						Text = text,
						fontStyle = fontStyle,
						colorStyle = textStyle,
						LayoutOrder = 1,
					}) or nil,
				}),
				IconContainer = Roact.createElement("Frame",{
					Size = UDim2.fromScale(1,1),
					BackgroundTransparency = 1,
				}, {
					UIListLayout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Horizontal,
						VerticalAlignment = Enum.VerticalAlignment.Center,
						HorizontalAlignment = Enum.HorizontalAlignment.Right,
						SortOrder = Enum.SortOrder.LayoutOrder,
						Padding = UDim.new(0, CONTENT_PADDING),
					}),
					Padding = Roact.createElement("UIPadding", {
						PaddingRight = UDim.new(0, 20),
					}),
					Icon = icon and Roact.createElement(ImageSetComponent.Label, {
						Size = UDim2.fromOffset(IconSize.Regular, IconSize.Regular),
						BackgroundTransparency = 1,
						Image = icon,
						ImageColor3 = iconStyle.Color,
						ImageTransparency = iconStyle.Transparency,
						LayoutOrder = 2,
					}) or nil,
				}),
			}
		end

		local PROPS_FILTER = {
			isActivated = Cryo.None,
			hasContent = Cryo.None,
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
			ImageColor3 = buttonStyle.Color,
			ImageTransparency = buttonStyle.Transparency,
			BackgroundTransparency = 1,
			AutoButtonColor = false,
			[Roact.Event.Activated] = self.props.onActivated,
		}

		return Roact.createElement(Interactable, Cryo.Dictionary.join(self.props, PROPS_FILTER), {
			ButtonContent = Roact.createElement("Frame", {
				Size = UDim2.fromScale(1,1),
				BackgroundTransparency = 1,
			}, buttonContentLayer)
		})
	end)
end
return DropdownMenuCell
