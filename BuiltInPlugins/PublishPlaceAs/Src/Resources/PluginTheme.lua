local Plugin = script.parent.parent.parent

local UILibrary = require(Plugin.Packages.UILibrary)
local StudioTheme = UILibrary.Studio.Theme
local StudioStyle = UILibrary.Studio.Style
local deepJoin = require(Plugin.Src.Util.deepJoin)

-- getColor : function<Color3>(color enum)
-- c = Enum.StudioStyleGuideColor
-- m = Enum.StudioStyleGuideModifier
local function createValues(getColor, c, m)
	local isDark = settings().Studio["UI Theme"].Name == Enum.UITheme.Dark.Name

	local DefaultStudioStyle = StudioStyle.new(getColor, c, m)

	-- define all the colors used in the plugin
	local PluginTheme = deepJoin(DefaultStudioStyle, {
		Icons = {
			ToolbarIconInspect = "rbxasset://textures/GameSettings/ToolbarIcon.png",
		},
		Labels = {
			TitleBarText = getColor(c.TitlebarText, m.Default),
			TitleBarBackground = getColor(c.Titlebar, m.Default),
		},
		defaultButton = {
			ButtonColor = isDark and getColor(c.MainButton) or getColor(c.CurrentMarker),
			ButtonColor_Hover = getColor(c.LinkText),
			ButtonColor_Disabled = isDark and getColor(c.Button, m.Disabled) or Color3.fromRGB(153, 218, 255),
			TextColor = Color3.new(1, 1, 1),
			TextColor_Disabled = isDark and getColor(c.ButtonText, m.Disabled) or Color3.new(1, 1, 1),
			BorderColor = getColor(c.Light),
		},
		cancelButton = {
			ButtonColor = getColor(c.Button),
			ButtonColor_Hover = getColor(c.Button, m.Hover),
			ButtonColor_Disabled = getColor(c.Button, m.Disabled),
			TextColor = getColor(c.MainText),
			TextColor_Disabled = getColor(c.DimmedText),
			BorderColor = getColor(c.Border),
		},

		menuBar = {
			backgroundColor = isDark and getColor(c.ScrollBarBackground) or getColor(c.MainBackground),
		},

		menuEntry = {
			hover = isDark and getColor(c.CurrentMarker) or getColor(c.RibbonTab),
			highlight = isDark and getColor(c.TableItem, m.Selected) or getColor(c.CurrentMarker),
			text = getColor(c.BrightText),
			font = {
				selected = Enum.Font.SourceSansSemibold,
				unselected = Enum.Font.SourceSans,
			}
		},
		footer = {
			gradient = getColor(c.MainText),
			textbutton = {
				font = Enum.Font.ArialBold,
			},
		},
		header = {
			text = getColor(c.BrightText),
			font = Enum.Font.SourceSans,
		},
		checkboxset = {
			font = Enum.Font.SourceSans,
			error = getColor(c.ErrorText),
		},
		dialog = {
			background = getColor(c.MainBackground),
			text = getColor(c.MainText),
		},
		textBox = {
			background = getColor(c.InputFieldBackground),
			disabled = getColor(c.Tab),
			borderDefault = getColor(c.Border),
			borderHover = isDark and getColor(c.MainButton) or getColor(c.CurrentMarker),
			tooltip = getColor(c.DimmedText),
			text = getColor(c.MainText),
			error = getColor(c.ErrorText),
		},
		roundFrame = {
			--TODO: Move texture to StudioSharedUI
			backgroundImage = "rbxasset://textures/StudioToolbox/RoundedBackground.png",
			borderImage = "rbxasset://textures/StudioToolbox/RoundedBorder.png",
			slice = Rect.new(3, 3, 13, 13),
		},
		isDarkerTheme = isDark,
	})

	-- define the color palette for the UILibrary, override where necessary
	local UILibraryStylePalette = {
		backgroundColor = getColor(c.InputFieldBackground),
		textColor = getColor(c.MainText),
		subTextColor = getColor(c.SubText),
		dimmerTextColor = getColor(c.DimmedText),
		disabledColor = getColor(c.Tab),
		borderColor = getColor(c.Border),
		hoverColor = isDark and getColor(c.MainButton) or getColor(c.CurrentMarker),

		errorColor = getColor(c.ErrorText),

		font = Enum.Font.SourceSans,
	}

	local UILibraryOverrides = {
		treeView = {
			elementPadding = 0,
		},
		styledDropdown = {
			backgroundColor = getColor(c.Button),
			hovered = {
				backgroundColor = getColor(c.Button, m.Hover),
			},
			selected = {
				backgroundColor = getColor(c.Button),
			},
		},
		separator = {
			lineColor = isDark and getColor(c.Border) or getColor(c.Titlebar),
		},
	}

	return {
		PluginTheme = PluginTheme,
		UILibraryStylePalette = UILibraryStylePalette,
		UILibraryOverrides = UILibraryOverrides,
	}
end

local Theme = {}

function Theme.new()
	return StudioTheme.new(createValues)
end

function Theme.mock()
	return StudioTheme.newDummyTheme(createValues)
end

return Theme
