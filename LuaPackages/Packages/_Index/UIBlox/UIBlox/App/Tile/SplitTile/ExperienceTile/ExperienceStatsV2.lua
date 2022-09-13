local ExperienceTileRoot = script.Parent
local TileRoot = ExperienceTileRoot.Parent.Parent
local App = TileRoot.Parent
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent

local t = require(Packages.t)
local React = require(Packages.React)
local withStyle = require(Core.Style.withStyle)

local Images = require(App.ImageSet.Images)
local IconSize = require(App.ImageSet.Enum.IconSize)
local getIconSizeUDim2 = require(App.ImageSet.getIconSizeUDim2)

local ImageSetComponent = require(Core.ImageSet.ImageSetComponent)
local useStyle = require(Core.Style.useStyle)

local RATING_ICON = "icons/status/games/rating_small"
local PLAYERS_ICON = "icons/status/games/people-playing_small"

local RATING_ITEM_WIDTH = 40
local RATING_ICON_SIZE = getIconSizeUDim2(IconSize.Small)
local PLAYING_ICON_SIZE = getIconSizeUDim2(IconSize.Small)
local ITEM_PADDING = 12
local STAT_PADDING = 4

export type Props = {
	-- String containing game rating; should have "%" appended
	ratingText: string,
	-- String containing number of users playing; should be formatted using abbreviateCount()
	playingText: string,
}

local function renderStatItem(containerProps, icon, iconSize, text, stylePalette)
	local theme = stylePalette.Theme
	local font = stylePalette.Font

	return React.createElement("Frame", containerProps, {
		UIListLayout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Padding = UDim.new(0, STAT_PADDING),
		}),
		Icon = React.createElement(ImageSetComponent.Label, {
			Size = iconSize,
			Image = Images[icon],
			BackgroundTransparency = 1,
			ImageTransparency = theme.IconDefault.Transparency,
			ImageColor3 = theme.IconDefault.Color,
			LayoutOrder = 1,
			AnchorPoint = Vector2.new(0, 0.5),
		}),
		Label = React.createElement("TextLabel", {
			Size = UDim2.new(0, 0, 1, 0),
			AutomaticSize = Enum.AutomaticSize.X,
			BackgroundTransparency = 1,
			Text = text,
			Font = font.Body.Font,
			TextSize = font.BaseSize * font.Body.RelativeSize,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
			TextColor3 = theme.TextMuted.Color,
			TextTransparency = theme.TextMuted.Transparency,
			LayoutOrder = 2,
		}, {
			UISizeConstraint = React.createElement("UISizeConstraint", {
				MaxSize = Vector2.new(RATING_ITEM_WIDTH, math.huge),
			}),
		}),
	})
end

local function ExperienceStats(props: Props)
	local stylePalette = useStyle()

	return React.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
	}, {
		UIListLayout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Padding = UDim.new(0, ITEM_PADDING),
		}),
		RatingStats = renderStatItem({
			Size = UDim2.new(0, 0, 1, 0),
			AutomaticSize = Enum.AutomaticSize.X,
			BackgroundTransparency = 1,
			LayoutOrder = 1,
		}, RATING_ICON, RATING_ICON_SIZE, props.ratingText, stylePalette),

		PlayingStats = renderStatItem({
			Size = UDim2.new(0, 0, 1, 0),
			AutomaticSize = Enum.AutomaticSize.X,
			BackgroundTransparency = 1,
			LayoutOrder = 2,
		}, PLAYERS_ICON, PLAYING_ICON_SIZE, props.playingText, stylePalette),
	})
end

return ExperienceStats
