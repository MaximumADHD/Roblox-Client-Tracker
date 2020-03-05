--[[
	The is a wrapper for the style provider for apps.
]]
local Style = script.Parent
local Core = Style.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent
local Roact = require(Packages.Roact)
local t = require(Packages.t)

local StyleProvider = require(UIBlox.Core.Style.StyleProvider)

local AppStylePalette = require(script.Parent.AppStylePalette)

local AppStyleProvider = Roact.Component:extend("AppStyleProvider")

local validateProps = t.strictInterface({
	-- The current style of the app.
	style = t.strictInterface({
		themeName = t.string,
		fontName = t.string
	}),
	[Roact.Children] = t.table
})

function AppStyleProvider:render()
	assert(validateProps(self.props))
	local style = self.props.style
	local themeName = style.themeName
	local fontName = style.fontName
	local stylePalette = AppStylePalette.new()
	stylePalette:updateTheme(themeName)
	stylePalette:updateFont(fontName)
	local appStyle = stylePalette:currentStyle()

	return Roact.createElement(StyleProvider,{
		style = appStyle,
	}, self.props[Roact.Children])
end

return AppStyleProvider