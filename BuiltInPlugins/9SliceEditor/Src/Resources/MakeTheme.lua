--[[
	Creates the theme for the plugin.
	Defines values specific to components created within this plugin and constant values shared across components.

	Params:
		bool createMock: An optional param that should only be
			set to true in testing.
]]

local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)

local Style = Framework.Style
local StudioTheme = Style.Themes.StudioTheme
local ui = Style.ComponentSymbols
local StyleKey = Style.StyleKey

local Constants = require(Plugin.Src.Util.Constants)

ui:add("AlertDialog")
ui:add("ImageDragger")
ui:add("SliceEditor")
ui:add("TextEditor")
ui:add("ImageEditor")

local darkThemeOverride = {
	[StyleKey.SubtleBackgroundColor] = Color3.fromRGB(40, 40, 40),
}

local lightThemeOverride = {
	[StyleKey.SubtleBackgroundColor] = Color3.fromRGB(249, 249, 249),
}

local PluginTheme = {
	Button = {
		Size = UDim2.fromOffset(75, 28),
		Style = "Round",
	},

	[ui.TextEditor] = {
		OffsetItemSpacing = UDim.new(0, 7),
		PixelDimensionsHeightPx = 40,
	},

	TextOffsetItem = {
		PaneSize = UDim2.fromOffset(110, 20),
		LabelXWidth = 50,
		TextBoxSize = UDim2.fromOffset(50, 20),
		LabelTextBoxSpacing = 10,
		Style = "RoundedBorder",
	},

	[ui.AlertDialog] = {
		PopupMessageSize = Vector2.new(400, 60),
		TextSize = 18,
	},

	[ui.ImageDragger] = {
		EdgeHandleSize = UDim2.fromOffset(30, 28),
		EdgeHandleInsetPx = 2,
	},

	[ui.ImageEditor] = {
		PaneBackgroundColor = StyleKey.SubtleBackgroundColor,
		PaneBorderColor = StyleKey.Border,
	},

	[ui.SliceEditor] = {
		TextAreaSize = UDim2.fromOffset(Constants.TEXTEDITOR_XSIZE, Constants.TEXTEDITOR_YSIZE + 60),
		ImageAreaSize = UDim2.fromOffset(
			Constants.BACKGROUND_SIZE + 10 + Constants.TEXTEDITOR_XSIZE,
			Constants.BACKGROUND_SIZE + Constants.TEXTSIZE + 10
		),
		ButtonsAreaSize = UDim2.fromOffset(Constants.BACKGROUND_SIZE + 10 + Constants.TEXTEDITOR_XSIZE + 10, 42),
		ButtonsSpacing = UDim.new(0, 10),
		VerticalSpacing = UDim.new(0, 5),
		HorizontalSpacing = UDim.new(0, 5),
		InfoBoxSize = UDim2.fromOffset(300, 200),
		PaddingPx = 2,
		TextAreaXWindowScaleFactor = 0.05,
	},
}

return function(createMock)
	local styleRoot
	if createMock then
		styleRoot = StudioTheme.mock(darkThemeOverride, lightThemeOverride)
	else
		styleRoot = StudioTheme.new(darkThemeOverride, lightThemeOverride)
	end

	return styleRoot:extend(PluginTheme)
end
