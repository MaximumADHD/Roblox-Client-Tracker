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

	-- observe any changes and force a re-render
	self.themeConnection = theme:connect(function(newValues)
		self:setState({
			themeValues = newValues,
		})
	end)
end

function ThemeConsumer:render()
	local tv = self.state.themeValues
	return self.props.render(tv.PluginTheme, tv.UILibraryStylePalette, tv.UILibraryOverrides)
end

function ThemeConsumer:willUnmount()
	if self.themeConnection then
		self.themeConnection:disconnect()
	end
end

return ThemeConsumer