--!nonstrict
local CorePackages = game:GetService("CorePackages")

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ShareGame = RobloxGui.Modules.Settings.Pages.ShareGame
local RectangleButton = require(ShareGame.Components.RectangleButton)
local IconButton = require(ShareGame.Components.IconButton)
local Roact = require(CorePackages.Packages.Roact)

local Constants = require(ShareGame.Constants)
local ShareGameIcons = require(RobloxGui.Modules.Settings.Pages.ShareGame.Spritesheets.ShareGameIcons)
local Theme = require(RobloxGui.Modules.Settings.Theme)

local getTranslator = require(ShareGame.getTranslator)
local RobloxTranslator = getTranslator()

local BACK_BUTTON_TEXT_SIZE = 24

local BackButton = Roact.PureComponent:extend("BackButton")
BackButton.IconType = {
	Arrow = "Arrow",
	Cross = "Cross",
	None = "None",
}
BackButton.defaultProps = {
	iconType = BackButton.IconType.None,
}

local ICON_TYPE_TO_ICON_NAME = {
	[BackButton.IconType.Arrow] = "back",
	[BackButton.IconType.Cross] = "cross",
}

local createIconButton = function(props)
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

function BackButton:render()
	local iconType = self.props.iconType
	local zIndex = self.props.zIndex

	if iconType == BackButton.IconType.None then
		return Roact.createElement(RectangleButton, self.props, {
			TextLabel = Roact.createElement("TextLabel", {
				Position = UDim2.new(0.5, 0, 0.5, 0),
				Text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Action.InviteFriendsBack"),
				TextSize = Theme.textSize(BACK_BUTTON_TEXT_SIZE, "BackButton"),
				TextColor3 = Constants.Color.WHITE,
				Font = Theme.font(Enum.Font.SourceSansSemibold, "BackButton"),
				ZIndex = zIndex,
			}),
		})
	else
		return createIconButton(self.props)
	end
end

return BackButton
