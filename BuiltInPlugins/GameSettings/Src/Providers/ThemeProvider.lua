local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Roact)

local themeKey = require(Plugin.Src.Keys.themeKey)

local ThemeProvider = Roact.Component:extend("ThemeProvider")

function ThemeProvider:init()
	local theme = self.props.theme

	if theme == nil then
		error("Error initializing ThemeProvider. Expected a `theme` prop.")
	end

	self._context[themeKey] = self.props.theme
end

function ThemeProvider:render()
	return Roact.oneChild(self.props[Roact.Children])
end

function ThemeProvider:willUnmount()
	self._context[themeKey]:destroy()
end

return ThemeProvider