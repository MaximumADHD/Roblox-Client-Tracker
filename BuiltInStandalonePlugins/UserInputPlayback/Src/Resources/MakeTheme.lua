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
ui:add("PlaybackInfoUIGroup")
ui:add("FilterSettingsUIGroup")
ui:add("LabeledToggleButton")
ui:add("UIKeyValueTextLabel")
ui:add("ChooseRecordingNamePopUp")

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
		UIGroupWidthPx = 340,
		PaddingPx = 10,

		[ui.Button] = Cryo.Dictionary.join(devFrameworkButton, {
			["&RoundPrimaryRecordButton"] = Cryo.Dictionary.join(devFrameworkButtonRoundPrimary, {
				[StyleModifier.Selected] = {
					BackgroundStyle = Cryo.Dictionary.join(roundBox, {
						Color = Color3.fromRGB(255, 211, 16),
					}),
					TextColor = Color3.fromRGB(0, 0, 0),
				},
				[StyleModifier.Pressed] = {
					BackgroundStyle = Cryo.Dictionary.join(roundBox, {
						Color = Color3.fromRGB(255, 25, 25),
					}),
					TextColor = Color3.fromRGB(255, 255, 255),
				},
				
			}),
			
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

		[ui.LabeledToggleButton] = {
			ComponentSize = UDim2.new(0, 150, 0, 30),
			ToggleSize = UDim2.fromOffset(40, 24),
			LeftInsetPx = 12,
			PaddingPx = 10,
		},

		[ui.UIKeyValueTextLabel] = {
			PaddingPx = 10,
			HeightPx = 25,
			KeyWidthPx = 150,
		},

		[ui.FileSelectorUIGroup] = {
			PaddingPx = 10,
			ProgressBarWidth = 250,
		},

		[ui.FilterSettingsUIGroup] = {
			GridAreaHeightPx = 100,
			PaddingPx = 10,
			GridLayoutCellSize = UDim2.fromOffset(150, 30),
			GridCellPaddingYPx = 2,
		},

		[ui.PlaybackInfoUIGroup] = {
			PaddingPx = 10,
		},

		PlaybackSelectInput = Cryo.Dictionary.join(devFrameworkSelectInput, {
			Size = UDim2.new(0, 240, 0, 32),
		}),

		[ui.ChooseRecordingNamePopUp] = {
			ContentSize = Vector2.new(300, 60),
			PanelSize = UDim2.fromOffset(250, 60),
			PanelPosition = UDim2.fromOffset(20, -10),
			DialogMessageSize = UDim2.new(1, 0, 0, 40),
			TextInputSize = UDim2.fromOffset(250, 30),
			PaddingPx = 1,
		},
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