local Plugin = script.Parent.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local themeKey = require(Plugin.Core.Keys.themeKey)

local ThemeProvider = Roact.Component:extend("ThemeProvider")

function ThemeProvider:init()
	self._context[themeKey] = self.props.theme
end

function ThemeProvider:render()
	return Roact.oneChild(self.props[Roact.Children])
end

function ThemeProvider:willUnmount()
	self._context[themeKey]:destroy()
end

return ThemeProvider
