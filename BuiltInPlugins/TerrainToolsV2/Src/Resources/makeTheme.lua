local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Cryo = require(Plugin.Packages.Cryo)

local StudioTheme = Framework.Style.Themes.StudioTheme

local FrameworkStyle = Framework.Style
local BaseTheme = FrameworkStyle.Themes.BaseTheme
local DarkTheme = FrameworkStyle.Themes.DarkTheme
local LightTheme = FrameworkStyle.Themes.LightTheme
local StyleKey = FrameworkStyle.StyleKey
local ui = FrameworkStyle.ComponentSymbols

local Decoration = Framework.UI.Decoration

local Util = Framework.Util
local StyleModifier = Util.StyleModifier

local function makeTerrainToolsTheme()
	local theme = {
		[ui.LoadingBar] = Cryo.Dictionary.join(BaseTheme[ui.LoadingBar], {
			ForegroundStyle = Cryo.Dictionary.join(BaseTheme[ui.LoadingBar].ForegroundStyle, {
				Color = StyleKey.DialogMainButton,
				BorderTransparency = 1,
			}),
		}),

		[ui.Tooltip] = Cryo.Dictionary.join(BaseTheme[ui.Tooltip], {
			MaxWidth = 1000,
		}),

		Spinner = {
			TimeBetweenBlocks = 0.05,
			Colors = {
				Color3.fromRGB(172, 172, 172),
				Color3.fromRGB(172, 172, 172),
				Color3.fromRGB(159, 159, 159),
				Color3.fromRGB(140, 140, 140),
				Color3.fromRGB(122, 122, 122),
				Color3.fromRGB(103, 103, 103),
				Color3.fromRGB( 84,  84,  84),
				Color3.fromRGB( 65,  65,  65),
			},
			BlockWidth = 2,
			InnerRadius = 7,
		},
	}

	theme[ui.Button] = Cryo.Dictionary.join(BaseTheme[ui.Button], {
		BackgroundStyle = Cryo.Dictionary.join(BaseTheme[ui.RoundBox], {
			Color = Color3.fromRGB(0, 162, 255),
		}),
		TextColor = Color3.fromRGB(255, 255, 255),
		TextSize = 16,

		[StyleModifier.Hover] = {
			BackgroundStyle = Cryo.Dictionary.join(BaseTheme[ui.RoundBox], {
				Color = Color3.fromRGB(50, 181, 254),
			})
		},

		[StyleModifier.Disabled] = {
			BackgroundStyle = Cryo.Dictionary.join(BaseTheme[ui.RoundBox], {
				Color = StyleKey.TerrainTools_DisabledColor,
			})
		},
	})

	return theme
end

local function makeThemeColors()
	local overridedDarkTheme = Cryo.Dictionary.join(DarkTheme, {
		[StyleKey.TerrainTools_DisabledColor] = Color3.fromRGB(60, 60, 60),
	})
	local overridedLightTheme = Cryo.Dictionary.join(LightTheme, {
		[StyleKey.TerrainTools_DisabledColor] = Color3.fromRGB(153, 218, 255),
	})

	return overridedDarkTheme, overridedLightTheme
end


return function(makeMock)
	makeMock = makeMock or false

	local studioTheme = makeMock and StudioTheme.mock(makeThemeColors()) or StudioTheme.new(makeThemeColors())
	return studioTheme:extend(makeTerrainToolsTheme())
end
