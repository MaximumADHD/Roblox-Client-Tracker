local CorePackages = game:GetService("CorePackages")

local Modules = game:GetService("CoreGui").RobloxGui.Modules

local ShareGame = Modules.Settings.Pages.ShareGame
local RectangleButton = require(ShareGame.Components.RectangleButton)
local Roact = require(CorePackages.Roact)

local Constants = require(ShareGame.Constants)
local ShareGameIcons = require(Modules.Settings.Pages.ShareGame.Spritesheets.ShareGameIcons)

local BACK_IMAGE_SPRITE_PATH = ShareGameIcons:GetImagePath()
local BACK_IMAGE_SPRITE_FRAME = ShareGameIcons:GetFrame("back")
local BACK_BUTTON_TEXT = "Back"
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
		return Roact.createElement("ImageButton", {
			Visible = visible,
			BackgroundTransparency = 1,
			AnchorPoint = anchorPoint,
			Position = position,
			Size = size,
			Image = BACK_IMAGE_SPRITE_PATH,
			ImageRectOffset = BACK_IMAGE_SPRITE_FRAME.offset,
			ImageRectSize = BACK_IMAGE_SPRITE_FRAME.size,
			ZIndex = zIndex,
			[Roact.Event.Activated] = onClick,
		})
	else
		return Roact.createElement(RectangleButton, self.props, {
			TextLabel = Roact.createElement("TextLabel", {
				Position = UDim2.new(0.5, 0, 0.5, 0),
				Text = BACK_BUTTON_TEXT,
				TextSize = BACK_BUTTON_TEXT_SIZE,
				TextColor3 = Constants.Color.WHITE,
				Font = Enum.Font.SourceSansSemibold,
				ZIndex = zIndex,
			}),
		})
	end
end

return BackButton
