local ExperienceTileRoot = script.Parent
local SplitTileRoot = ExperienceTileRoot.Parent
local TileRoot = SplitTileRoot.Parent
local App = TileRoot.Parent

local StyleTypes = require(App.Style.StyleTypes)
local Fonts = require(App.Style.Fonts)

local DEFAULT_FOOTER_HEIGHT = 22
local DEFAULT_TEXT_LINE_COUNT = 2

export type StyleProps = {
	-- Color for the background
	backgroundColor: StyleTypes.ThemeItem,
	-- Border config
	border: StyleTypes.BorderItem,
	-- Drop shadow config
	dropShadow: StyleTypes.DropShadowItem,
	-- Padding for TopContent which is to mainly host the Thumbnail
	topContentPadding: StyleTypes.PaddingItem,
	-- Padding for BottomContent which is to mainly host the Content and Footer
	bottomContentPadding: StyleTypes.PaddingItem,
	-- Color for the overlay handling the control states
	overlayColors: StyleTypes.ControlStateColors,
	-- Padding for the gamepad selection cursor
	selectionCursorPadding: StyleTypes.PaddingItem,
	-- Padding between the content text and footer
	contentTitlePadding: number,
	-- The Font type of the title
	contentTitleFont: Fonts.FontInfo,
}

local function getDefaultStyleProps(style: StyleTypes.AppStyle): StyleProps
	assert(style.Tokens ~= nil, "Design token support is not enabled!")
	return {
		backgroundColor = {
			Color = style.Tokens.Color.Surface.Surface_200.Color3,
			Transparency = style.Tokens.Color.Surface.Surface_200.Transparency,
		},
		border = {
			BorderColor = {
				Color = style.Tokens.Color.Stroke.Emphasis.Color3,
				Transparency = style.Tokens.Color.Stroke.Emphasis.Transparency,
			},
			CornerRadius = UDim.new(0, style.Tokens.Radius.Medium),
			Width = style.Tokens.Stroke.Standard,
		},
		topContentPadding = {
			Left = style.Tokens.Padding.None,
			Right = style.Tokens.Padding.None,
			Top = style.Tokens.Padding.None,
			Bottom = style.Tokens.Padding.None,
		},
		bottomContentPadding = {
			Left = style.Tokens.Padding.Small,
			Right = style.Tokens.Padding.Small,
			Top = style.Tokens.Padding.Small,
			Bottom = style.Tokens.Padding.Small,
		},
		overlayColors = {},
		selectionCursorPadding = {
			Left = 0,
			Right = 0,
			Top = 0,
			Bottom = 0,
		},
		-- TODO: We don't have the drop shadow token yet
		dropShadow = {
			Position = UDim2.new(0.5, 0, 0.5, 2),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Size = UDim2.new(1, 10, 1, 12),
			ImageColor = {
				Color = style.Tokens.Color.Common.Shadow.Color3,
				Transparency = style.Tokens.Color.Common.Shadow.Transparency,
			},
			ImageAssetName = "component_assets/dropshadow_24_6",
			SliceCenter = Rect.new(18, 18, 18, 18),
		},
		contentTitlePadding = style.Tokens.Size.Size_200,
		contentTitleFont = style.Font.Header2,
	}
end

return {
	getDefaultStyleProps = getDefaultStyleProps,
	DEFAULT_FOOTER_HEIGHT = DEFAULT_FOOTER_HEIGHT,
	DEFAULT_TEXT_LINE_COUNT = DEFAULT_TEXT_LINE_COUNT,
}
