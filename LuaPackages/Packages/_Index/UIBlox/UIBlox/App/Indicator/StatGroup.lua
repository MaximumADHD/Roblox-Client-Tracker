local Indicator = script.Parent
local App = Indicator.Parent
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent

local React = require(Packages.React)

local Images = require(App.ImageSet.Images)

local ImageSetComponent = require(Core.ImageSet.ImageSetComponent)
local useStyle = require(Core.Style.useStyle)
local Fonts = require(App.Style.Fonts)
local GetTextSize = require(UIBlox.Core.Text.GetTextSize)

local UIBloxConfig = require(UIBlox.UIBloxConfig)

local RATING_ICON = "icons/status/games/rating_small"
local PLAYERS_ICON = "icons/status/games/people-playing_small"

local RATING_ITEM_WIDTH = 40

export type Props = {
	-- String containing game rating; should have "%" appended
	ratingText: string,
	-- String containing number of users playing; should be formatted using abbreviateCount().
	-- If undefined, the playing stats will not display - only the rating will.
	playingText: string?,
}

local function renderStatItem(containerProps, icon, text, stylePalette, textWidth: number?)
	local tokens = stylePalette.Tokens
	local font: Fonts.FontPalette = stylePalette.Font

	local statSpacingGap = tokens.Global.Space_25
	local statIconSize = tokens.Semantic.Icon.Size.Small
	local statIconContentColor = tokens.Semantic.Color.Text.Muted
	local statLabelContentColor = tokens.Semantic.Color.Text.Muted

	return React.createElement("Frame", containerProps, {
		UIListLayout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Padding = UDim.new(0, statSpacingGap),
		}),
		Icon = React.createElement(ImageSetComponent.Label, {
			Size = UDim2.fromOffset(statIconSize, statIconSize),
			Image = Images[icon],
			BackgroundTransparency = 1,
			ImageTransparency = statIconContentColor.Transparency,
			ImageColor3 = statIconContentColor.Color3,
			LayoutOrder = 1,
			AnchorPoint = Vector2.new(0, 0.5),
		}),
		Label = React.createElement("TextLabel", {
			Size = UDim2.new(
				0,
				if textWidth then textWidth else 0,
				if UIBloxConfig.useAutomaticSizeYInStatGroup then 0 else 1,
				0
			),
			AutomaticSize = if textWidth
				then (if UIBloxConfig.useAutomaticSizeYInStatGroup then Enum.AutomaticSize.Y else nil)
				else (if UIBloxConfig.useAutomaticSizeYInStatGroup
					then Enum.AutomaticSize.XY
					else Enum.AutomaticSize.X),
			BackgroundTransparency = 1,
			Text = text,
			Font = font.Body.Font,
			TextSize = font.BaseSize * font.Body.RelativeSize,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
			TextColor3 = statLabelContentColor.Color3,
			TextTransparency = statLabelContentColor.Transparency,
			LayoutOrder = 2,
		}, {
			UISizeConstraint = React.createElement("UISizeConstraint", {
				MaxSize = Vector2.new(RATING_ITEM_WIDTH, math.huge),
			}),
		}),
	})
end

local function useTextWidth(text, font: Fonts.FontPalette)
	local textWidth = React.useMemo(function()
		local textSize = GetTextSize(
			text,
			font.BaseSize * font.Body.RelativeSize,
			font.Body.Font,
			Vector2.new(RATING_ITEM_WIDTH, math.huge)
		)
		return textSize.X
	end, { text, font } :: { any })
	return textWidth
end

local function StatGroup(props: Props)
	local stylePalette = useStyle()

	local spacingGap = stylePalette.Tokens.Global.Space_100

	local ratingTextWidth = useTextWidth(props.ratingText, stylePalette.Font)
	local playingTextWidth = useTextWidth(props.playingText, stylePalette.Font)

	return React.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
	}, {
		UIListLayout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Padding = UDim.new(0, spacingGap),
		}),
		RatingStats = renderStatItem({
			Size = UDim2.new(0, 0, if UIBloxConfig.useAutomaticSizeYInStatGroup then 0 else 1, 0),
			AutomaticSize = if UIBloxConfig.useAutomaticSizeYInStatGroup
				then Enum.AutomaticSize.XY
				else Enum.AutomaticSize.X,
			BackgroundTransparency = 1,
			LayoutOrder = 1,
		}, RATING_ICON, props.ratingText, stylePalette, ratingTextWidth),

		PlayingStats = if props.playingText ~= nil
			then renderStatItem({
				Size = UDim2.new(0, 0, if UIBloxConfig.useAutomaticSizeYInStatGroup then 0 else 1, 0),
				AutomaticSize = if UIBloxConfig.useAutomaticSizeYInStatGroup
					then Enum.AutomaticSize.XY
					else Enum.AutomaticSize.X,
				BackgroundTransparency = 1,
				LayoutOrder = 2,
			}, PLAYERS_ICON, props.playingText, stylePalette, playingTextWidth)
			else nil,
	})
end

return StatGroup
