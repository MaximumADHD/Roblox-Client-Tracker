--[[
	Creates the theme for the plugin.
	Extends the default StudioFrameworkStyles, and also defines values specific
	to components created within this plugin and constant values shared across components.

	Params:
		bool createMock: An optional param that should only be
			set to true in testing.
]]

local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)

local Style = Framework.Style
local StudioTheme = Style.Themes.StudioTheme
-- local _StyleKey = Style.StyleKey -- uncomment to use

local PluginTheme = {
	-- New Plugin Setup: Add theme values, i.e.
	-- [StyleKey.Something] = Color3.new()
}

return function(createMock: boolean?)
	local styleRoot
	if createMock then
		styleRoot = StudioTheme.mock()
	else
		styleRoot = StudioTheme.new()
	end

	return styleRoot:extend(PluginTheme)
end
