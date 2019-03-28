local Roact = require(script.Parent.Parent.Roact)
local Symbol = require(script.Parent.Parent.Roact.Symbol)
local themeKey = Symbol.named("UILibraryTheme")
local createTheme = require(script.Parent.createTheme)

local ThemeProvider = Roact.PureComponent:extend("UILibraryThemeProvider")
function ThemeProvider:init()
	local theme = self.props.theme
	assert(theme ~= nil, "No theme was given to this ThemeProvider.")

	self._context[themeKey] = theme
end
function ThemeProvider:render()
	return Roact.oneChild(self.props[Roact.Children])
end

-- the consumer should complain if it doesn't have a theme
local ThemeConsumer = Roact.PureComponent:extend("UILibraryThemeConsumer")
function ThemeConsumer:init()
	assert(self._context[themeKey] ~= nil, "No ThemeProvider found.")
	self.theme = self._context[themeKey]
end
function ThemeConsumer:render()
	return self.props.themedRender(self.theme)
end

-- withTheme should provide a simple way to style elements
-- callback : function<RoactElement>(theme)
local function withTheme(callback)
	return Roact.createElement(ThemeConsumer, {
		themedRender = callback
	})
end

local function makeDummyTheme()
	return createTheme({
		backgroundColor = Color3.new(),
		textColor = Color3.new(),
	})
end

return {
	Provider = ThemeProvider,
	Consumer = ThemeConsumer,
	DummyTheme = makeDummyTheme(),
	withTheme = withTheme,
}