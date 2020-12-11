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

local Util = Framework.Util
local FlagsList = Util.Flags.new({
	FFlagRefactorDevFrameworkTheme = {"RefactorDevFrameworkTheme"},
})

local Style = Framework.Style
local StudioTheme = Style.Themes.StudioTheme
local getPluginTheme = require(script.Parent.getPluginTheme)

if FlagsList:get("FFlagRefactorDevFrameworkTheme") then
	return function(createMock)
		local styleRoot
		if createMock then
			styleRoot = StudioTheme.mock()
		else
			styleRoot = StudioTheme.new()
		end

		return styleRoot:extend(getPluginTheme())
	end
else 
	-- TODO: DEVTOOLS-4731: Once RefactorDevFrameworkTheme is on, remove this
	return require(script.Parent.DEPRECATED_MakeTheme)
end


