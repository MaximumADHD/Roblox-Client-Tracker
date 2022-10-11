local Plugin = script.Parent.Parent.Parent
local UILibrary = require(Plugin.Packages.UILibrary)

local createTheme = UILibrary.createTheme
local StudioStyle = UILibrary.Studio.Style

local isCli, _ = pcall(function()
	return game:GetService("ProcessService")
end)

local function isDarkerTheme()
	-- Assume "darker" theme if the average main background colour is darker
	local mainColour = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainBackground)
	return (mainColour.r + mainColour.g + mainColour.b) / 3 < 0.5
end

local function getMockStudioTheme()
	local function getColor()
		return Color3.new()
	end
	return {
		Name = "Light",
		GetColor = getColor,
		getColor = getColor,
	}
end

local function getThemeHelpers()
	if isCli then
		-- Theme mocks
		return {
			StyleColor = setmetatable({}, {
				__index = function()
					return Color3.new()
				end,
			}),
			StyleModifier = {
				Default = "Default",
				Disabled = "Disabled",
				Hover = "Hover",
				Selected = "Selected",
			},
			StudioTheme = getMockStudioTheme(),
			isDark = false,
		}
	else
		return {
			StyleColor = Enum.StudioStyleGuideColor,
			StyleModifier = Enum.StudioStyleGuideModifier,
			StudioTheme = settings().Studio.Theme,
			isDark = isDarkerTheme(),
		}
	end
end

local function getUILibraryTheme()
	local helpers = getThemeHelpers()
	local StyleColor = helpers.StyleColor
	local StyleModifier = helpers.StyleModifier
	local isDark = helpers.isDark

	local theme = helpers.StudioTheme

	local styleGuide = StudioStyle.new(function(...)
		return theme:GetColor(...)
	end, StyleColor, StyleModifier)

	local UILibraryOverrides = {
		button = {
			LargeHitboxButton = {
				backgroundColor = theme:GetColor(StyleColor.MainBackground, StyleModifier.Default),

				hovered = {
					backgroundColor = theme:GetColor(StyleColor.Button, StyleModifier.Hover),
				},
			},
		},

		checkBox = {
			backgroundColor = theme:getColor(StyleColor.InputFieldBackground),
			titleColor = theme:getColor(StyleColor.BrightText),
		},

		detailedDropdown = {
			background = theme:getColor(StyleColor.Button),
			hover = theme:getColor(StyleColor.Button, StyleModifier.Hover),
			text = theme:getColor(StyleColor.BrightText),
			disabled = theme:getColor(StyleColor.Tab),
			handle = theme:getColor(StyleColor.MainText),
			border = theme:getColor(StyleColor.Border),
			gradient = theme:getColor(StyleColor.Dark),
		},

		textBox = {
			background = theme:GetColor(StyleColor.InputFieldBackground),
			disabled = theme:GetColor(StyleColor.Tab),
			borderDefault = theme:GetColor(StyleColor.Border),
			borderHover = isDark and theme:GetColor(StyleColor.MainButton) or theme:GetColor(StyleColor.CurrentMarker),
			tooltip = theme:GetColor(StyleColor.DimmedText),
			text = theme:GetColor(StyleColor.MainText),
		},

		textEntry = {
			textTransparency = {
				enabled = 0,
				disabled = 0.5,
			},
		},

		scrollingFrame = {
			backgroundColor = isDark and theme:getColor(StyleColor.InputFieldBackground)
				or Color3.fromRGB(245, 245, 245),
		},

		toggleButton = {
			defaultWidth = 40,
			defaultHeight = 24,
			onImage = isDark and "rbxasset://textures/RoactStudioWidgets/toggle_on_dark.png"
				or "rbxasset://textures/RoactStudioWidgets/toggle_on_light.png",
			offImage = isDark and "rbxasset://textures/RoactStudioWidgets/toggle_off_dark.png"
				or "rbxasset://textures/RoactStudioWidgets/toggle_off_light.png",
			disabledImage = isDark and "rbxasset://textures/RoactStudioWidgets/toggle_disable_dark.png"
				or "rbxasset://textures/RoactStudioWidgets/toggle_disable_light.png",
		},

		tooltip = {
			textSize = 16,
			font = Enum.Font.SourceSans,
		},
	}

	return createTheme(styleGuide, UILibraryOverrides)
end

return {
	getMockStudioTheme = getMockStudioTheme,
	getThemeHelpers = getThemeHelpers,
	getUILibraryTheme = getUILibraryTheme,
	isDarkerTheme = isDarkerTheme,
}
