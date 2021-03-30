  
--[[
	Creates the theme for the plugin.
	Extends the default StudioFrameworkStyles, and also defines values specific
	to components created within this plugin and constant values shared across components.
]]

local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)

local Style = Framework.Style
local StyleKey = Style.StyleKey
local StudioTheme = Style.Themes.StudioTheme

local ThemeSwitcher = Framework.Style.ThemeSwitcher
local getPluginTheme = require(Plugin.Src.Resources.getPluginTheme)

local function makeTheme(shouldMock)
	local styleRoot
	if shouldMock then
		styleRoot = StudioTheme.mock()
	else
		styleRoot = ThemeSwitcher.new()
	end

	return styleRoot:extend({
		[StyleKey.TypeTextColor] = Color3.fromRGB(0, 162, 255),

		ErrorColor = StyleKey.WarningText,

		Scrollbar = {
			Thickness = 5,
			Transparency = 0.5,
			Color = StyleKey.ScrollBar,
			TopImage = "rbxasset://textures/StudioToolbox/ScrollBarTop.png",
			MidImage = "rbxasset://textures/StudioToolbox/ScrollBarMiddle.png",
			BottomImage = "rbxasset://textures/StudioToolbox/ScrollBarBottom.png",
		},

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
	}):extend(getPluginTheme())
end
return makeTheme