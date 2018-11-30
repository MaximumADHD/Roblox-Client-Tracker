local Roact = require(game:GetService("CorePackages").Roact)
local Theming = require(script.Parent.Parent.Theming)
local StudioTheme = require(script.Parent.Parent.StudioTheme)
local StudioThemeProvider = Roact.Component:extend("StudioThemeProvider")

function StudioThemeProvider:init()
	self._studioTheme = Theming.createTheme(StudioTheme(self.props.StudioSettings))
end

function StudioThemeProvider:render()
	return Roact.createElement(Theming.ThemeProvider, {
		theme = self._studioTheme,
	}, self.props[Roact.Children])
end

function StudioThemeProvider:didMount()
	self._connection = self.props.StudioSettings.ThemeChanged:Connect(
		function()
			self._studioTheme:update(StudioTheme(self.props.StudioSettings))
		end
	)
end

function StudioThemeProvider:willUnmount()
	self._connection:Disconnect()
end

return StudioThemeProvider
