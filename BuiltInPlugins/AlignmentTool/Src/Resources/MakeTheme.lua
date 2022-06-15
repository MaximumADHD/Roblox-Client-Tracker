--[[
	Creates the theme for the plugin.
	Defines values specific to components created within this plugin and constant values shared across components.

	Params:
		bool createMock: An optional param that should only be set to true in testing.
]]

local Plugin = script.Parent.Parent.Parent

local Dash = require(Plugin.Packages.Dash)
local Framework = require(Plugin.Packages.Framework)

local FrameworkStyle = Framework.Style
local Colors = FrameworkStyle.Colors
local StudioTheme = FrameworkStyle.Themes.StudioTheme
local StyleKey = FrameworkStyle.StyleKey 
local ui = FrameworkStyle.ComponentSymbols
local getRawComponentStyle = FrameworkStyle.getRawComponentStyle

local Util = Framework.Util
local StyleModifier = Util.StyleModifier

-- pcall needed to effectively mock service for unit tests
local function isHighDpiEnabled()
    local highDpiServiceFound, isNotHighDpiBuild = pcall(function() return game:GetService("StudioHighDpiService"):IsNotHighDPIAwareBuild() end)
    assert(highDpiServiceFound or isNotHighDpiBuild == "'StudioHighDpiService' is not a valid Service name")
    return not highDpiServiceFound or not isNotHighDpiBuild
end
local FFlagHighDpiIcons = game:GetFastFlag("SVGLuaIcons") and isHighDpiEnabled()
local AlignmentMode = require(Plugin.Src.Utility.AlignmentMode)

local join = Dash.join

local AlignToolResourceFolderTheme1 = "rbxasset://studio_svg_textures/Lua/AlignTool/%s/Large/"
local AlignToolLightResources = string.format(AlignToolResourceFolderTheme1,"Light")
local AlignToolDarkResources = string.format(AlignToolResourceFolderTheme1,"Dark")

local NavigationResourceFolderTheme1 = "rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/"
local NavigationLightResources = string.format(NavigationResourceFolderTheme1,"Light")
local NavigationDarkResources = string.format(NavigationResourceFolderTheme1,"Dark")

local darkThemeOverride = {
	[StyleKey.HelpIconColor] = Colors.Gray_Light,
	[StyleKey.SelectableButtonBorderColor] = Colors.Gray,
	[StyleKey.SelectableButtonSelectedColor] = Colors.Gray_Mid,
    [StyleKey.ModeButtonMin] = AlignToolDarkResources .. "AlignMin.png",
    [StyleKey.ModeButtonCenter] = AlignToolDarkResources .. "AlignCenter.png",
    [StyleKey.ModeButtonMax] =AlignToolDarkResources .. "AlignMax.png",
    [StyleKey.Help] = NavigationDarkResources .. "Help.png",
}
local lightThemeOverride = {
	[StyleKey.HelpIconColor] = Color3.fromRGB(184, 184, 184),
	[StyleKey.SelectableButtonBorderColor] = Colors.Gray_Light,
	[StyleKey.SelectableButtonSelectedColor] = Colors.Gray_Lighter,
    [StyleKey.ModeButtonMin] = AlignToolLightResources .. "AlignMin.png",
    [StyleKey.ModeButtonCenter] = AlignToolLightResources .. "AlignCenter.png",
    [StyleKey.ModeButtonMax] =AlignToolLightResources .. "AlignMax.png",
    [StyleKey.Help] =  NavigationLightResources .. "Help.png",
}

local PluginTheme = {
	SectionPadding = UDim.new(0, 15),
	SectionContentPadding = UDim.new(0, 10),
	SectionContentPaddingCompact = UDim.new(0, 6),

    ModeButtons = {
        [1] = {
            Image = StyleKey.ModeButtonMin,
            Mode = AlignmentMode.Min,
        },
        [2] = {
            Image = StyleKey.ModeButtonCenter,
            Mode = AlignmentMode.Center,
        },
        [3] = {
            Image = StyleKey.ModeButtonMax,
            Mode = AlignmentMode.Max,
        },
    },

	InfoLabel = {
		ErrorTextColor = StyleKey.ErrorText,
		WarningTextColor = StyleKey.WarningText,
		InfoTextColor = StyleKey.MainText,
	},

	MainView = {
		ListItemPadding = UDim.new(0, 10),
		Padding = 10,
		PrimaryButtonSize = UDim2.new(0, 160, 0, 32),
	},

	RelativeToSetting = {
		HelpIconPadding = UDim.new(0, 2),
	},

	LabeledElementList = {
		ItemContentPadding = UDim.new(0, 10),
		ItemPaddingHorizontal = UDim.new(0, 15),
		ItemPaddingVertical = UDim.new(0, 8),
		MaximumLabelWidth = 100,
		SectionPadding = UDim.new(0, 15),
	},

	[ui.Button] = join(getRawComponentStyle("Button"), {
		["&Selectable"] = {
			BackgroundStyle = {
				BorderSize = 1,
				Transparency = 1,
			},
			[StyleModifier.Hover] = {
				BackgroundStyle = {
					BorderColor = StyleKey.SelectableButtonBorderColor,
					BorderSize = 1,
					Color = StyleKey.ButtonHover,
					Transparency = 0,
				},
			},
			[StyleModifier.Selected] = {
				BackgroundStyle = {
					BorderColor = StyleKey.SelectableButtonBorderColor,
					BorderSize = 1,
					Color = StyleKey.SelectableButtonSelectedColor,
					Transparency = 0,
				},
			},
		},
	}),

	[ui.Image] = join(getRawComponentStyle("Image"), {
		["&HelpIcon"] = {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Color = StyleKey.HelpIconColor,
			Image = FFlagHighDpiIcons and StyleKey.Help or "rbxasset://textures/AlignTool/Help.png",
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.fromOffset(14, 14),

			[StyleModifier.Disabled] = {
				Transparency = 0.5,
			},
		},
	}),
}

return function(createMock)
	local styleRoot
	if createMock then
		styleRoot = StudioTheme.mock()
	else
		styleRoot = StudioTheme.new(darkThemeOverride, lightThemeOverride)
	end

	return styleRoot:extend(PluginTheme)
end
