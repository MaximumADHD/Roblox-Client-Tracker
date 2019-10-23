--[[
	Special provider that allows theme to update the UILibraryWrapper.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Libs.Roact)

local Theme = require(Plugin.Core.Context.Theme)
local withTheme = Theme.withTheme

local UILibrary = require(Plugin.Libs.UILibrary)
local UILibraryWrapper = UILibrary.Wrapper
local UILibraryCreateTheme = UILibrary.createTheme
local Cryo = require(Plugin.Libs.Cryo)

local UILibraryProvider = Roact.PureComponent:extend("UILibraryProvider")

function UILibraryProvider:render()
	return withTheme(function(_, uiLibraryPalette, uiLibraryOverrides)
		local props = Cryo.Dictionary.join(self.props, {
			theme = UILibraryCreateTheme(uiLibraryPalette, uiLibraryOverrides)
		})

		return Roact.createElement(UILibraryWrapper, props)
	end)
end

return UILibraryProvider