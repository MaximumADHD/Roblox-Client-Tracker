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

local RATING_ICON = "icons/status/games/rating_small"
local PLAYERS_ICON = "icons/status/games/people-playing_small"

export type Props = {
	-- String containing game rating; should have "%" appended
	ratingText: string,
	-- String containing number of users playing; should be formatted using abbreviateCount().
	-- If undefined, the playing stats will not display - only the rating will.
	playingText: string?,
}

local function renderStatItem(containerProps, icon, text, stylePalette)
	local tokens = stylePalette.Tokens
	local font: Fonts.FontPalette = stylePalette.Font
	local textSize = font.BaseSize * font.Body.RelativeSize
	local MaxTextSizeConstraint = textSize + tokens.Global.Size_100

	local statSpacingGap = tokens.Global.Space_25
	local statIconSize = tokens.Semantic.Icon.Size.Small
	local statIconContentColor = tokens.Semantic.Color.Text.Default
	local statLabelContentColor = tokens.Semantic.Color.Text.Default

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
			Size = UDim2.fromScale(0, 0),
			AutomaticSize = Enum.AutomaticSize.XY,
			BackgroundTransparency = 1,
			Text = text,
			Font = font.Body.Font,
			TextSize = textSize,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
			TextTruncate = Enum.TextTruncate.AtEnd,
			TextWrapped = false,
			TextColor3 = statLabelContentColor.Color3,
			TextTransparency = statLabelContentColor.Transparency,
			LayoutOrder = 2,
		}, {
			UISizeConstraint = React.createElement("UISizeConstraint", {
				MaxSize = Vector2.new(tokens.Global.Size_700, math.huge),
			}),
			UiTextSizeConstraint = React.createElement("UITextSizeConstraint", {
				MaxTextSize = MaxTextSizeConstraint,
			}),
		}),
	})
end

local function StatGroup(props: Props)
	local stylePalette = useStyle()

	local spacingGap = stylePalette.Tokens.Global.Space_100

	return React.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		AutomaticSize = Enum.AutomaticSize.X,
	}, {
		UIListLayout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Padding = UDim.new(0, spacingGap),
		}),
		RatingStats = renderStatItem({
			Size = UDim2.fromScale(0, 0),
			AutomaticSize = Enum.AutomaticSize.XY,
			BackgroundTransparency = 1,
			LayoutOrder = 1,
		}, RATING_ICON, props.ratingText, stylePalette),

		PlayingStats = if props.playingText ~= nil
			then renderStatItem({
				Size = UDim2.fromScale(0, 0),
				AutomaticSize = Enum.AutomaticSize.XY,
				BackgroundTransparency = 1,
				LayoutOrder = 2,
			}, PLAYERS_ICON, props.playingText, stylePalette)
			else nil,
	})
end

return StatGroup
