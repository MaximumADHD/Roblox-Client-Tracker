local Plugin = script.parent.parent.parent

local UILibrary = require(Plugin.Packages.UILibrary)
local createTheme = UILibrary.createTheme

local function getUILibraryTheme()
	local theme = settings().Studio.Theme

	local c = Enum.StudioStyleGuideColor
	local m = Enum.StudioStyleGuideModifier

	local isDark = settings().Studio.Theme.Name == "Dark"

	-- define the color palette for the UILibrary, override where necessary
	local UILibraryStylePalette = {
		backgroundColor = theme:GetColor(c.InputFieldBackground),
		textColor = theme:GetColor(c.MainText),
		subTextColor = theme:GetColor(c.SubText),
		dimmerTextColor = theme:GetColor(c.DimmedText),
		disabledColor = theme:GetColor(c.Tab),
		borderColor = theme:GetColor(c.Border),
		hoverColor = isDark and theme:GetColor(c.MainButton) or theme:GetColor(c.CurrentMarker),
		hyperlinkTextColor = theme:GetColor(c.LinkText),
		errorColor = theme:GetColor(c.ErrorText),

		font = Enum.Font.SourceSans,
	}

	local UILibraryOverrides = {
		styledDropdown = {
			backgroundColor = theme:GetColor(c.Button),
			itemText = theme:GetColor(c.MainText),
			headerText = theme:GetColor(c.SubText),
			hovered = {
				backgroundColor = theme:GetColor(c.Button, m.Hover),
				textColor = theme:GetColor(c.MainText, m.Hover),
			},
			selected = {
				backgroundColor = isDark and theme:GetColor(c.CurrentMarker) or theme:GetColor(c.MainButton),
				textColor = theme:GetColor(c.MainText, m.Hover),
				borderColor = theme:GetColor(c.Border),
			},
			listTheme = {
				backgroundColor = theme:GetColor(c.InputFieldBackground),
				hovered = {
					backgroundColor = theme:GetColor(c.Button, m.Hover),
					textColor = theme:GetColor(c.MainText, m.Hover),
				},
				selected = {
					backgroundColor = isDark and theme:GetColor(c.MainButton) or theme:GetColor(c.CurrentMarker),
					borderColor = theme:GetColor(c.Border),
				},
			}
		},
		button = {
			Default = {
				backgroundColor = theme:GetColor(c.Button),

				hovered = {
					backgroundColor = theme:GetColor(c.Button, m.Hover),
					textColor = theme:GetColor(c.MainText),
					borderColor = theme:GetColor(c.Border),
				},
			},

			Primary = {
				backgroundColor = isDark and theme:GetColor(c.MainButton) or theme:GetColor(c.CurrentMarker),
				textColor = Color3.new(1, 1, 1),
				borderColor = theme:GetColor(c.Light),

				hovered = {
					backgroundColor = theme:GetColor(c.LinkText),
					textColor = Color3.new(1, 1, 1),
					borderColor = theme:GetColor(c.Light),
				},
			},
		},
		separator = {
			lineColor = isDark and theme:GetColor(c.Border) or theme:GetColor(c.Titlebar),
		},
		checkBox = {
			selectedImage = isDark and "rbxasset://textures/GameSettings/CheckedBoxDark.png"
				or "rbxasset://textures/GameSettings/CheckedBoxLight.png"
		},
	}

	return createTheme(UILibraryStylePalette, UILibraryOverrides)
end

return {
	getUILibraryTheme = getUILibraryTheme,
}
