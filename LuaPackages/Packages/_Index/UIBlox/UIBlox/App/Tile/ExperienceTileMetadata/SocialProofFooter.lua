local ExperienceTileMetadata = script.Parent
local Tile = ExperienceTileMetadata.Parent
local App = Tile.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local Cryo = require(Packages.Cryo)
local useStyle = require(UIBlox.Core.Style.useStyle)
local StyleTypes = require(App.Style.StyleTypes)
local IconSize = require(App.ImageSet.Enum.IconSize)
local getIconSize = require(App.ImageSet.getIconSize)

local StatGroup = require(App.Indicator.StatGroup)
local FooterFrame = require(ExperienceTileMetadata.FooterFrame)

export type StyleProps = StatGroup.StyleProps

export type Props = {
	-- Text representing the rating of experience
	ratingText: string,
	-- Text representing the playing information of experience
	playingText: string,
	-- Props to style the footer
	styleProps: StyleProps?,
} & FooterFrame.Props

local function getStyleProps(styleProps: StyleProps?, style: StyleTypes.AppStyle): StyleProps
	local theme = style.Theme
	local tokens = style.Tokens

	local defaultProps = {}
	if tokens then
		defaultProps = {
			spacingGap = tokens.Global.Space_100,
			statSpacingGap = tokens.Global.Space_25,
			statIconSize = tokens.Semantic.Icon.Size.Small,
			statIconContentColor = {
				Color = tokens.Semantic.Color.Text.Muted.Color3,
				Transparency = tokens.Semantic.Color.Text.Muted.Transparency,
			},
			statLabelContentColor = {
				Color = tokens.Semantic.Color.Text.Muted.Color3,
				Transparency = tokens.Semantic.Color.Text.Muted.Transparency,
			},
		}
	else
		defaultProps = {
			spacingGap = 12,
			statSpacingGap = 3,
			statIconSize = getIconSize(IconSize.Small),
			statIconContentColor = theme.TextMuted,
			statLabelContentColor = theme.TextMuted,
		}
	end

	return Cryo.Dictionary.join(defaultProps, styleProps or {})
end

local function SocialProofFooter(props: Props)
	local style = useStyle()

	local styleProps = React.useMemo(function()
		return getStyleProps(props.styleProps, style)
	end, { style, props.styleProps })

	return React.createElement(FooterFrame, props :: FooterFrame.Props, {
		Stats = React.createElement(StatGroup, {
			ratingText = props.ratingText,
			playingText = props.playingText,
			styleProps = styleProps,
		}),
	})
end

return SocialProofFooter
