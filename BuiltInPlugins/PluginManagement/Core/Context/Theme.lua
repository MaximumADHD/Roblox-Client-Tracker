local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Libs.Roact)
local Symbol = require(Plugin.Libs.Roact.Symbol)
local themeKey = Symbol.named("Theme")

local ThemeProvider = Roact.PureComponent:extend("ThemeProvider")
function ThemeProvider:init()
	local theme = self.props.theme
	assert(theme ~= nil, "No theme was given to this ThemeProvider.")

	self._context[themeKey] = theme
end
function ThemeProvider:render()
	return Roact.oneChild(self.props[Roact.Children])
end

local ThemeConsumer = Roact.PureComponent:extend("ThemeConsumer")
function ThemeConsumer:init()
	assert(self._context[themeKey] ~= nil, "No ThemeProvider found.")
	local theme = self._context[themeKey]

	self.theme = theme
	self.state = {
		themeValues = theme.values,
	}
end
function ThemeConsumer:render()
	local themeValues = self.state.themeValues
	return self.props.themedRender(themeValues.PluginTheme,
		themeValues.UILibraryPalette, themeValues.UILibraryOverrides)
end
function ThemeConsumer:didMount()
	self.themeConnection = self.theme:connect(function(newValues)
		self:setState({
			themeValues = newValues,
		})
	end)
end
function ThemeConsumer:willUnmount()
	if self.themeConnection then
		self.themeConnection:disconnect()
	end
end

-- withTheme should provide a simple way to style elements
-- callback : function<RoactElement>(theme)
local function withTheme(callback)
	return Roact.createElement(ThemeConsumer, {
		themedRender = callback
	})
end

return {
	Provider = ThemeProvider,
	Consumer = ThemeConsumer,
	withTheme = withTheme,
}