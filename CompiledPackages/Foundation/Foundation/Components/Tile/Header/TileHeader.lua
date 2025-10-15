local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local View = require(Foundation.Components.View)
local Text = require(Foundation.Components.Text)
local Skeleton = require(Foundation.Components.Skeleton)
local Types = require(Foundation.Components.Types)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withDefaults = require(Foundation.Utility.withDefaults)
local useTextSizeOffset = require(Foundation.Providers.Style.useTextSizeOffset)
local useTile = require(Foundation.Components.Tile.useTile)

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
	layoutOrder: number,
	testId: string
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
	local textSizeOffset = useTextSizeOffset()

	local scaledHeight = lines * (font.FontSize + (textSizeOffset or 0)) * font.LineHeight

	return React.createElement(Text, {
		fontStyle = font,
		textStyle = color,

		Text = text,
		TextXAlignment = textXAlignment,
		TextTruncate = Enum.TextTruncate.AtEnd,
		TextWrapped = if lines > 1 then true else false,
		Size = UDim2.new(1, 0, 0, scaledHeight),
		LayoutOrder = layoutOrder,
		testId = testId,
	})
end

type TileHeaderProps = {
	title: string | TypographyProps,
	subtitle: (string | TypographyProps)?,
	TextXAlignment: Enum.TextXAlignment?,
}

local defaultProps = {
	TextXAlignment = Enum.TextXAlignment.Left,
}

local function TileHeader(tileHeaderProps: TileHeaderProps)
	local props = withDefaults(tileHeaderProps, defaultProps)
	local tokens = useTokens()
	local tileContext = useTile()

	local title = getTypographyComponent(
		props.title,
		tokens.Typography.TitleLarge,
		tokens.Color.Content.Emphasis,
		props.TextXAlignment,
		if props.subtitle == nil then 2 else 1,
		1,
		`{tileContext.testId}--header-title`
	)

	return React.createElement(View, {
		flexItem = {
			FlexMode = Enum.UIFlexMode.Shrink,
		},
		layout = {
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
		},
		tag = "auto-y size-full-0 gap-xxsmall",
		testId = `{tileContext.testId}--header`,
	}, {
		Title = title,
		Subtitle = if props.subtitle ~= nil
			then getTypographyComponent(
				props.subtitle,
				tokens.Typography.CaptionLarge,
				tokens.Color.Content.Default,
				props.TextXAlignment,
				1,
				2,
				`{tileContext.testId}--header-subtitle`
			)
			else nil,
	})
end

return TileHeader
