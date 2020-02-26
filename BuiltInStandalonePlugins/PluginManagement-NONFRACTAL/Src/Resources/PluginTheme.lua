local Plugin = script.parent.parent.parent

local UILibrary = require(Plugin.Packages.UILibrary)
local StudioTheme = UILibrary.Studio.Theme
local StudioStyle = UILibrary.Studio.Style
local Cryo = require(Plugin.Packages.Cryo)

local function defineTheme(defaults, overrides)
    local themeName = settings().Studio["UI Theme"].Name
    local override = overrides and overrides[themeName]
    if override then
        return Cryo.Dictionary.join(defaults, override)
    else
        return defaults
    end
end


local Theme = {}

-- getColor : function<Color3>(color enum)
-- c = Enum.StudioStyleGuideColor
-- m = Enum.StudioStyleGuideModifier
function Theme.createValues(getColor, c, m)
	-- define the color palette for the UILibrary, override where necessary
	local UILibraryStylePalette = StudioStyle.new(getColor, c, m)
	--UILibraryStylePalette.backgroundColor = Color3.new(1, 1, 1)


	-- define all the colors used in the plugin
	local PluginTheme = Cryo.Dictionary.join(UILibraryStylePalette, {
		Icons = {
			-- make a new folder in content/textures to load a custom icon
			ToolbarIconShow = "rbxasset://textures/GameSettings/ToolbarIcon.png",
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