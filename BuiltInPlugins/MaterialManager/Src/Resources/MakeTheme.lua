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
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

local Style = Framework.Style
local StudioTheme = Style.Themes.StudioTheme
-- local _StyleKey = Style.StyleKey -- uncomment to use

local function getPluginTheme()
	local SideBarWidth = 300
	local TopBarHeight = 35
	local MaterialDetailsWidth = 300

	return {
		MaterialManagerView = {
			SideBarSize = UDim2.new(0, SideBarWidth, 1, 0),
			TopBarSize = UDim2.new(1, 0, 0, TopBarHeight),
			MainViewSize = UDim2.new(1, -SideBarWidth, 1, 0),
			MaterialViewSize = UDim2.new(1, 0, 1, -TopBarHeight),
			MaterialGridSize = UDim2.new(1, -MaterialDetailsWidth, 1, 0),
			MaterialDetailsSize = UDim2.new(0, MaterialDetailsWidth, 1, 0),
		}
	}
end

if THEME_REFACTOR then
	return function(createMock: boolean?)
		local styleRoot
		if createMock then
			styleRoot = StudioTheme.mock()
		else
			styleRoot = StudioTheme.new()
		end

		return styleRoot:extend(getPluginTheme())
	end
else
	-- TODO: DEVTOOLS-4731: Once THEME_REFACTOR is on, remove this
	warn("Stylizer is required for this template")
end
