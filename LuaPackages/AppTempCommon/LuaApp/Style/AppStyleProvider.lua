--[[
	The is a wrapper for the style provider for apps.
	props:
		style : table - Includes the name of the theme and font being used.
		{
			themeName : string - The name of the theme being used.
			fontName : string - The name of the font being used.
		}
]]
local CorePackages = game:GetService("CorePackages")
local ArgCheck = require(CorePackages.ArgCheck)
local Roact = require(CorePackages.Roact)
local UIBlox = require(CorePackages.UIBlox)
local StyleProvider = UIBlox.Style.Provider
local StylePalette = require(script.Parent.StylePalette)

local AppStyleProvider = Roact.Component:extend("AppStyleProvider")

function AppStyleProvider:render()
	local style = self.props.style
	ArgCheck.isNotNil(style, "style prop for AppStyleProvider")
	local themeName = style.themeName
	local fontName = style.fontName
	local stylePalette = StylePalette.new()
	stylePalette:updateTheme(themeName)
	stylePalette:updateFont(fontName)
	local appStyle = stylePalette:currentStyle()

	return Roact.createElement(StyleProvider,{
		style = appStyle,
	}, self.props[Roact.Children])
end

return AppStyleProvider