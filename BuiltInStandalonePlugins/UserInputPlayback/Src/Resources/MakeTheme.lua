--[[
	Creates the theme for the plugin.

	Extends the default StudioFrameworkStyles, and also defines values specific
	to components created within this plugin and constant values shared across components.
]]

local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local getRawComponentStyle = Framework.Style.getRawComponentStyle

local Style = Framework.Style
local StudioTheme = Style.Themes.StudioTheme
local ui = Style.ComponentSymbols
local StyleKey = Style.StyleKey

local Util = Framework.Util
local Cryo = Util.Cryo
local StyleModifier = Util.StyleModifier
local deepCopy = Util.deepCopy

local DarkTheme = Style.Themes.DarkTheme
local LightTheme = Style.Themes.LightTheme

local darkThemeOverride = Cryo.Dictionary.join(DarkTheme, {
	[StyleKey.SelectedTabColor] = Color3.fromRGB(64, 64, 64),
	[StyleKey.UIGroupColor] = Color3.fromRGB(77, 77, 77),
})

local lightThemeOverride = Cryo.Dictionary.join(LightTheme, {
	[StyleKey.SelectedTabColor] = Color3.fromRGB(253, 253, 253),
	[StyleKey.UIGroupColor] = Color3.fromRGB(246, 247, 248),
})

local function mockStyleKey()
	local values = {
		"SelectedTabColor", "UIGroupColor",
	}
	for _, value in ipairs(values) do
		StyleKey[value] = lightThemeOverride[StyleKey[value]]
	end
end

ui:add("TabbedView")
ui:add("PlaybackTabView")
ui:add("FileSelectorUIGroup")

local devFrameworkButton = getRawComponentStyle("Button")
local devFrameworkButtonRoundPrimary = devFrameworkButton["&RoundPrimary"]
local devFrameworkTextLabel = getRawComponentStyle("TextLabel")
local devFrameworkRoundBox = getRawComponentStyle("RoundBox")
local devFrameworkSelectInput = getRawComponentStyle("SelectInput")
local devFrameworkPane = getRawComponentStyle("Pane")
local roundBox = deepCopy(devFrameworkRoundBox)

local function getPluginTheme()
	return {
		PrimaryButtonSize = UDim2.new(0, 160, 0, 32),
		UIGroupWidthPx = 350,

		[ui.Button] = Cryo.Dictionary.join(devFrameworkButton, {
			["&RoundPrimaryPlayButton"] = Cryo.Dictionary.join(devFrameworkButtonRoundPrimary, {
				[StyleModifier.Selected] = {
					BackgroundStyle = Cryo.Dictionary.join(roundBox, {
						Color = Color3.fromRGB(255, 211, 16),
					}),
					TextColor = Color3.fromRGB(0, 0, 0),
				},
				[StyleModifier.Pressed] = {
					BackgroundStyle = Cryo.Dictionary.join(roundBox, {
						Color = Color3.fromRGB(0, 219, 26),
					}),
					TextColor = Color3.fromRGB(255, 255, 255),
				},
			}),
		}),

		[ui.Pane] = Cryo.Dictionary.join(devFrameworkPane, {
			["&CornerBox"] = {
				CornerRadius = UDim.new(0, 8),
				Background = StyleKey.UIGroupColor,
			},
		}),

		[ui.TabbedView] = {
			TabBarHeightPx = 30,
			ForegroundTabColor = StyleKey.SelectedTabColor,
			TabBarBackgroundColor = StyleKey.SubBackground,
		},

		[ui.PlaybackTabView] = {
			PaddingPx = 10,
		},

		[ui.FileSelectorUIGroup] = {
			PaddingPx = 10,
		},
		
		[ui.TextLabel] = Cryo.Dictionary.join(devFrameworkTextLabel, {
			["&StatusTextLabel"] = {
				TextSize = 16,
				TextColor = StyleKey.MainText,
				TextWrapped = true,
			}
		}),

		PlaybackSelectInput = Cryo.Dictionary.join(devFrameworkSelectInput, {
			Size = UDim2.new(0, 240, 0, 32),
		}),
	}
end

return function(createMock: boolean?)
	local styleRoot
	if createMock then
		mockStyleKey()
		styleRoot = StudioTheme.mock(darkThemeOverride, lightThemeOverride)
	else
		styleRoot = StudioTheme.new(darkThemeOverride, lightThemeOverride)
	end

	return styleRoot:extend(getPluginTheme())
end