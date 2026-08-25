local ExperienceTileRoot = script.Parent
local SplitTileRoot = ExperienceTileRoot.Parent
local TileRoot = SplitTileRoot.Parent
local App = TileRoot.Parent
local UIBlox = App.Parent

local UIBloxConfig = require(UIBlox.UIBloxConfig)
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
	contentTitleFont: Fonts.Font,
}

local function getDefaultStyleProps(style: StyleTypes.AppStyle): StyleProps
	assert(style.Tokens ~= nil, "Design token support is not enabled!")
	return {
		backgroundColor = {
			Color = if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then style.Tokens.Color.Surface.Surface_200.Color3
				else style.Tokens.Semantic.Color.Background.Muted.Color3,
			Transparency = if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then style.Tokens.Color.Surface.Surface_200.Transparency
				else style.Tokens.Semantic.Color.Background.Muted.Transparency,
		},
		border = {
			BorderColor = {
				Color = if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
					then style.Tokens.Color.Stroke.Emphasis.Color3
					else style.Tokens.Component.VerticalTile.Base.Container.BorderColor.Color3,
				Transparency = if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
					then style.Tokens.Color.Stroke.Emphasis.Transparency
					else style.Tokens.Component.VerticalTile.Base.Container.BorderColor.Transparency,
			},
			CornerRadius = UDim.new(
				0,
				if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
					then style.Tokens.Radius.Medium
					else style.Tokens.Component.VerticalTile.Base.Container.BorderRadius.LeadingTop
			),
			Width = if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then style.Tokens.Stroke.Standard
				else style.Tokens.Component.VerticalTile.Base.Container.BorderWidth,
		},
		topContentPadding = {
			Left = if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then style.Tokens.Padding.None
				else style.Tokens.Component.VerticalTile.Base.ContentTop.Spacing.Leading,
			Right = if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then style.Tokens.Padding.None
				else style.Tokens.Component.VerticalTile.Base.ContentTop.Spacing.Trailing,
			Top = if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then style.Tokens.Padding.None
				else style.Tokens.Component.VerticalTile.Base.ContentTop.Spacing.Top,
			Bottom = if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then style.Tokens.Padding.None
				else style.Tokens.Component.VerticalTile.Base.ContentTop.Spacing.Bottom,
		},
		bottomContentPadding = {
			Left = if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then style.Tokens.Padding.Small
				else style.Tokens.Component.VerticalTile.Base.ContentBottom.Spacing.Leading,
			Right = if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then style.Tokens.Padding.Small
				else style.Tokens.Component.VerticalTile.Base.ContentBottom.Spacing.Trailing,
			Top = if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then style.Tokens.Padding.Small
				else style.Tokens.Component.VerticalTile.Base.ContentBottom.Spacing.Top,
			Bottom = if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then style.Tokens.Padding.Small
				else style.Tokens.Component.VerticalTile.Base.ContentBottom.Spacing.Bottom,
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
				Color = if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
					then style.Tokens.Color.Common.Shadow.Color3
					else style.Tokens.Semantic.Color.Common.DropShadow.Color3,
				Transparency = if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
					then style.Tokens.Color.Common.Shadow.Transparency
					else style.Tokens.Semantic.Color.Common.DropShadow.Transparency,
			},
			ImageAssetName = "component_assets/dropshadow_24_6",
			SliceCenter = Rect.new(18, 18, 18, 18),
		},
		contentTitlePadding = if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
			then style.Tokens.Size.Size_200
			else style.Tokens.Global.Space_100,
		contentTitleFont = style.Font.Header2,
	}
end

return {
	getDefaultStyleProps = getDefaultStyleProps,
	DEFAULT_FOOTER_HEIGHT = DEFAULT_FOOTER_HEIGHT,
	DEFAULT_TEXT_LINE_COUNT = DEFAULT_TEXT_LINE_COUNT,
}
