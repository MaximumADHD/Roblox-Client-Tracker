local Control = script.Parent
local App = Control.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Core = UIBlox.Core

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local Interactable = require(Core.Control.Interactable)

local ControlState = require(Core.Control.Enum.ControlState)
local getContentStyle = require(Core.Button.getContentStyle)

local withStyle = require(Core.Style.withStyle)
local ImageSetComponent = require(Core.ImageSet.ImageSetComponent)
local GenericTextLabel = require(Core.Text.GenericTextLabel.GenericTextLabel)
local Images = require(App.ImageSet.Images)
local IconSize = require(App.ImageSet.Enum.IconSize)
local getIconSize = require(App.ImageSet.getIconSize)
local TooltipContainer = require(App.Dialog.Tooltip.TooltipContainer)

local GetTextSize = require(UIBlox.Core.Text.GetTextSize)

local CONTENT_PADDING = 8
local DEFAULT_BORDER_CIRCLE = Images["component_assets/circle_17_stroke_1"]
local DEFAULT_BACKGROUND_CIRCLE = Images["component_assets/circle_17"]
local DEFAULT_SLICE_CENTER = Rect.new(8, 8, 9, 9)
local SELECTED_BORDER_CIRCLE = Images["component_assets/circle_22_stroke_3"]
local SELECTED_SLICE_CENTER = Rect.new(11, 11, 12, 12)
local DEFAULT_ICON = Images["icons/common/goldrobux_small"]
local DELAY_TIME = 1
local DEFAULT_PADDING = 8
local MIN_WIDTH = 56
local MAX_WIDTH = 108
local TRIGGER_AREA_HEIGHT = 44
local BUTTON_AREA_HEIGHT = 28

local BUTTON_STATE_COLOR_MAP = {
	[ControlState.Default] = "Divider",
	[ControlState.Hover] = "SystemPrimaryOnHover",
	[ControlState.Selected] = "SystemPrimaryOnHover",
}
local TEXT_STATE_COLOR_MAP = {
	[ControlState.Default] = "TextEmphasis"
}
local ICON_STATE_COLOR_MAP = {
	[ControlState.Default] = "TextEmphasis"
}
local BACKGROUND_STATE_COLOR_MAP = {
	[ControlState.Default] = "BackgroundUIDefault"
}

local RobuxBalance = Roact.PureComponent:extend("RobuxBalance")

function RobuxBalance:init()
	self.triggerRef = Roact.createRef()
	self.toolTipRef = Roact.createRef()

	self.isInHover = false
	self.tooltipWidth, self.setTooltipWidth = Roact.createBinding(0)

	self.state = {
		controlState = ControlState.Initialize,
		triggerPosition = Vector2.new(0, 0),
		triggerSize = Vector2.new(0, 0),
		showToolTip = false
	}

	self.onStateChanged = function(oldState, newState)
		self:setState({
			controlState = newState,
		})

		local isFocused = newState == ControlState.Hover or newState == ControlState.Pressed
		if self.props.fullText and isFocused then
			self.isInHover = true
			delay(DELAY_TIME, self.showToolTip)
		else
			self.isInHover = false
			self.hideToolTip()
		end

		if self.props.onStateChanged then
			self.props.onStateChanged(oldState, newState)
		end
	end

	self.showToolTip = function()
		if self.isInHover then
			self:setState({
				showToolTip = true,
			})
		end
	end

	self.hideToolTip = function()
		self:setState({
			showToolTip = false,
		})
	end

	self.setPosition = function(rbx)
		self:setState({
			triggerPosition = rbx.AbsolutePosition,
		})
	end

	self.setSize = function(rbx)
		self:setState({
			triggerSize = rbx.AbsoluteSize,
		})
	end

	self.onActivated = function(value)
		if self.props.onActivated then
			self.props.onActivated(value)
		end
	end
end

RobuxBalance.validateProps = t.strictInterface({
	--The text of the button
	displayText = t.optional(t.string),

	--The text of the tooltip when hovered over 2 seconds
	fullText = t.optional(t.string),

	--The position of this component
	position = t.optional(t.UDim2),

	--The activated callback for the button
	onActivated = t.optional(t.callback),

	--The state change callback for the button
	onStateChanged = t.optional(t.callback),

	--The state change callback for the button
	tooltipPosition = t.optional(t.UDim2),

	--A Boolean value that determines whether user events are ignored and sink input
	userInteractionEnabled = t.optional(t.boolean),
})

