local Plugin = script.parent.parent.parent
local UILibrary = require(Plugin.Packages.UILibrary)
local createTheme = UILibrary.createTheme
local StudioStyle = UILibrary.Studio.Style
local Images = require(Plugin.Src.Util.Constants).Images

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
	local c = helpers.StyleColor
	local m = helpers.StyleModifier

	local theme = helpers.StudioTheme

	-- luacheck: ignore isDark
	local isDark = helpers.isDark

	local styleGuide = StudioStyle.new(function(...)
		return theme:GetColor(...)
	end, c, m)

	-- define any custom changes to UILibrary elements, use UILibrary's createTheme path syntax
	local UILibraryOverrides = {
		toggleButton = {
			defaultWidth = 40,
			defaultHeight = 24,
			onImage = if isDark then Images.TOGGLE_ON_DARK else Images.TOGGLE_ON_LIGHT,
			offImage = if isDark then Images.TOGGLE_OFF_DARK else Images.TOGGLE_OFF_LIGHT,
			disabledImage = if isDark then Images.TOGGLE_DISABLE_DARK else Images.TOGGLE_DISABLE_LIGHT,
		},
		textBox = {
			borderHover = theme:getColor(c.DialogMainButton),
			background = theme:getColor(c.InputFieldBackground),
		},
		button = {
			Default = {
				backgroundColor = if isDark then theme:getColor(c.DialogButton) else theme:getColor(c.MainBackground),
				backgroundSelectedColor = if isDark then theme:getColor(c.DialogButton, m.Pressed) else theme:getColor(c.CurrentMarker),
				borderColor = theme:getColor(c.Border),
				borderSelectedColor = theme:getColor(c.CurrentMarker),
				isRound = true
			},
		},
		styledDropdown = {
			backgroundColor = theme:getColor(c.Button),
			itemText = theme:getColor(c.MainText),
			headerText = theme:getColor(c.SubText),
			showSelectedDropdownItem = {
				value = if isDark then true else false,
			},
			hovered = {
				backgroundColor = theme:getColor(c.Button, m.Hover),
				textColor = theme:getColor(c.MainText, m.Hover),
			},
			selected = {
				backgroundColor = if isDark then theme:getColor(c.CurrentMarker) else theme:getColor(c.Button, m.Hover),
				textColor = theme:getColor(c.MainText, m.Hover),
				borderColor = theme:getColor(c.Border),
			},
			listTheme = {
				backgroundColor = theme:getColor(c.MainBackground),
				hovered = {
					backgroundColor = theme:getColor(c.Tab),
					textColor = theme:getColor(c.MainText, m.Hover),
				},
				selected = {
					backgroundColor = if isDark then theme:getColor(c.ScriptSelectionBackground) else theme:getColor(c.CurrentMarker),
					borderColor = theme:getColor(c.Border),
					hovered = if isDark then {
						backgroundColor = theme:getColor(c.Button, m.Hover),
					} else nil,
				},
			}
		},
	}

	return createTheme(styleGuide, UILibraryOverrides)

end

return {
	getUILibraryTheme = getUILibraryTheme,
}