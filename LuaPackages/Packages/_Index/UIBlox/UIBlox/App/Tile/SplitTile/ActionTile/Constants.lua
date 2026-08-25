local ActionTile = script.Parent
local SplitTileRoot = ActionTile.Parent
local TileRoot = SplitTileRoot.Parent
local App = TileRoot.Parent
local UIBlox = App.Parent

local UIBloxConfig = require(UIBlox.UIBloxConfig)
local StyleTypes = require(App.Style.StyleTypes)
local Fonts = require(App.Style.Fonts)

export type StyleProps = {
	-- Color for the background
	backgroundColor: StyleTypes.ThemeItem,
	-- Border config
	border: StyleTypes.BorderItem,
	-- Drop shadow config
	dropShadow: StyleTypes.DropShadowItem,
	-- Padding for TopContent
	topContentPadding: StyleTypes.PaddingItem,
	-- Color for the overlay handling the control states
	overlayColors: StyleTypes.ControlStateColors,
	-- Padding for the gamepad selection cursor
	selectionCursorPadding: StyleTypes.PaddingItem,
	-- Gap between content list's icon and text
	contentGap: number,
	-- The Font type of text
	titleFont: Fonts.Font,
	-- Color for title's text
	titleTextColor: StyleTypes.ThemeItem,
	-- The length of icon size
	iconSize: number,
	-- Color for icon's image
	iconImageColor: StyleTypes.ThemeItem,
}

local function getDefaultStyleProps(style: StyleTypes.AppStyle): StyleProps
	assert(style.Tokens ~= nil, "Design token support is not enabled!")
	return {
		backgroundColor = {
			Color = if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then style.Tokens.Color.Surface.Surface_300.Color3
				else style.Tokens.Component.VerticalTile.Base.Container.Background.Color3,
			Transparency = if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then style.Tokens.Color.Surface.Surface_300.Transparency
				else style.Tokens.Component.VerticalTile.Base.Container.Background.Transparency,
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
		overlayColors = {},
		selectionCursorPadding = {
			Left = 0,
			Right = 0,
			Top = 0,
			Bottom = 0,
		},
		contentGap = if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
			then style.Tokens.Size.Size_100
			else style.Tokens.Global.Space_50,
		titleFont = style.Font.Header2,
		titleTextColor = {
			Color = if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then style.Tokens.Color.Content.Emphasis.Color3
				else style.Tokens.Semantic.Color.Text.Emphasis.Color3,
			Transparency = if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then style.Tokens.Color.Content.Emphasis.Transparency
				else style.Tokens.Semantic.Color.Text.Emphasis.Transparency,
		},
		iconSize = if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
			then style.Tokens.Size.Size_900
			else style.Tokens.Semantic.Icon.Size.Medium,
		iconImageColor = {
			Color = if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then style.Tokens.Color.Content.Emphasis.Color3
				else style.Tokens.Semantic.Color.Icon.Emphasis.Color3,
			Transparency = if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then style.Tokens.Color.Content.Emphasis.Transparency
				else style.Tokens.Semantic.Color.Icon.Emphasis.Transparency,
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
	}
end

return {
	getDefaultStyleProps = getDefaultStyleProps,
}
