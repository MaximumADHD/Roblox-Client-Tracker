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
	local isDark = settings().Studio["UI Theme"].Name == Enum.UITheme.Dark.Name

	-- define the color palette for the UILibrary, override where necessary
	local UILibraryStylePalette = StudioStyle.new(getColor, c, m)

	-- define all the colors used in the plugin
	local PluginTheme = deepJoin(UILibraryStylePalette, {
		defaultButton = {
			ButtonColor = isDark and getColor(c.MainButton) or getColor(c.CurrentMarker),
			ButtonColor_Hover = getColor(c.LinkText),
			ButtonColor_Disabled = isDark and getColor(c.Button, m.Disabled) or Color3.fromRGB(153, 218, 255),
			TextColor = Color3.new(1, 1, 1),
			TextColor_Disabled = isDark and getColor(c.ButtonText, m.Disabled) or Color3.new(1, 1, 1),
			BorderColor = getColor(c.Light),
		},
		cancelButton = {
			ButtonColor = getColor(c.Button),
			ButtonColor_Hover = getColor(c.Button, m.Hover),
			ButtonColor_Disabled = getColor(c.Button, m.Disabled),
			TextColor = getColor(c.MainText),
			TextColor_Disabled = getColor(c.DimmedText),
			BorderColor = getColor(c.Border),
		},

		menuBar = {
			backgroundColor = isDark and getColor(c.ScrollBarBackground) or getColor(c.MainBackground),
		},

		menuEntry = {
			hover = isDark and getColor(c.CurrentMarker) or getColor(c.RibbonTab),
			highlight = isDark and getColor(c.TableItem, m.Selected) or getColor(c.CurrentMarker),
			text = getColor(c.BrightText),
			font = {
				selected = Enum.Font.SourceSansSemibold,
				unselected = Enum.Font.SourceSans,
			}
		},
		footer = {
			gradient = getColor(c.MainText),
			textbutton = {
				font = Enum.Font.ArialBold,
			},
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
