local Indicator = script.Parent
local App = Indicator.Parent
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent

local React = require(Packages.React)
local Cryo = require(Packages.Cryo)

local Images = require(App.ImageSet.Images)
local IconSize = require(App.ImageSet.Enum.IconSize)
local getIconSize = require(App.ImageSet.getIconSize)

local ImageSetComponent = require(Core.ImageSet.ImageSetComponent)
local useStyle = require(Core.Style.useStyle)
local StyleTypes = require(UIBlox.App.Style.StyleTypes)
local Fonts = require(App.Style.Fonts)
local UIBloxConfig = require(UIBlox.UIBloxConfig)
local GetTextSize = require(UIBlox.Core.Text.GetTextSize)

local RATING_ICON = "icons/status/games/rating_small"
local PLAYERS_ICON = "icons/status/games/people-playing_small"

local RATING_ITEM_WIDTH = 40

export type StyleProps = {
	spacingGap: number?,
	statSpacingGap: number?,
	statIconSize: number?,
	statIconContentColor: StyleTypes.ThemeItem?,
	statLabelContentColor: StyleTypes.ThemeItem?,
}

export type Props = {
	-- String containing game rating; should have "%" appended
	ratingText: string,
	-- String containing number of users playing; should be formatted using abbreviateCount().
	-- If undefined, the playing stats will not display - only the rating will.
	playingText: string?,
	-- Props to style the component
	styleProps: StyleProps?,
}

local defaultStyleProps: StyleProps = {
	spacingGap = 12,
	statSpacingGap = 4,
	statIconSize = getIconSize(IconSize.Small),
}

local function renderStatItem(containerProps, icon, text, stylePalette, styleProps: StyleProps, textWidth: number?)
	local useTokensStatGroup = UIBloxConfig.useTokensStatGroup

	local theme = stylePalette.Theme
	local tokens = stylePalette.Tokens
	local font: Fonts.FontPalette = stylePalette.Font

	local statSpacingGap = if useTokensStatGroup then tokens.Global.Space_25 else styleProps.statSpacingGap
	local statIconSize = if useTokensStatGroup
		then tokens.Semantic.Icon.Size.Small
		else styleProps.statIconSize :: number
	local statIconContentColor = if useTokensStatGroup
		then tokens.Semantic.Color.Text.Muted
		else styleProps.statIconContentColor or theme.IconDefault
	local statLabelContentColor = if useTokensStatGroup
		then tokens.Semantic.Color.Text.Muted
		else styleProps.statLabelContentColor or theme.TextMuted

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
			ImageColor3 = if useTokensStatGroup
				then (statIconContentColor :: { Color3: Color3, Transparency: number }).Color3
				else (statIconContentColor :: { Color: Color3, Transparency: number }).Color,
			LayoutOrder = 1,
			AnchorPoint = Vector2.new(0, 0.5),
		}),
		Label = React.createElement("TextLabel", {
			Size = UDim2.new(0, if textWidth then textWidth else 0, 1, 0),
			AutomaticSize = if textWidth then nil else Enum.AutomaticSize.X,
			BackgroundTransparency = 1,
			Text = text,
			Font = font.Body.Font,
			TextSize = font.BaseSize * font.Body.RelativeSize,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
			TextColor3 = if useTokensStatGroup
				then (statLabelContentColor :: { Color3: Color3, Transparency: number }).Color3
				else (statLabelContentColor :: { Color: Color3, Transparency: number }).Color,
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

	local styleProps = Cryo.Dictionary.join(defaultStyleProps, props.styleProps or {})
	local spacingGap = if UIBloxConfig.useTokensStatGroup
		then stylePalette.Tokens.Global.Space_100
		else styleProps.spacingGap

	local ratingTextWidth, playingTextWidth
	if UIBloxConfig.useStatGroupManualSize then
		ratingTextWidth = useTextWidth(props.ratingText, stylePalette.Font)
		playingTextWidth = useTextWidth(props.playingText, stylePalette.Font)
	end

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
			Size = UDim2.new(0, 0, 1, 0),
			AutomaticSize = Enum.AutomaticSize.X,
			BackgroundTransparency = 1,
			LayoutOrder = 1,
		}, RATING_ICON, props.ratingText, stylePalette, styleProps, ratingTextWidth),

		PlayingStats = if props.playingText ~= nil
			then renderStatItem({
				Size = UDim2.new(0, 0, 1, 0),
				AutomaticSize = Enum.AutomaticSize.X,
				BackgroundTransparency = 1,
				LayoutOrder = 2,
			}, PLAYERS_ICON, props.playingText, stylePalette, styleProps, playingTextWidth)
			else nil,
	})
end

return StatGroup
