local Plugin = script.Parent.Parent.Parent

local FFlagRemoveUILibraryFromToolbox = require(Plugin.Core.Util.getFFlagRemoveUILibraryFromToolbox)()

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local Symbol = require(Libs.Roact.Symbol)
if (not FFlagRemoveUILibraryFromToolbox) then
	local UILibraryThemeKey = Symbol.named("UILibraryraryTheme")
end
local ContextGetter = require(Plugin.Core.Util.ContextGetter)

local getTheme = ContextGetter.getTheme

local ThemeConsumer = Roact.PureComponent:extend("ThemeConsumer")

function ThemeConsumer:init()
	local theme = getTheme(self)

	self.theme = theme
	self.state = {
		themeValues = theme.values,
	}
end

function ThemeConsumer:render()
	return self.props.render(self.state.themeValues)
end

function ThemeConsumer:didMount()
	self.disconnectThemeListener = self.theme:subscribe(function(newValues)
		self:setState({
			themeValues = newValues,
		})
	end)
end

function ThemeConsumer:willUnmount()
	if self.disconnectThemeListener then
		self.disconnectThemeListener()
		self.disconnectThemeListener = nil
	end
end

return ThemeConsumer
