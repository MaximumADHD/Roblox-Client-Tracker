local Plugin = script.parent.parent.parent

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
				end
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

	local theme = helpers.StudioTheme

	local styleGuide = StudioStyle.new(function(...)
		return theme:GetColor(...)
	end, StyleColor, StyleModifier)

	-- define any custom changes to UILibrary elements, use UILibrary's createTheme path syntax
	local UILibraryOverrides = {
		treeView = {
			elementPadding = 0,
		},

		button = {
			tableItemButton = {
				font = Enum.Font.SourceSans,
				textSize = 18,
				backgroundColor = theme:GetColor(StyleColor.TableItem, StyleModifier.Default),
				textColor = theme:GetColor(StyleColor.MainText, StyleModifier.Default),
				dimmedTextColor = theme:GetColor(StyleColor.DimmedText, StyleModifier.Default),

				disabled = {
					backgroundColor = theme:GetColor(StyleColor.TableItem, StyleModifier.Disabled),
					textColor = theme:GetColor(StyleColor.MainText, StyleModifier.Disabled),
					dimmedTextColor = theme:GetColor(StyleColor.DimmedText, StyleModifier.Disabled),
				},

				hovered = {
					backgroundColor = theme:GetColor(StyleColor.TableItem, StyleModifier.Hover),
					textColor = theme:GetColor(StyleColor.MainText, StyleModifier.Hover),
					dimmedTextColor = theme:GetColor(StyleColor.DimmedText, StyleModifier.Hover),
				},

				selected = {
					backgroundColor = theme:GetColor(StyleColor.TableItem, StyleModifier.Selected),
					textColor = theme:GetColor(StyleColor.MainText, StyleModifier.Selected),
					dimmedTextColor = theme:GetColor(StyleColor.DimmedText, StyleModifier.Selected),
				},
			}
		},
	}

	return createTheme(styleGuide, UILibraryOverrides)
end

return {
	getUILibraryTheme = getUILibraryTheme,
}