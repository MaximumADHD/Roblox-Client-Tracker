--[[
	Indicator bubble that accepts an icon and an onActivated function.

	This is shown when a user's device has given Roblox camera or microphone permissions.
]]
local ExperienceChat = script:FindFirstAncestor("ExperienceChat")

local Packages = ExperienceChat.Parent
local Roact = require(Packages.Roact)

local UIBlox = require(Packages.UIBlox)
local Dictionary = require(Packages.llama).Dictionary

local success, migratedImageSetButton = pcall(function()
	return UIBlox.Core.ImageSet.ImageSetButton
end)
local ImageSetButton = success and migratedImageSetButton or UIBlox.Core.ImageSet.Button

local Colors = UIBlox.App.Style.Colors
local GetFFlagForceChatBubbleColor = require(ExperienceChat.Flags.GetFFlagForceChatBubbleColor)
local getSetUpBubbleChatConfigurationChildProperties =
	require(ExperienceChat.Flags.getSetUpBubbleChatConfigurationChildProperties)

local BACKGROUND_COLOR = Colors.Graphite
local ICON_COLOR = Colors.White
local DEFAULT_ICON_TRANSPARENCY = 0
local DEFAULT_BACKGROUND_COLOR = Color3.fromRGB(250, 250, 250)

local Config = require(ExperienceChat.Config)

local ControlBubble = Roact.PureComponent:extend("ControlBubble")

-- ControlBubble.validateProps = t.strictInterface({
-- 	LayoutOrder = t.optional(t.number),
-- 	icon = t.any,
-- 	onActivated = t.callback,
-- 	isImageSet = t.boolean,
-- 	iconTransparency = t.optional(t.number)
-- })

function ControlBubble:render()
	local chatSettings = self.props.chatSettings
	local backgroundImageSettings = getSetUpBubbleChatConfigurationChildProperties()
			and Config.DefaultBubbleChatChildrenCustomizationProperties.ImageLabel
		or chatSettings.ImageLabel
	local imageComponent = if self.props.isImageSet then ImageSetButton else "ImageButton"
	local bubbleCorner = self.props.chatSettings.UICorner
	local defaultCornerRadius = Config.DefaultBubbleChatChildrenCustomizationProperties.UICorner.CornerRadius
	local iconTransparency = if self.props.iconTransparency ~= nil
		then self.props.iconTransparency
		else DEFAULT_ICON_TRANSPARENCY

	-- Default has a gray background around the icons (different from regular
	-- bubble chat bubbles which is white). If a developer updates the color, set it to that color.
	-- If not, keep the default gray background around the buttons.
	local backgroundColor = if not chatSettings.BackgroundColor3
			or GetFFlagForceChatBubbleColor()
			or chatSettings.BackgroundColor3 == DEFAULT_BACKGROUND_COLOR
		then BACKGROUND_COLOR
		else chatSettings.BackgroundColor3

	return Roact.createElement("ImageButton", {
		AnchorPoint = Vector2.new(0.5, 1),
		Size = UDim2.new(0, 44, 1, 0),
		LayoutOrder = self.props.LayoutOrder,
		BorderSizePixel = 0,
		Transparency = 1,
		ZIndex = 2,
		[Roact.Event.Activated] = self.props.onActivated,
	}, {
		UICorner = bubbleCorner and Roact.createElement("UICorner", {
			CornerRadius = bubbleCorner.CornerRadius,
		}) or Roact.createElement("UICorner", {
			CornerRadius = defaultCornerRadius,
		}),
		Contents = Roact.createElement(
			"ImageLabel",
			Dictionary.join(backgroundImageSettings, {
				Size = UDim2.fromScale(1, 1),
				BackgroundColor3 = backgroundColor,
				BorderSizePixel = 0,
			}),
			{
				UICorner = bubbleCorner and Roact.createElement("UICorner", {
					CornerRadius = bubbleCorner.CornerRadius,
				}) or Roact.createElement("UICorner", {
					CornerRadius = defaultCornerRadius,
				}),
				Padding = Roact.createElement("UIPadding", {
					PaddingTop = UDim.new(0, chatSettings.Padding),
					PaddingRight = UDim.new(0, chatSettings.Padding),
					PaddingBottom = UDim.new(0, chatSettings.Padding),
					PaddingLeft = UDim.new(0, chatSettings.Padding),
				}),
				Icon = Roact.createElement(imageComponent, {
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.fromScale(0.5, 0.5),
					-- Icons from image set are a different size.
					Size = not self.props.isImageSet and self.props.iconSize or UDim2.fromOffset(28, 28),
					BackgroundTransparency = 1,
					ImageTransparency = iconTransparency,
					ImageColor3 = ICON_COLOR,
					BorderSizePixel = 0,
					Image = self.props.isImageSet and self.props.imageSetIcon or self.props.icon,
				}),
			}
		),
	})
end

return ControlBubble
