-- The plugin theme

local Main = script.Parent.Parent.Parent
local Framework = require(Main.Packages.Framework)

local Style = Framework.Style
local makeTheme = Style.makeTheme
local StyleKey = Style.StyleKey

local ThemeSwitcher = Framework.Style.ThemeSwitcher

local style = {
	[StyleKey.TypeTextColor] = Color3.fromRGB(0, 162, 255),

	ErrorColor = StyleKey.WarningText,

	Sizes = {
		SelectTheme = 100,
		SearchBar = 300,
		TopBar = 42,
		Gutter = 400,
		ButtonHeight = 30,
		ButtonWidth = 120,
		OuterPadding = 10,
		InnerPadding = 5,
	},

	Text = {
		Header = {
			Size = 20,
			Color = StyleKey.BrightText,
		},
		Body = {
			Size = 16,
			Color = StyleKey.DimmedText,
		},
		Button = {
			Size = 18,
			Color = StyleKey.MainText,
			PrimaryColor = StyleKey.DialogMainButtonText,
		},
		Type = {
			Size = 18,
			Color = StyleKey.TypeTextColor,
		},
	},
}

return makeTheme(Main.Src.Components, style, ThemeSwitcher.new())
