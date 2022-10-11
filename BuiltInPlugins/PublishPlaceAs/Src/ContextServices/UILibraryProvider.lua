local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local UILibrary = require(Plugin.Packages.UILibrary)
local Theming = require(Plugin.Src.ContextServices.Theming)

local UILibraryProvider = Roact.PureComponent:extend("UILibraryProvider")

function UILibraryProvider:render()
	-- since the plugin is handling all the changed signals from Studio, ensure that values are updated
	--	by wrapping UILibraryWrapper in a withTheme. This will ensure re-renders are passed down the chain.
	return Theming.withTheme(function(_, uiLibraryPalette, uiLibraryOverrides)
		local plugin = self.props.plugin
		local focusGui = self.props.focusGui
		local theme = UILibrary.createTheme(uiLibraryPalette, uiLibraryOverrides)

		return Roact.createElement(UILibrary.Wrapper, {
			plugin = plugin,
			theme = theme,
			focusGui = focusGui,
		}, {
			Roact.oneChild(self.props[Roact.Children]),
		})
	end)
end

return UILibraryProvider
