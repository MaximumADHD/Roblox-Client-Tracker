local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Cryo = require(Plugin.Packages.Cryo)

local StudioTheme = Framework.Style.Themes.StudioTheme

local FrameworkStyle = Framework.Style
local BaseTheme = FrameworkStyle.Themes.BaseTheme
local StyleKey = FrameworkStyle.StyleKey
local ui = FrameworkStyle.ComponentSymbols

local function makeTerrainToolsTheme()
	return {
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
end

return function(makeMock)
	makeMock = makeMock or false

	local studioTheme = makeMock and StudioTheme.mock() or StudioTheme.new()
	return studioTheme:extend(makeTerrainToolsTheme())
end
