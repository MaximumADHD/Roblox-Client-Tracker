local CorePackages = game:GetService("CorePackages")

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ShareGame = RobloxGui.Modules.Settings.Pages.ShareGame
local RectangleButton = require(ShareGame.Components.RectangleButton)
local IconButton = require(ShareGame.Components.IconButton)
local Roact = require(CorePackages.Roact)

local Constants = require(ShareGame.Constants)
local ShareGameIcons = require(RobloxGui.Modules.Settings.Pages.ShareGame.Spritesheets.ShareGameIcons)

local FFlagLuaInviteModalEnabled = settings():GetFFlag("LuaInviteModalEnabledV384")

local getTranslator = require(ShareGame.getTranslator)
local RobloxTranslator = getTranslator()

local BACK_IMAGE_SPRITE_PATH
if not FFlagLuaInviteModalEnabled then
	BACK_IMAGE_SPRITE_PATH = ShareGameIcons:GetImagePath()
end

local BACK_IMAGE_SPRITE_FRAME = ShareGameIcons:GetFrame("back")
local BACK_BUTTON_TEXT_SIZE = 24

local BackButton = Roact.PureComponent:extend("BackButton")
if FFlagLuaInviteModalEnabled then
	BackButton.IconType = {
		Arrow = "Arrow",
		Cross = "Cross",
		None = "None",
	}
	BackButton.defaultProps = {
		iconType = BackButton.IconType.None,
	}
end

local ICON_TYPE_TO_ICON_NAME
if FFlagLuaInviteModalEnabled then
	ICON_TYPE_TO_ICON_NAME = {
		[BackButton.IconType.Arrow] = "back",
		[BackButton.IconType.Cross] = "cross",
	}
end

local createIconButton
if FFlagLuaInviteModalEnabled then
	createIconButton = function(props)
		local iconType = props.iconType
		local visible = props.visible
		local anchorPoint = props.anchorPoint
		local position = props.position
		local size = props.size
		local zIndex = props.zIndex
		local onClick = props.onClick

		local iconName = ICON_TYPE_TO_ICON_NAME[iconType]
		if iconName then
			local iconSpritePath = ShareGameIcons:GetImagePath()
			local iconSpriteFrame = ShareGameIcons:GetFrame(iconName)

			return Roact.createElement(IconButton, {
				visible = visible,
				anchorPoint = anchorPoint,
				position = position,
				size = size,
				zIndex = zIndex,
				onClick = onClick,
				iconHorizontalAlignment = Enum.HorizontalAlignment.Left,
				iconSpritePath = iconSpritePath,
				iconSpriteFrame = iconSpriteFrame,
			})
		end
		return
	end
end

function BackButton:render()
	local isArrow
	local iconType
	if FFlagLuaInviteModalEnabled then
		iconType = self.props.iconType
	else
		isArrow = self.props.isArrow
	end

	local visible = self.props.visible
	local anchorPoint = self.props.anchorPoint
	local position = self.props.position
	local size = self.props.size
	local zIndex = self.props.zIndex
	local onClick = self.props.onClick

	if FFlagLuaInviteModalEnabled then
		if iconType == BackButton.IconType.None then
			return Roact.createElement(RectangleButton, self.props, {
				TextLabel = Roact.createElement("TextLabel", {
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Action.InviteFriendsBack"),
					TextSize = BACK_BUTTON_TEXT_SIZE,
					TextColor3 = Constants.Color.WHITE,
					Font = Enum.Font.SourceSansSemibold,
					ZIndex = zIndex,
				}),
			})
		else
			return createIconButton(self.props)
		end
	else
		if isArrow then
			return Roact.createElement(IconButton, {
				visible = visible,
				anchorPoint = anchorPoint,
				position = position,
				size = size,
				zIndex = zIndex,
				onClick = onClick,
				iconHorizontalAlignment = Enum.HorizontalAlignment.Left,
				iconSpritePath = BACK_IMAGE_SPRITE_PATH,
				iconSpriteFrame = BACK_IMAGE_SPRITE_FRAME,
			})
		else
			return Roact.createElement(RectangleButton, self.props, {
				TextLabel = Roact.createElement("TextLabel", {
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Action.InviteFriendsBack"),
					TextSize = BACK_BUTTON_TEXT_SIZE,
					TextColor3 = Constants.Color.WHITE,
					Font = Enum.Font.SourceSansSemibold,
					ZIndex = zIndex,
				}),
			})
		end
	end
end

return BackButton
