local MediaGallery = script.Parent
local Container = MediaGallery.Parent
local App = Container.Parent

local StyleTypes = require(App.Style.StyleTypes)
local Fonts = require(App.Style.Fonts)

export type StyleProps = {
	-- Border radius of carousel item
	borderRadius: UDim,
	-- Gutter of carousel
	gutter: number,
	-- Gap between content list's icon and text
	contentGap: number,
	-- The Font type of text
	titleFont: Fonts.Font,
	-- Color for title's text
	titleTextColor: StyleTypes.ThemeItem,
}

local function getDefaultStyleProps(style: StyleTypes.AppStyle): StyleProps
	return {
		borderRadius = UDim.new(0, style.Tokens.Component.VerticalTile.Base.Container.BorderRadius.LeadingTop),
		contentGap = style.Tokens.Global.Space_150,
		gutter = style.Tokens.Global.Space_300,
		titleFont = style.Font.Header1,
		titleTextColor = {
			Color = style.Tokens.Semantic.Color.Text.Emphasis.Color3,
			Transparency = style.Tokens.Semantic.Color.Text.Emphasis.Transparency,
		},
	}
end

return {
	getDefaultStyleProps = getDefaultStyleProps,
}
