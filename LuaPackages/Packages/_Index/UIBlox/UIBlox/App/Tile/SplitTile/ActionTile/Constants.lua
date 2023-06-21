local ActionTile = script.Parent
local SplitTileRoot = ActionTile.Parent
local TileRoot = SplitTileRoot.Parent
local App = TileRoot.Parent

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
			Color = style.Tokens.Component.VerticalTile.Base.Container.Background.Color3,
			Transparency = style.Tokens.Component.VerticalTile.Base.Container.Background.Transparency,
		},
		border = {
			BorderColor = {
				Color = style.Tokens.Component.VerticalTile.Base.Container.BorderColor.Color3,
				Transparency = style.Tokens.Component.VerticalTile.Base.Container.BorderColor.Transparency,
			},
			CornerRadius = UDim.new(0, style.Tokens.Component.VerticalTile.Base.Container.BorderRadius.LeadingTop),
			Width = style.Tokens.Component.VerticalTile.Base.Container.BorderWidth,
		},
		topContentPadding = {
			Left = style.Tokens.Component.VerticalTile.Base.ContentTop.Spacing.Leading,
			Right = style.Tokens.Component.VerticalTile.Base.ContentTop.Spacing.Trailing,
			Top = style.Tokens.Component.VerticalTile.Base.ContentTop.Spacing.Top,
			Bottom = style.Tokens.Component.VerticalTile.Base.ContentTop.Spacing.Bottom,
		},
		overlayColors = {},
		selectionCursorPadding = {
			Left = 0,
			Right = 0,
			Top = 0,
			Bottom = 0,
		},
		contentGap = style.Tokens.Global.Space_50,
		titleFont = style.Font.Header2,
		titleTextColor = {
			Color = style.Tokens.Semantic.Color.Text.Emphasis.Color3,
			Transparency = style.Tokens.Semantic.Color.Text.Emphasis.Transparency,
		},
		iconSize = style.Tokens.Semantic.Icon.Size.Medium,
		iconImageColor = {
			Color = style.Tokens.Semantic.Color.Icon.Emphasis.Color3,
			Transparency = style.Tokens.Semantic.Color.Icon.Emphasis.Transparency,
		},
		-- TODO: We don't have the drop shadow token yet
		dropShadow = {
			Position = UDim2.new(0.5, 0, 0.5, 2),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Size = UDim2.new(1, 10, 1, 12),
			ImageColor = {
				Color = style.Tokens.Semantic.Color.Common.DropShadow.Color3,
				Transparency = style.Tokens.Semantic.Color.Common.DropShadow.Transparency,
			},
			ImageAssetName = "component_assets/dropshadow_24_6",
			SliceCenter = Rect.new(18, 18, 18, 18),
		},
	}
end

return {
	getDefaultStyleProps = getDefaultStyleProps,
}
