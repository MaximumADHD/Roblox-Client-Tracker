local Plugin = script.parent.parent.parent

local Cryo = require(Plugin.Packages.Cryo)

local UILibrary = require(Plugin.Packages.UILibrary)
local StudioTheme = UILibrary.Studio.Theme
local StudioStyle = UILibrary.Studio.Style
local deepJoin = require(Plugin.Src.Util.deepJoin)

local Theme = {}

local function defineTheme(defaults, overrides)
    local themeName = settings().Studio["UI Theme"].Name
    local override = overrides and overrides[themeName]
    if override then
        return Cryo.Dictionary.join(defaults, override)
    else
        return defaults
    end
end

-- getColor : function<Color3>(color enum)
-- c = Enum.StudioStyleGuideColor
-- m = Enum.StudioStyleGuideModifier
function Theme.createValues(getColor, c, m)
	-- define the color palette for the UILibrary, override where necessary
	local UILibraryStylePalette = StudioStyle.new(getColor, c, m)

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

		MenuBar = defineTheme({
			BackgroundColor = getColor(c.ScrollBarBackground),
			Width = 288,
	   	}, {
		   Dark = {
			   BackgroundColor = getColor(c.MainBackground)
		   }
	   	}),

		MenuEntry = defineTheme({
			Hover = getColor(c.RibbonTab),
			Highlight = getColor(c.CurrentMarker),
			Text = getColor(c.BrightText),
			Size = UDim2.new(0, 4, 1, 0),
			Height = 42,
		}, {
			Dark = {
				Hover = getColor(c.CurrentMarker),
				Highlight = getColor(c.TableItem, m.Selected),
				Size = UDim2.new(1, 0, 1, 0),
			}
		}),

		previewArea = defineTheme({
            backgroundColor = getColor(c.MainBackground),
            textColor = getColor(c.MainText),
        }, {
            Dark = {
                backgroundColor = getColor(c.MainBackground),
            }
		}),
		
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