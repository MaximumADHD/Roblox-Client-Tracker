local Plugin = script.parent.parent.parent

local UILibrary = require(Plugin.Packages.UILibrary)
local StudioTheme = UILibrary.Studio.Theme
local StudioStyle = UILibrary.Studio.Style
local deepJoin = require(Plugin.Src.Util.deepJoin)

local Theme = {}

function Theme.isDarkerTheme()
	-- Assume "darker" theme if the average main background color is darker
	local mainColor = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainBackground)
	return (mainColor.r + mainColor.g + mainColor.b) / 3 < 0.5
end

-- getColor : function<Color3>(color enum)
-- c = Enum.StudioStyleGuideColor
-- m = Enum.StudioStyleGuideModifier
function Theme.createValues(getColor, c, m)
	-- define the color palette for the UILibrary, override where necessary
	local UILibraryStylePalette = StudioStyle.new(getColor, c, m)

	local isDark = Theme.isDarkerTheme()

	-- define all the colors used in the plugin
	local PluginTheme = deepJoin(UILibraryStylePalette, {
		BackgroundColor = getColor(c.MainBackground),

		Labels = {
			TitleBarText = getColor(c.TitlebarText, m.Default),
			TitleBarBackground = getColor(c.Titlebar, m.Default),
			
			MainFont = Enum.Font.SourceSans,
			MainFontSizeLarge = 24,

			HeaderTextColor = getColor(c.BrightText),
		},

		MenuBar = {
			BackgroundColor = isDark and getColor(c.ScrollBarBackground) or getColor(c.MainBackground),
		},

		MenuEntry = {
			Hover = isDark and getColor(c.CurrentMarker) or getColor(c.RibbonTab),
			Highlight = isDark and getColor(c.TableItem, m.Selected) or getColor(c.CurrentMarker),
			Text = getColor(c.BrightText),
			Size = isDark and UDim2.new(1, 0, 1, 0) or UDim2.new(0, 4, 1, 0),
		},

		previewArea = {
            backgroundColor = getColor(c.MainBackground),
            textColor = getColor(c.MainText),
        },
        {
            Dark = {
                backgroundColor = getColor(c.MainBackground),
            }
		},
		
		thumbnailPreview = {
            background = getColor(c.Item),
            border = getColor(c.Border),
            text = getColor(c.MainText),
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