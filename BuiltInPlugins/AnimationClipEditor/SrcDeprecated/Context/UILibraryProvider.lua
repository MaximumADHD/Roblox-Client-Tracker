--[[
	Special provider that allows theme to update the UILibraryWrapper.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local Theme = require(Plugin.SrcDeprecated.Context.Theme)
local withTheme = Theme.withTheme

local UILibrary = require(Plugin.UILibrary)
local UILibraryWrapper = UILibrary.Wrapper
local UILibraryCreateTheme = UILibrary.createTheme
local join = UILibrary.Util.join

local UILibraryProvider = Roact.PureComponent:extend("ServicesWrapper")

function UILibraryProvider:render()
	return withTheme(function(_, uiLibraryPalette, uiLibraryOverrides)
		local props = join(self.props, {
			theme = UILibraryCreateTheme(uiLibraryPalette, uiLibraryOverrides)
		})

		return Roact.createElement(UILibraryWrapper, props)
	end)
end

return UILibraryProvider