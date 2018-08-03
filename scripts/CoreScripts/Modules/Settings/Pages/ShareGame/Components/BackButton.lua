local CorePackages = game:GetService("CorePackages")

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local ShareGame = RobloxGui.Modules.Settings.Pages.ShareGame
local RectangleButton = require(ShareGame.Components.RectangleButton)
local IconButton = require(ShareGame.Components.IconButton)
local Roact = require(CorePackages.Roact)

local Constants = require(ShareGame.Constants)
local ShareGameIcons = require(RobloxGui.Modules.Settings.Pages.ShareGame.Spritesheets.ShareGameIcons)

local BACK_IMAGE_SPRITE_PATH = ShareGameIcons:GetImagePath()
local BACK_IMAGE_SPRITE_FRAME = ShareGameIcons:GetFrame("back")
local BACK_BUTTON_TEXT_SIZE = 24

local BackButton = Roact.PureComponent:extend("BackButton")

function BackButton:render()
	local isArrow = self.props.isArrow
	local visible = self.props.visible
	local anchorPoint = self.props.anchorPoint
	local position = self.props.position
	local size = self.props.size
	local zIndex = self.props.zIndex
	local onClick = self.props.onClick

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

return BackButton
