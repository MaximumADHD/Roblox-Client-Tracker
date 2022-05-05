local ExperienceTileRoot = script.Parent
local TileRoot = ExperienceTileRoot.Parent
local App = TileRoot.Parent
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent

local t = require(Packages.t)
local Roact = require(Packages.Roact)
local withStyle = require(Core.Style.withStyle)

local Images = require(App.ImageSet.Images)
local ImageSetComponent = require(Core.ImageSet.ImageSetComponent)
local IconSize = require(App.ImageSet.Enum.IconSize)
local getIconSizeUDim2 = require(App.ImageSet.getIconSizeUDim2)

local RATING_ICON = "icons/status/games/rating_small"
local PLAYERS_ICON = "icons/status/games/people-playing_small"

local RATING_ITEM_WIDTH = 68
local RATING_ICON_SIZE = getIconSizeUDim2(IconSize.Small)
local PLAYING_ICON_SIZE = getIconSizeUDim2(IconSize.Small)
local ITEM_PADDING = 12
local STAT_PADDING = 5

local ExperienceStats = Roact.PureComponent:extend("ExperienceStats")

ExperienceStats.validateProps = t.strictInterface({
	-- String containing game rating; should have "%" appended
	ratingText = t.string,

	-- String containing number of users playing; should be formatted using abbreviateCount()
	playingText = t.string,
})

ExperienceStats.defaultProps = {}

function ExperienceStats:init() end

function ExperienceStats:renderStatItem(containerProps, icon, iconSize, text, stylePalette)
	local theme = stylePalette.Theme
	local font = stylePalette.Font

	return Roact.createElement("Frame", containerProps, {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Padding = UDim.new(0, STAT_PADDING),
		}),
		Icon = Roact.createElement(ImageSetComponent.Label, {
			Size = iconSize,
			Image = Images[icon],
			BackgroundTransparency = 1,
			ImageTransparency = theme.IconDefault.Transparency,
			ImageColor3 = theme.IconDefault.Color,
			LayoutOrder = 1,
			AnchorPoint = Vector2.new(0, 0.5),
		}),
		Label = Roact.createElement("TextLabel", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			Text = text,
			Font = font.Body.Font,
			TextSize = font.BaseSize * font.Body.RelativeSize,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
			TextColor3 = theme.TextMuted.Color,
			TextTransparency = theme.TextMuted.Transparency,
			LayoutOrder = 2,
		}),
	})
end

function ExperienceStats:render()
	return withStyle(function(stylePalette)
		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
		}, {
			RatingStats = self:renderStatItem({
				Size = UDim2.new(0, RATING_ITEM_WIDTH, 1, 0),
				BackgroundTransparency = 1,
			}, RATING_ICON, RATING_ICON_SIZE, self.props.ratingText, stylePalette),

			PlayingStats = self:renderStatItem({
				Size = UDim2.new(1, -RATING_ITEM_WIDTH, 1, 0),
				Position = UDim2.new(0, RATING_ITEM_WIDTH + ITEM_PADDING, 0, 0),
				BackgroundTransparency = 1,
			}, PLAYERS_ICON, PLAYING_ICON_SIZE, self.props.playingText, stylePalette),
		})
	end)
end

return ExperienceStats
