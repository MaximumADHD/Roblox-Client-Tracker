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

local PluginTheme = {
	TopBar = {
		-- TODO: Use AutomaticSize.X once FFlagDevFrameworkAddContainerAutomaticSizing is enabled
		ButtonSize = UDim2.new(0, 80, 1, 0),
		Padding = {
			Left = 10,
			Top = 6,
			Right = 10,
			Bottom = 5,
		},
		Spacing = 6,
	},

	TreeViewToolbar = {
		Padding = {
			Left = 6,
			Top = 4,
			Right = 6,
			Bottom = 3,
		},
		Spacing = 6,
	},

	Sizes = {
		PreviewHeight = 200,
		TopBarHeight = 40,
		ToolbarHeight = 30,
	},
}

if THEME_REFACTOR then
	return function(createMock)
		local styleRoot
		if createMock then
			styleRoot = StudioTheme.mock()
		else
			styleRoot = StudioTheme.new()
		end

		return styleRoot:extend(PluginTheme)
	end
else
	-- TODO: DEVTOOLS-4731: Once THEME_REFACTOR is on, remove this
	assert(false, "Mesh Importer requires Stylizer")
end
