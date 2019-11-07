local Plugin = script.parent.parent.parent

local UILibrary = require(Plugin.Packages.UILibrary)
local StudioTheme = UILibrary.Studio.Theme
local StudioStyle = UILibrary.Studio.Style
local deepJoin = require(Plugin.Src.Util.deepJoin)

local Theme = {}

-- getColor : function<Color3>(color enum)
-- c = Enum.StudioStyleGuideColor
-- m = Enum.StudioStyleGuideModifier
function Theme.createValues(getColor, c, m)
	-- define the color palette for the UILibrary, override where necessary
	local UILibraryStylePalette = StudioStyle.new(getColor, c, m)
	--UILibraryStylePalette.backgroundColor = Color3.new(1, 1, 1)


	-- define all the colors used in the plugin
	local PluginTheme = deepJoin(UILibraryStylePalette, {
		Icons = {
			ToolbarIconPlayerEmulator = "rbxasset://textures/StudioPlayerEmulator/player_emulator_32.png",
		},
		Labels = {
			TitleBarText = getColor(c.TitlebarText, m.Default),
			TitleBarBackground = getColor(c.Titlebar, m.Default),
		},
	})


	-- define any custom changes to UILibrary elements, use UILibrary's createTheme path syntax
	local UILibraryOverrides = {
		treeView = {
			elementPadding = 0,
		},
	}

	return {
		PluginTheme = PluginTheme,
		UILibraryStylePalette = UILibraryStylePalette,
		UILibraryOverrides = UILibraryOverrides,
	}
end

function Theme.new()
	return StudioTheme.new(Theme.createValues)
end

function Theme.mock()
	return StudioTheme.newDummyTheme(Theme.createValues)
end

return Theme