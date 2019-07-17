local Plugin = script.parent.parent.parent

local UILibrary = require(Plugin.Packages.UILibrary)
local StudioTheme = UILibrary.Studio.Theme
local StudioStyle = UILibrary.Studio.Style
local deepJoin = require(Plugin.Src.Util.deepJoin)

local Theme = {}

function Theme.isDarkerTheme()
	-- Assume "darker" theme if the average main background colour is darker
	local mainColour = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainBackground)
	return (mainColour.r + mainColour.g + mainColour.b) / 3 < 0.5
end

-- getColor : function<Color3>(color enum)
-- StyleColor = Enum.StudioStyleGuideColor
-- StyleModifier = Enum.StudioStyleGuideModifier
function Theme.createValues(getColor, StyleColor, StyleModifier)
	-- define the color palette for the UILibrary, override where necessary
	local UILibraryStylePalette = StudioStyle.new(getColor, StyleColor, StyleModifier)
	--UILibraryStylePalette.backgroundColor = Color3.new(1, 1, 1)

	local isDark = Theme.isDarkerTheme()

	-- define all the colors used in the plugin
	local PluginTheme = deepJoin(UILibraryStylePalette, {
		BackgroundColor = getColor(StyleColor.MainBackground),

		Icons = {
			ToolbarIconInspect = "rbxasset://textures/GameSettings/ToolbarIcon.png",
		},
		Labels = {
			TitleBarText = getColor(StyleColor.TitlebarText, StyleModifier.Default),
			TitleBarBackground = getColor(StyleColor.Titlebar, StyleModifier.Default),
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