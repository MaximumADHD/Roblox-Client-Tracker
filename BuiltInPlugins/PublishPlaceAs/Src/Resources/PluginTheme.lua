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
		icons = {
			newPlace = "rbxasset://textures/PublishPlaceAs/WhiteNew.png",
			backArrow = "rbxasset://textures/PublishPlaceAs/navigation_pushBack.png",
			checkmark = "rbxasset://textures/PublishPlaceAs/common_checkmarkCircle.png",
			thumbnailPlaceHolder = "rbxasset://textures/PublishPlaceAs/TransparentWhiteImagePlaceholder.png",
			backgroundColor = isDark and Color3.fromRGB(37, 37, 37) or Color3.fromRGB(245, 245, 245),
			imageColor = isDark and Color3.fromRGB(102, 102, 102) or Color3.fromRGB(151, 151, 151),
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

		pageButton = {
			ButtonColor = getColor(c.Button),
			ImageColor = getColor(c.MainText),
			BorderColor = getColor(c.Border),

			hovered = {
				ButtonColor = getColor(c.Button, m.Hover),
			},
			disabled = {
				ButtonColor = getColor(c.Button, m.Disabled),
				ImageColor = getColor(c.DimmedText),
			},
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
				font = Enum.Font.SourceSans,
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
		listDialog = {
			font = Enum.Font.SourceSansSemibold,
			textColor = getColor(c.MainText),
		},
		successText = {
			font = Enum.Font.SourceSans,
			text = Color3.fromRGB(2, 183, 87),
		},
		failText = {
			font = Enum.Font.SourceSans,
			text = getColor(c.ErrorText),
		},
		pageText = {
			font = Enum.Font.SourceSansLight
		},

		--Constants used for UI
		DROPDOWN_WIDTH = 330,
		DROPDOWN_HEIGHT = 38,

		SCREEN_CHOOSE_GAME = {
			ARROW_SIZE = 12,
			PAGE_PADDING = 115,
			ICON_SIZE = 150,
			TILE_FOOTER_SIZE = 35,
			FRAME_BUTTON_SIZE = 32,
			CELL_PADDING_X = 30,
			CELL_PADDING_Y = 40
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
		styledDropdown = {
			backgroundColor = getColor(c.Button),
			itemText = getColor(c.MainText),
			headerText = getColor(c.SubText),
			hovered = {
				backgroundColor = getColor(c.Button, m.Hover),
				textColor = getColor(c.MainText, m.Hover),
			},
			selected = {
				backgroundColor = isDark and getColor(c.CurrentMarker) or getColor(c.MainButton),
				textColor = getColor(c.MainText, m.Hover),
				borderColor = getColor(c.Border),
			},
			listTheme = {
				backgroundColor = getColor(c.InputFieldBackground),
				hovered = {
					backgroundColor = getColor(c.Button, m.Hover),
					textColor = getColor(c.MainText, m.Hover),
				},
				selected = {
					backgroundColor = isDark and getColor(c.MainButton) or getColor(c.CurrentMarker),
					borderColor = getColor(c.Border),
				},
			}
		},
		button = {
			Default = {
				backgroundColor = getColor(c.Button),

				hovered = {
					backgroundColor = getColor(c.Button, m.Hover),
					textColor = getColor(c.MainText),
					borderColor = getColor(c.Border),
				},
			},

			Primary = {
				backgroundColor = isDark and getColor(c.MainButton) or getColor(c.CurrentMarker),
				textColor = Color3.new(1, 1, 1),
				borderColor = getColor(c.Light),

				hovered = {
					backgroundColor = getColor(c.LinkText),
					textColor = Color3.new(1, 1, 1),
					borderColor = getColor(c.Light),
				},
			},
		},
		separator = {
			lineColor = isDark and getColor(c.Border) or getColor(c.Titlebar),
		},
		checkBox = {
			selectedImage = isDark and "rbxasset://textures/GameSettings/CheckedBoxDark.png"
				or "rbxasset://textures/GameSettings/CheckedBoxLight.png"
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
