local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Roact)
local UILibrary = require(Plugin.UILibrary)
local withTheme = require(Plugin.Src.Consumers.withTheme)


local UILibraryProvider = Roact.PureComponent:extend("UILibraryProvider")

function UILibraryProvider:render()
	-- since the plugin is handling all the changed signals from Studio, ensure that values are updated
	--  by wrapping UILibraryWrapper in a withTheme. This will ensure re-renders are passed down the chain.
	return withTheme(function(_, uiLibraryPalette, uiLibraryOverrides)
		local plugin = self.props.plugin
		local pluginGui = self.props.pluginGui
		local theme = UILibrary.createTheme(uiLibraryPalette, uiLibraryOverrides)

		return Roact.createElement(UILibrary.Wrapper, {
			focusGui = pluginGui,
			plugin = plugin,
			theme = theme
		},{
			Roact.oneChild(self.props[Roact.Children])
		})
	end)
end


return UILibraryProvider