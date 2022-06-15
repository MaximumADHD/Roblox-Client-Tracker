local Plugin = script.Parent.Parent.Parent
local FrameworkStyle = require(Plugin.Packages.Framework).Style
local StudioTheme = FrameworkStyle.Themes.StudioTheme
local StyleKey = FrameworkStyle.StyleKey

local darkThemeOverride = {
	[StyleKey.HttpOverviewTextColor] = Color3.fromRGB(136, 136, 136),
	[StyleKey.EmphasisTextColor] = Color3.fromRGB(255, 255, 255),
	[StyleKey.ScrollbarColor] = Color3.fromRGB(204, 204, 204),
	[StyleKey.SubTitleTextColor] = Color3.fromRGB(170, 170, 170),
	Separator = {
		["Weight"] = 1,
		["StretchMargin"] = 7,
		["Color"] = Color3.fromRGB(170, 170, 170),
	},
}

local lightThemeOverride = {
	[StyleKey.HttpOverviewTextColor] = Color3.fromRGB(46, 46, 46),
	[StyleKey.EmphasisTextColor] = Color3.fromRGB(0, 0, 0),
	[StyleKey.ScrollbarColor] = Color3.fromRGB(25, 25, 25),
	[StyleKey.SubTitleTextColor] = Color3.fromRGB(0, 0, 0),
	Separator = {
		["Weight"] = 1,
		["StretchMargin"] = 7,
		["Color"] = Color3.fromRGB(0, 0, 0),
	},
}

local styleRoot = StudioTheme.new(darkThemeOverride, lightThemeOverride)
styleRoot:extend({
	BackgroundColor = StyleKey.MainBackground,
	ButtonColor = StyleKey.Button,
	HttpOverviewTextColor = StyleKey.HttpOverviewTextColor,
	ProgressBarColor = StyleKey.DialogMainButtonSelected,
	HoverColor = StyleKey.ButtonHover,
	BorderColor = StyleKey.Border,
	SubTextColor = StyleKey.SubText,
	InfoTextColor = StyleKey.DimmedText,
	SubTitleTextColor = StyleKey.SubTitleTextColor,
	EmphasisTextColor = StyleKey.EmphasisTextColor,
	TextColor = StyleKey.MainText,
	ErrorColor = StyleKey.ErrorText,
	LinkColor = StyleKey.LinkText,
	Green = Color3.fromRGB(64, 166, 81),
	White = Color3.fromRGB(255, 255, 255),
	DisabledColor = StyleKey.MainTextDisabled,
	ScrollbarColor = StyleKey.ScrollbarColor,
	ScrollbarTransparency = 0.7,
	ScrollbarSize = 8,
	Font = Enum.Font.SourceSans,
	FontBold = Enum.Font.SourceSansSemibold,
})

return styleRoot
