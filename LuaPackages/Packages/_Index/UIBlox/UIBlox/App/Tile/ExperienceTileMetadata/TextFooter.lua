local ExperienceTileMetadata = script.Parent
local Tile = ExperienceTileMetadata.Parent
local App = Tile.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local useStyle = require(UIBlox.Core.Style.useStyle)
local StyleTypes = require(App.Style.StyleTypes)
local Fonts = require(App.Style.Fonts)

local FooterFrame = require(ExperienceTileMetadata.FooterFrame)

export type StyleProps = {
	-- Corner radius of text label
	cornerRadius: number?,
	-- Color of text
	textColor: StyleTypes.ThemeItem?,
	-- Color of background
	backgroundColor: StyleTypes.ThemeItem?,
	-- Horizontal alignment of text
	textXAlignment: Enum.TextXAlignment?,
	-- Font of text
	textFont: Fonts.Font?,
}

export type Props = {
	-- Text which is displayed in and styled by the footer
	text: string,
	-- Props to style footer
	styleProps: StyleProps?,
} & FooterFrame.Props

local function getStyleProps(styleProps: StyleProps?, style: StyleTypes.AppStyle): StyleProps
	local props = styleProps or {} :: StyleProps
	return {
		cornerRadius = props.cornerRadius,
		textColor = props.textColor or style.Theme.TextMuted,
		backgroundColor = props.backgroundColor,
		textXAlignment = props.textXAlignment or Enum.TextXAlignment.Left,
		textFont = props.textFont or style.Font.CaptionBody,
	}
end

local function TextFooter(props: Props)
	local style = useStyle()
	local font = style.Font

	local styleProps = getStyleProps(props.styleProps, style)
	local cornerRadius = styleProps.cornerRadius
	local textColor = styleProps.textColor :: StyleTypes.ThemeItem
	local backgroundColor = styleProps.backgroundColor
	local textXAlignment = styleProps.textXAlignment
	local textFont = styleProps.textFont :: Fonts.Font

	return React.createElement(FooterFrame, props :: FooterFrame.Props, {
		Text = React.createElement("TextLabel", {
			Size = UDim2.fromScale(1, 1),
			BackgroundColor3 = if backgroundColor then backgroundColor.Color else nil,
			BackgroundTransparency = if backgroundColor then backgroundColor.Transparency else 1,
			BorderSizePixel = 0,
			Text = props.text,
			TextXAlignment = textXAlignment,
			TextYAlignment = Enum.TextYAlignment.Center,
			Font = textFont.Font,
			TextSize = font.BaseSize * textFont.RelativeSize,
			TextColor3 = textColor.Color,
			TextTransparency = textColor.Transparency,
		}, {
			UICorner = if cornerRadius
				then React.createElement("UICorner", {
					CornerRadius = UDim.new(0, cornerRadius),
				})
				else nil,
		}),
	})
end

return TextFooter
