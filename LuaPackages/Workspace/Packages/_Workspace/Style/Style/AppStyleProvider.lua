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
local ArgCheck = require(CorePackages.Workspace.Packages.ArgCheck)
local Roact = require(CorePackages.Roact)
local UIBlox = require(CorePackages.UIBlox)
local StylePalette = require(script.Parent.StylePalette)

local GetFFlagLuaAppUseUIBloxColorPalettes =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagLuaAppUseUIBloxColorPalettes
if GetFFlagLuaAppUseUIBloxColorPalettes() then
	return UIBlox.App.Style.AppStyleProvider
end

local AppStyleProvider = Roact.Component:extend("AppStyleProvider")

function AppStyleProvider:render()
	-- TODO: We should move this up once we address APPFDN-1784
	local StyleProvider = UIBlox.Style.Provider

	local style = self.props.style
	ArgCheck.isNotNil(style, "style prop for AppStyleProvider")
	local themeName = style.themeName
	local fontName = style.fontName
	local stylePalette = StylePalette.new()
	stylePalette:updateTheme(themeName)
	stylePalette:updateFont(fontName)
	local appStyle = stylePalette:currentStyle()

	return Roact.createElement(StyleProvider, {
		style = appStyle,
	}, self.props[Roact.Children])
end

return AppStyleProvider
