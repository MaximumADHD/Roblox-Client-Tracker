local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Cryo = require(Plugin.Packages.Cryo)

local StudioFrameworkStyles = Framework.StudioUI.StudioFrameworkStyles
local StudioTheme = Framework.Style.Themes.StudioTheme
local Theme = Framework.ContextServices.Theme

local Style = Framework.Util.Style
local StyleTable = Framework.Util.StyleTable

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
	}
end

local function DEPRECATED_makeTerrainToolsTheme(theme, getColor)
	local studioFrameworkStyles = StudioFrameworkStyles.new(theme, getColor)

	local loadingBar = StyleTable.new("LoadingBar", function()
		local base = studioFrameworkStyles.LoadingBar.Default
		return {
			Default = Style.extend(base, {
				ForegroundStyle =  Style.extend(base.ForegroundStyle, {
					Color = theme:GetColor("DialogMainButton"),
					BorderTransparency = 1,
				}),
			}),
		}
	end)

	return {
		Framework = StyleTable.extend(studioFrameworkStyles, {
			LoadingBar = loadingBar,
		}),
	}
end

return function(makeMock)
	makeMock = makeMock or false

	if game:GetFastFlag("RefactorDevFrameworkTheme") then
		local t = makeMock and StudioTheme.mock() or StudioTheme.new()
		return t:extend(makeTerrainToolsTheme())
	else
		if makeMock then
			return Theme.mock(DEPRECATED_makeTerrainToolsTheme, function()
				return {
					Name = "MockTheme",
					GetColor = function() return Color3.fromRGB(0, 0, 0) end,
				}
			end)
		else
			return Theme.new(DEPRECATED_makeTerrainToolsTheme)
		end
	end
end
