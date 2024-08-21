local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local FillBehavior = require(Foundation.Enums.FillBehavior)
local useTileLayout = require(Foundation.Components.Tile.useTileLayout)
local View = require(Foundation.Components.View)
local Text = require(Foundation.Components.Text)
local Skeleton = require(Foundation.Components.Skeleton)
local Types = require(Foundation.Components.Types)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withDefaults = require(Foundation.Utility.withDefaults)
type ColorStyle = Types.ColorStyle

type FontStyle = {
	Font: Enum.Font,
	FontSize: number,
	LineHeight: number,
}

type TypographyProps = {
	text: string?,
	isLoading: boolean?,
	fontStyle: FontStyle?,
	colorStyle: ColorStyle?,
	numLines: number?,
}

local function getTypographyComponent(
	props: string | TypographyProps,
	fontStyle: FontStyle,
	colorStyle: ColorStyle,
	textXAlignment: Enum.TextXAlignment?,
	numLines: number,
	layoutOrder: number
): React.ReactNode
	local text = nil :: string?
	local font = nil :: FontStyle?
	local color = nil :: ColorStyle?
	local lines = nil :: number?
	if typeof(props) == "string" then
		text = props
		font = fontStyle
		color = colorStyle
		lines = numLines
	else
		if props.isLoading then
			-- Only one line of shimmer on each element
			return React.createElement(Skeleton, {
				Size = UDim2.new(1 / layoutOrder, 0, 0, fontStyle.FontSize),
				LayoutOrder = layoutOrder,
			})
		end

		text = props.text
		font = props.fontStyle or fontStyle
		color = props.colorStyle or colorStyle
		lines = props.numLines or numLines
	end

	assert(font ~= nil, "fontStyle cannot be nil")
	assert(color ~= nil, "colorStyle cannot be nil")
	assert(lines ~= nil, "numLines cannot be nil")

	-- Set LineHeight to 1 for now - LineHeight on this font doesn't look right.
	font.LineHeight = 1

	return React.createElement(Text, {
		fontStyle = font,
		textStyle = color,

		Text = text,
		TextXAlignment = textXAlignment,
		TextTruncate = Enum.TextTruncate.AtEnd,
		TextWrapped = if lines > 1 then true else false,

		AutomaticSize = Enum.AutomaticSize.Y,
		Size = UDim2.fromScale(1, 0),
		LayoutOrder = layoutOrder,
	}, {
		UISizeConstraint = React.createElement("UISizeConstraint", {
			MaxSize = Vector2.new(1000, lines * font.FontSize * font.LineHeight),
		}),
	})
end

type TileHeaderProps = {
	title: string | TypographyProps,
	subtitle: (string | TypographyProps)?,
	spacing: number?,
	TextXAlignment: Enum.TextXAlignment?,
}

local defaultProps = {
	TextXAlignment = Enum.TextXAlignment.Left,
}

local function TileHeader(tileHeaderProps: TileHeaderProps)
	local props = withDefaults(tileHeaderProps, defaultProps)
	local tokens = useTokens()
	local tileLayout = useTileLayout()

	local title = getTypographyComponent(
		props.title,
		tokens.Typography.TitleLarge,
		tokens.Color.Content.Emphasis,
		props.TextXAlignment,
		if props.subtitle == nil then 2 else 1,
		1
	)

	return React.createElement(View, {
		flexItem = {
			FlexMode = if tileLayout.fillBehavior == FillBehavior.Fit
				then Enum.UIFlexMode.Shrink
				else Enum.UIFlexMode.Grow,
		},
		layout = {
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			FillDirection = Enum.FillDirection.Vertical,
			Padding = UDim.new(0, props.spacing or tokens.Padding.XSmall),
			SortOrder = Enum.SortOrder.LayoutOrder,
		},
		tag = "auto-y size-full-0",
	}, {
		Title = title,
		Subtitle = if props.subtitle ~= nil
			then getTypographyComponent(
				props.subtitle,
				tokens.Typography.CaptionLarge,
				tokens.Color.Content.Default,
				props.TextXAlignment,
				1,
				2
			)
			else nil,
	})
end

return TileHeader
