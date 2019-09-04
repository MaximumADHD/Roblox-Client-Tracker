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

	if game:GetFastFlag("StudioGameSettingsUseNewProviderAndThemeStuff") then
		-- observe any changes and force a re-render
		self.themeConnection = theme:connect(function(newValues)
			self:setState({
				themeValues = newValues,
			})
		end)
	end
end

function ThemeConsumer:render()
	if game:GetFastFlag("StudioGameSettingsUseNewProviderAndThemeStuff") then
		local tv = self.state.themeValues
		return self.props.render(tv.PluginTheme, tv.UILibraryStylePalette, tv.UILibraryOverrides)
	else
		return self.props.render(self.state.themeValues)
	end
end

function ThemeConsumer:didMount()
	if not game:GetFastFlag("StudioGameSettingsUseNewProviderAndThemeStuff") then
		self.disconnectThemeListener = self.theme:subscribe(function(newValues)
			self:setState({
				themeValues = newValues,
			})
		end)
	end
end

function ThemeConsumer:willUnmount()
	if game:GetFastFlag("StudioGameSettingsUseNewProviderAndThemeStuff") then
		if self.themeConnection then
			self.themeConnection:disconnect()
		end
	else
		self.disconnectThemeListener()
	end
end

return ThemeConsumer