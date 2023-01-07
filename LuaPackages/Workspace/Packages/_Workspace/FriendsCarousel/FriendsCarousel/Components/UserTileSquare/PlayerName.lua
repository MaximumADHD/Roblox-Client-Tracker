local FriendsCarousel = script.Parent.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)
local Roact = dependencies.Roact
local Text = dependencies.Text
local memoize = dependencies.memoize

local UIBlox = dependencies.UIBlox
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local Style = UIBlox.Style

local PlayerName = Roact.PureComponent:extend("PlayerName")

export type Props = {
	name: string,
	layoutOrder: number?,
	tileSize: number,
}

function PlayerName:init()
	self.getTextHeight = memoize(function(text, fontType, fontSize): number
		return Text.GetTextHeight(text, fontType, fontSize)
	end)
end

function PlayerName:render()
	local props: Props = self.props

	return Style.withStyle(function(style)
		local theme: dependencies.UIBloxTheme = style.Theme
		local font: dependencies.UIBloxFontPalette = style.Font

		return Roact.createElement(StyledTextLabel, {
			layoutOrder = props.layoutOrder,
			text = props.name,
			fontStyle = font.CaptionHeader,
			colorStyle = theme.TextEmphasis,
			size = UDim2.fromOffset(
				props.tileSize,
				self.getTextHeight(props.name, font.CaptionHeader.Font, font.BaseSize * font.CaptionHeader.RelativeSize)
			),
			textTruncate = Enum.TextTruncate.AtEnd,
			textXAlignment = Enum.TextXAlignment.Left,
			textYAlignment = Enum.TextYAlignment.Center,
			lineHeight = 1,
			fluidSizing = false,
			richText = false,
		})
	end)
end

return PlayerName
