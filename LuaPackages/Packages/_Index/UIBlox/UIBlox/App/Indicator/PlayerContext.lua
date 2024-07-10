--!nonstrict
local App = script:FindFirstAncestor("App")
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent
local UIBloxConfig = require(UIBlox.UIBloxConfig)

local t = require(Packages.t)
local Roact = require(Packages.Roact)

local ControlState = require(Core.Control.Enum.ControlState)
local GenericTextLabel = require(Core.Text.GenericTextLabel.GenericTextLabel)
local withStyle = require(Core.Style.withStyle)
local getContentStyle = require(Core.Button.getContentStyle)
local getIconSize = require(App.ImageSet.getIconSize)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)
local IconSize = require(App.ImageSet.Enum.IconSize)
local validateFontInfo = require(UIBlox.Core.Style.Validator.validateFontInfo)
local validateTypographyInfo = require(UIBlox.Core.Style.Validator.validateTypographyInfo)
local validateColorInfo = require(UIBlox.Core.Style.Validator.validateColorInfo)

local PlayerContext = Roact.PureComponent:extend("PlayerContext")

local SECONDARY_CONTENT_STATE_COLOR = {
	[ControlState.Default] = "TextDefault",
}

-- intentionally reversed, as we want brighter text for actionable items
local EMPHASIS_CONTENT_STATE_COLOR = {
	[ControlState.Default] = "IconOnHover",
	[ControlState.Hover] = "IconDefault",
}

local function doesNotUseScale(value)
	if value.X.Scale ~= 0 or value.Y.Scale ~= 0 then
		return false, "Only Offset values are allowed"
	end

	return true
end

PlayerContext.validateProps = t.strictInterface({
	text = t.optional(t.string),
	-- The icon that represents the player status
	icon = t.optional(t.union(t.string, t.table)),
	-- The size of the icon
	-- TODO: This should be a Vector2, not a UDim2, as only Offset is supported
	iconSize = t.optional(t.intersection(t.UDim2, doesNotUseScale)),
	-- The color of the icon
	iconColor = t.optional(t.Color3),
	-- The transparency setting of the icon
	iconTransparency = t.optional(t.number),
	-- A function that fires when the text is pressed
	onActivated = t.optional(t.callback),
	-- Whether it's gamepad/keyboard selectable or not
	Selectable = t.optional(t.boolean),
	-- The styling of the text. Defaults to `CaptionHeader`.
	fontStyle = t.optional(t.union(validateFontInfo, validateTypographyInfo)),
	-- The text height which determines component height
	textHeight = t.optional(t.number),
	-- The color style of text, including color and transparency
	textColorStyle = t.optional(validateColorInfo),
	-- The padding between icon and its parent frame
	iconPadding = t.optional(t.number),
	-- The padding between icon and text
	iconTextSpacing = t.optional(t.number),
	-- The layoutOrder of PlayerContext
	layoutOrder = t.optional(t.number),
	-- The horizontal alignment
	horizontalAlignment = t.optional(t.EnumItem),
})

PlayerContext.defaultProps = {
	text = "",
	icon = nil,
	Selectable = true,
	iconSize = UDim2.fromOffset(getIconSize(IconSize.Small), getIconSize(IconSize.Small)),
	textHeight = 28,
	iconPadding = 4,
	iconTextSpacing = 4,
	layoutOrder = 1,
	horizontalAlignment = Enum.HorizontalAlignment.Left,
}

function PlayerContext:init()
	self.state = {}
end

function PlayerContext:render()
	-- TODO: have relevancy info except hover state: https://jira.rbx.com/browse/SOCCONN-773
	local currentState = self.state.controlState
	local text = self.props.text
	local icon = self.props.icon
	local iconSize = self.props.iconSize
	local horizontalAlignment = self.props.horizontalAlignment

	local onActivated = self.props.onActivated

	return withStyle(function(style)
		local emphasisContentStyle = getContentStyle(EMPHASIS_CONTENT_STATE_COLOR, currentState, style)
		local secondaryContentStyle = getContentStyle(SECONDARY_CONTENT_STATE_COLOR, currentState, style)
		local activatedStyle = onActivated and emphasisContentStyle or secondaryContentStyle

		local iconTransparency = self.props.iconTransparency
		if not self.props.iconTransparency then
			if self.props.iconColor then
				iconTransparency = 0 -- if we have an override color, we default to 0 transparency
			else
				iconTransparency = activatedStyle.Transparency
			end
		end

		local iconColor = self.props.iconColor
		if not self.props.iconColor then
			iconColor = activatedStyle.Color
		end

		local textHeight = self.props.textHeight

		local textColorStyle = self.props.textColorStyle
			or (if onActivated then emphasisContentStyle else secondaryContentStyle)
		local iconPadding = self.props.iconPadding
		local iconTextSpacing = self.props.iconTextSpacing

		local iconFrameWidth = iconSize.X.Offset + iconPadding * 2
		local iconFrameHeight = iconSize.Y.Offset + iconPadding * 2

		local fontStyle = self.props.fontStyle or style.Font.CaptionHeader
		return Roact.createElement("ImageButton", {
			Size = UDim2.new(1, 0, 0, textHeight),
			BackgroundTransparency = 1,
			Selectable = self.props.Selectable,
			Active = onActivated and true or false,
			LayoutOrder = self.props.layoutOrder,
			[Roact.Event.Activated] = onActivated,
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				HorizontalAlignment = horizontalAlignment,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, iconTextSpacing),
			}),
			IconFrame = icon and Roact.createElement("Frame", {
				Size = UDim2.fromOffset(iconFrameWidth, iconFrameHeight),
				BackgroundTransparency = 1,
			}, {
				layout = Roact.createElement("UIListLayout", {
					VerticalAlignment = Enum.VerticalAlignment.Center,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
				}),
				icon = Roact.createElement(ImageSetComponent.Label, {
					AnchorPoint = Vector2.new(0.5, 0.5),
					Size = iconSize,
					BackgroundTransparency = 1,
					Image = icon,
					ImageColor3 = iconColor,
					ImageTransparency = iconTransparency,
				}),
			}),
			Text = text and Roact.createElement(GenericTextLabel, {
				AutomaticSize = if UIBloxConfig.playerTileAutomaticSizeXY
					then Enum.AutomaticSize.XY
					else Enum.AutomaticSize.Y,
				Size = if UIBloxConfig.playerTileAutomaticSizeXY
					then UDim2.fromScale(0, 0)
					else UDim2.new(1, -iconFrameWidth - iconTextSpacing, 1, 0),
				Text = text,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
				fontStyle = fontStyle,
				colorStyle = textColorStyle,
				LayoutOrder = 2,
				TextTruncate = Enum.TextTruncate.AtEnd,
			}),
		})
	end)
end

return PlayerContext
