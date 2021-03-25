local Plugin = script.Parent.Parent.Parent
local ContextServices = require(Plugin.Packages.Framework.ContextServices)
local StudioUI = require(Plugin.Packages.Framework.StudioUI)
local Util = require(Plugin.Packages.Framework.Util)
local Theme = ContextServices.Theme
local StyleValue = Util.StyleValue
local StudioFrameworkStyles = StudioUI.StudioFrameworkStyles

local function createValues(theme, getColor)
	-- TODO: Replace with actual getColor from the DevFramework
	-- when the Palette becomes available
	local themeName = theme.Name
	local c = Enum.StudioStyleGuideColor
	local m = Enum.StudioStyleGuideModifier

	local ToggleOn = StyleValue.new("ToggleOn", {
		Light = "rbxasset://textures/RoactStudioWidgets/toggle_on_light.png",
		Dark = "rbxasset://textures/RoactStudioWidgets/toggle_on_dark.png",
	})

	local ToggleOff = StyleValue.new("ToggleOff", {
		Light = "rbxasset://textures/RoactStudioWidgets/toggle_off_light.png",
		Dark = "rbxasset://textures/RoactStudioWidgets/toggle_off_dark.png",
	})

	local ScrollbarColor = StyleValue.new("ScrollbarColor", {
		Light = Color3.fromRGB(25, 25, 25),
		Dark = Color3.fromRGB(204, 204, 204),
	})

	local toggle = {
		On = "rbxasset://textures/RoactStudioWidgets/toggle_on_light.png",
		Off = ToggleOff:get(themeName),
	}

	local HttpOverviewTextColor = StyleValue.new("TextColor", {
		Light = Color3.fromRGB(46, 46, 46),
		Dark = Color3.fromRGB(136, 136, 136),
	})

	local EmphasisTextColor = StyleValue.new("EmphasisTextColor", {
		Light = Color3.fromRGB(0, 0, 0),
		Dark = Color3.fromRGB(255, 255, 255),
	})

	local SubTitleTextColor = StyleValue.new("EmphasisTextColor", {
		Light = Color3.fromRGB(0, 0, 0),
		Dark = Color3.fromRGB(170, 170, 170),
	})

	return {
		Plugin = {
			Toggle = toggle,
			BackgroundColor = theme:GetColor(c.MainBackground),
			ButtonColor = theme:GetColor(c.Button),
			HttpOverviewTextColor = HttpOverviewTextColor:get(themeName),
			ProgressBarColor = theme:GetColor(c.DialogMainButton, m.Selected),
			HoverColor = theme:GetColor(c.Button, m.Hover),
			BorderColor = theme:GetColor(c.Border),
			SubTextColor = theme:GetColor(c.SubText),
			InfoTextColor = theme:GetColor(c.DimmedText),
			SubTitleTextColor = SubTitleTextColor:get(themeName),
			EmphasisTextColor = EmphasisTextColor:get(themeName),
			TextColor = theme:GetColor(c.MainText),
			ErrorColor = theme:GetColor(c.ErrorText),
			LinkColor = theme:GetColor(c.LinkText),
			Green = Color3.fromRGB(64, 166, 81),
			White = Color3.fromRGB(255, 255, 255),
			DisabledColor = theme:GetColor(c.MainText, m.Disabled),
			ScrollbarColor = ScrollbarColor:get(themeName),
			ScrollbarTransparency = 0.7,
			ScrollbarSize = 8,
			Font = Enum.Font.SourceSans,
            FontBold = Enum.Font.SourceSansSemibold
		},

		Framework = StudioFrameworkStyles.new(theme, getColor),
	}
end

local function makeTheme()
	local theme = Theme.new(createValues)

	return theme
end

return makeTheme
