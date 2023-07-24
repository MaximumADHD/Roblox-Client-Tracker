-- The plugin theme

local Main = script.Parent.Parent.Parent
local Framework = require(Main.Packages.Framework)

local Style = Framework.Style
local makeTheme = Style.makeTheme
local StyleKey = Style.StyleKey

local ThemeSwitcher = Framework.Style.ThemeSwitcher

local style = {
	ErrorColor = StyleKey.WarningText,

	Sizes = {
		SelectInput = 100,
		Slider = 200,
		SearchBar = 300,
		TopBar = 42,
		Gutter = 400,
		ButtonHeight = 30,
		ButtonWidth = 120,
		OuterPadding = 10,
		InnerPadding = 5,
	},

	Text = {
		Title = {
			Size = 24,
			Color = StyleKey.BrightText,
			Font = Enum.Font.SourceSansSemibold,
		},
		Header = {
			Size = 20,
			Color = StyleKey.BrightText,
			Font = Enum.Font.SourceSansSemibold,
		},
		Body = {
			Size = 17,
			Color = StyleKey.DimmedText,
		},
		Button = {
			Size = 18,
			Color = StyleKey.MainText,
			PrimaryColor = StyleKey.DialogMainButtonText,
		},
		Type = {
			Size = 18,
			Color = StyleKey.LinkText,
		},
		Mono = {
			-- Mono is a slightly larger optical size, decrease slightly to offset
			Size = 17,
			Font = Enum.Font.RobotoMono,
		},
		Default = {
			Color = StyleKey.SubText,
			Weight = Enum.FontWeight.SemiBold,
		},
	},
}

return makeTheme(Main.Src.Components, style, ThemeSwitcher.new())
