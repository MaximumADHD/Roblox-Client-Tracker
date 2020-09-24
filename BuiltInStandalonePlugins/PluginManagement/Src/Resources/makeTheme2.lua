local FFlagPluginManagementRemoveUILibrary = game:GetFastFlag("PluginManagementRemoveUILibrary2")

local Plugin = script.Parent.Parent.Parent
local FrameworkStyle = require(Plugin.Packages.Framework.Style)
local StudioTheme = FrameworkStyle.Themes.StudioTheme
local StyleKey = FrameworkStyle.StyleKey

local UILibrary = require(Plugin.Packages.UILibrary)
local createTheme = UILibrary.createTheme
local StudioStyle = UILibrary.Studio.Style

local darkThemeOverride = {
	[StyleKey.HttpOverviewTextColor] = Color3.fromRGB(136, 136, 136),
	[StyleKey.EmphasisTextColor] = Color3.fromRGB(255, 255, 255),
	[StyleKey.ScrollbarColor] = Color3.fromRGB(204, 204, 204),
	[StyleKey.SubTitleTextColor] = Color3.fromRGB(170, 170, 170),

	-- UILibrary
	[StyleKey.BaseColor] = Color3.fromRGB(56, 56, 56),
	[StyleKey.EndColor] = Color3.fromRGB(11, 90, 175),
	[StyleKey.SelectedCheckboxImage] = "rbxasset://textures/PluginManagement/checked_dark.png",
	[StyleKey.BorderImage] = "",
	[StyleKey.CheckboxBackgroundColor] = Color3.fromRGB(37, 37, 37),
}

local lightThemeOverride = {
	[StyleKey.HttpOverviewTextColor] = Color3.fromRGB(46, 46, 46),
	[StyleKey.EmphasisTextColor] = Color3.fromRGB(0, 0, 0),
	[StyleKey.ScrollbarColor] = Color3.fromRGB(25, 25, 25),
	[StyleKey.SubTitleTextColor] = Color3.fromRGB(0, 0, 0),

	-- UILibrary
	[StyleKey.BaseColor] = Color3.fromRGB(184, 184, 184),
	[StyleKey.EndColor] = Color3.fromRGB(0, 162, 255),
	[StyleKey.SelectedCheckboxImage] = "rbxasset://textures/PluginManagement/checked_light.png",
	[StyleKey.BorderImage] = "rbxasset://textures/StudioToolbox/RoundedBorder.png",
	[StyleKey.CheckboxBackgroundColor] = Color3.fromRGB(255, 255, 255),
}

local function getUILibraryTheme(stylizer)
	local theme = settings().Studio.Theme

	local UILibraryPalette = StudioStyle.new(function(...)
		return theme:GetColor(...)
	end, Enum.StudioStyleGuideColor, Enum.StudioStyleGuideModifier)

	local UILibraryOverrides = {
		loadingIndicator = {
			baseColor = StyleKey.BaseColor,
			endColor = StyleKey.EndColor,
		},
		button = {
			Default = {
				backgroundColor = StyleKey.Button,
				hovered = {
				backgroundColor = StyleKey.ButtonHover,
				},
			},

			Primary = {
				backgroundColor = StyleKey.DialogMainButton,

				hovered = {
				backgroundColor = StyleKey.DialogMainButtonHover,
				},
			},
		},
		checkBox = {
			backgroundImage = "rbxasset://textures/PluginManagement/unchecked.png",
			backgroundColor = StyleKey.CheckboxBackgroundColor,
			selectedImage = StyleKey.SelectedCheckboxImage,
		},
		roundFrame = {
			borderImage = StyleKey.BorderImage,
		}
	}

	local styleKeysTable = stylizer:getStyleKeysTable(stylizer)
	UILibraryOverrides = stylizer:convertStyleKeys(UILibraryOverrides, nil, nil, styleKeysTable)

	return createTheme(UILibraryPalette, UILibraryOverrides)
end

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

if not FFlagPluginManagementRemoveUILibrary then
	function styleRoot:getUILibraryTheme()
		return getUILibraryTheme(self)
	end
end

return styleRoot