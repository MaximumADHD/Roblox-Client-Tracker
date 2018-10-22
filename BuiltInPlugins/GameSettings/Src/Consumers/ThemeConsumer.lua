local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Roact)

local themeKey = require(Plugin.Src.Keys.themeKey)

local ThemeConsumer = Roact.Component:extend("ThemeConsumer")

function ThemeConsumer:init()
	local theme = self._context[themeKey]

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
	self.disconnectThemeListener()
end

return ThemeConsumer