function RobuxBalance:render()
	return withStyle(function(style)

		local currentState = self.state.controlState
		local showToolTip = self.state.showToolTip

		local text = self.props.displayText or "-"
		local hasFullText = self.props.fullText
		local icon = DEFAULT_ICON

		local buttonStyle = getContentStyle(BUTTON_STATE_COLOR_MAP, currentState, style)
		local textStyle = getContentStyle(TEXT_STATE_COLOR_MAP, currentState, style)
		local iconStyle = getContentStyle(ICON_STATE_COLOR_MAP, currentState, style)
		local backgroundStyle = getContentStyle(BACKGROUND_STATE_COLOR_MAP, currentState, style)
		local buttonImage = self.state.controlState == ControlState.Selected and
			SELECTED_BORDER_CIRCLE or DEFAULT_BORDER_CIRCLE
		local sliceCenter = self.state.controlState == ControlState.Selected and
			SELECTED_SLICE_CENTER or DEFAULT_SLICE_CENTER
		local fontStyle = style.Font.CaptionHeader

		local fontSize = fontStyle.RelativeSize * style.Font.BaseSize
		local estimatedTextWidth = GetTextSize(
			text,
			fontSize,
			fontStyle.Font,
			Vector2.new(1000, 1000)
		).X
		local buttonWidth = estimatedTextWidth + getIconSize(IconSize.Small) + DEFAULT_PADDING * 3
		return Roact.createElement(Interactable, {
			Position = self.props.position or UDim2.fromScale(0, 0),
			isDisabled = false,
			onStateChanged = self.onStateChanged,
			userInteractionEnabled = self.props.userInteractionEnabled,
			BackgroundTransparency = 1,
			[Roact.Event.Activated] = self.onActivated,
			Size = UDim2.fromOffset(buttonWidth, TRIGGER_AREA_HEIGHT),
			AnchorPoint = Vector2.new(1, 0),
			[Roact.Ref] = self.triggerRef,
			[Roact.Change.AbsolutePosition] = self.setPosition,
			[Roact.Change.AbsoluteSize] = self.setSize,
		}, {
			sizeConstraint = Roact.createElement("UISizeConstraint", {
				MinSize = Vector2.new(MIN_WIDTH, TRIGGER_AREA_HEIGHT),
				MaxSize = Vector2.new(MAX_WIDTH, TRIGGER_AREA_HEIGHT),
			}),
			UIPadding = Roact.createElement("UIPadding", {
				PaddingTop = UDim.new(0, (TRIGGER_AREA_HEIGHT - BUTTON_AREA_HEIGHT) / 2),
				PaddingBottom = UDim.new(0, (TRIGGER_AREA_HEIGHT - BUTTON_AREA_HEIGHT) / 2),
			}),
			ButtonContent = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, BUTTON_AREA_HEIGHT),
				BackgroundTransparency = 1,
			}, {
				ButtonBackground = Roact.createElement(ImageSetComponent.Label, {
					Image = DEFAULT_BACKGROUND_CIRCLE,
					ScaleType = Enum.ScaleType.Slice,
					ImageColor3 = backgroundStyle.Color,
					ImageTransparency = backgroundStyle.Transparency,
					BackgroundTransparency = 1,
					SliceCenter = DEFAULT_SLICE_CENTER,
					Size = UDim2.fromScale(1, 1),
					Position = UDim2.fromOffset(0, 0),
				}),
				ButtonContent = Roact.createElement(ImageSetComponent.Label, {
					Image = buttonImage,
					ScaleType = Enum.ScaleType.Slice,
					ImageColor3 = buttonStyle.Color,
					ImageTransparency = buttonStyle.Transparency,
					BackgroundTransparency = 1,
					SliceCenter = sliceCenter,
					Size = UDim2.fromScale(1, 1),
					Position = UDim2.fromOffset(0, 0),
				}, {
					UIListLayout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Horizontal,
						VerticalAlignment = Enum.VerticalAlignment.Center,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						SortOrder = Enum.SortOrder.LayoutOrder,
						Padding = UDim.new(0, CONTENT_PADDING),
					}),
					Icon = Roact.createElement(ImageSetComponent.Label, {
						Size = UDim2.fromOffset(getIconSize(IconSize.Small), getIconSize(IconSize.Small)),
						BackgroundTransparency = 1,
						Image = icon,
						ImageColor3 = iconStyle.Color,
						ImageTransparency = iconStyle.Transparency,
						LayoutOrder = 1,
					}),
					Text = Roact.createElement(GenericTextLabel, {
						BackgroundTransparency = 1,
						Text = text,
						fontStyle = fontStyle,
						colorStyle = textStyle,
						LayoutOrder = 2,
						maxSize = Vector2.new(estimatedTextWidth, BUTTON_AREA_HEIGHT),
						TextTruncate = Enum.TextTruncate.AtEnd,
						TextWrapped = false,
						TextXAlignment = Enum.TextXAlignment.Left
					}),
				}),
			}),
			TooltipContainer = hasFullText and Roact.createElement("Frame", {
				Visible = showToolTip,
				Size = UDim2.fromScale(1, 1),
				Position = UDim2.fromOffset(0, 0),
				BackgroundTransparency = 1,
			}, {
				TooltipContent = Roact.createElement(TooltipContainer, {
					triggerPosition = self.state.triggerPosition or Vector2.new(0 ,0),
					triggerSize = self.state.triggerSize or Vector2.new(0 ,0),
					position = self.props.tooltipPosition or UDim2.new(1, -self.tooltipWidth:getValue(), 1, 0),
					bodyText = self.props.fullText or "",
					isDirectChild = true,
				}),
			})
		})
	end)
end

function RobuxBalance:didUpdate()
	local hasFullText = self.props.fullText
	self.setTooltipWidth((self.triggerRef.current and hasFullText) and
		self.triggerRef.current.TooltipContainer.TooltipContent.Size.X.Offset or 0)
end
return RobuxBalance
