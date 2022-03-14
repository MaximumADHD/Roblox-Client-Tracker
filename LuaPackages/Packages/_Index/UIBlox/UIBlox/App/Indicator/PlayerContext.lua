local App = script:FindFirstAncestor("App")
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent

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

local PlayerContext = Roact.PureComponent:extend("PlayerContext")

local SECONDARY_CONTENT_STATE_COLOR = {
	[ControlState.Default] = "TextDefault",
}

-- intentionally reversed, as we want brighter text for actionable items
local EMPHASIS_CONTENT_STATE_COLOR = {
	[ControlState.Default] = "IconOnHover",
	[ControlState.Hover] = "IconDefault",
}

local RELEVANCY_ICON_SIZE = getIconSize(IconSize.Small)
local RELEVANCY_TEXT_HEIGHT = 28
local RELEVANCY_PADDING = 4
local ICON_FRAME_SIZE = RELEVANCY_ICON_SIZE + RELEVANCY_PADDING * 2

PlayerContext.validateProps = t.strictInterface({
	text = t.optional(t.string),
	icon = t.optional(t.union(t.string, t.table)),
	iconSize = t.optional(t.UDim2),
	iconColor = t.optional(t.Color3),
	iconTransparency = t.optional(t.number),
	onActivated = t.optional(t.callback),
	fontStyle = t.optional(validateFontInfo),
})

PlayerContext.defaultProps = {
	text = "",
	icon = nil,
	iconSize = UDim2.fromOffset(RELEVANCY_ICON_SIZE, RELEVANCY_ICON_SIZE),
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

		local fontStyle = self.props.fontStyle or style.Font.CaptionHeader
		return Roact.createElement("ImageButton", {
			Size = UDim2.new(1, 0, 0, RELEVANCY_TEXT_HEIGHT),
			BackgroundTransparency = 1,
			Active = onActivated and true or false,
			[Roact.Event.Activated] = onActivated,
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, RELEVANCY_PADDING),
			}),
			IconFrame = icon and Roact.createElement("Frame", {
				Size = UDim2.fromOffset(ICON_FRAME_SIZE, ICON_FRAME_SIZE),
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
				AutomaticSize = Enum.AutomaticSize.Y,
				Size = UDim2.new(1, -ICON_FRAME_SIZE - RELEVANCY_PADDING, 1, 0),
				Text = text,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
				fontStyle = fontStyle,
				colorStyle = onActivated and emphasisContentStyle or secondaryContentStyle,
				LayoutOrder = 2,
				TextTruncate = Enum.TextTruncate.AtEnd,
			}),
		})
	end)
end

return PlayerContext
