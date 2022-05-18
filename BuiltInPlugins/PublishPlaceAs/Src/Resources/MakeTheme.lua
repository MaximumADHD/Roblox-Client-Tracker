local Plugin = script.parent.parent.parent

local Framework = require(Plugin.Packages.Framework)

local DEPRECATED_UILibraryTheme = require(script.Parent.DEPRECATED_UILibraryTheme)
local getUILibraryTheme = DEPRECATED_UILibraryTheme.getUILibraryTheme

local Util = Framework.Util
local StyleModifier = Util.StyleModifier

local Style = Framework.Style
local StyleKey = Style.StyleKey
local StudioTheme = Style.Themes.StudioTheme
local Colors = Style.Colors
local getRawComponentStyle = Style.getRawComponentStyle
local ui = Style.ComponentSymbols

local Dash = Framework.Dash
local join = Dash.join

-- TODO: jbousellam - STUDIOPLAT-27834: Determine a better way to handle theme switching with new Dropdown design
local isDark = settings().Studio.Theme.Name == "Dark"

local fontStyle = {
	Title = {
		Font = Enum.Font.SourceSans,
		TextSize = 24,
		TextColor3 = StyleKey.TitlebarText,
	},
	Normal = {
		Font = Enum.Font.SourceSans,
		TextSize = 22,
		TextColor3 = StyleKey.MainText,
	},
	Subtext = {
		Font = Enum.Font.SourceSans,
		TextSize = 16,
		TextColor3 = StyleKey.DimmedText,
	},
}

local image = join(getRawComponentStyle("Image"), {
	["&TooltipStyle"] = {
		Image = "rbxasset://textures/PublishPlaceAs/MoreDetails.png",
		Color = StyleKey.SubText,
		[StyleModifier.Hover] = {
			Color = StyleKey.MainTextHover,
		}
	}
})

local style = {
	font = Enum.Font.SourceSans,
	fontStyle = fontStyle,
	backgroundColor = StyleKey.MainBackground,
	textColor = StyleKey.MainText,
	subTextColor = StyleKey.SubText,
	dimmerTextColor = StyleKey.DimmedText,
	disabledColor = StyleKey.Tab,
	borderColor = StyleKey.Border,
	hoverColor = Colors.Blue,
	errorColor = StyleKey.ErrorText,

	icons = {
		newPlace = "rbxasset://textures/PublishPlaceAs/WhiteNew.png",
		backArrow = "rbxasset://textures/PublishPlaceAs/navigation_pushBack.png",
		checkmark = "rbxasset://textures/PublishPlaceAs/common_checkmarkCircle.png",
		thumbnailPlaceHolder = "rbxasset://textures/PublishPlaceAs/TransparentWhiteImagePlaceholder.png",
		backgroundColor = StyleKey.IconBackgroundColor,
		imageColor = StyleKey.IconImageColor,
	},
	descriptionBox = {
		maxHeight = 120,
		textBoxHeight = 90,
	},
	toggleButton = {
		width = 40,
		height = 24,
	},
	dialog = {
		minSize = {
			width = 400,
			height = 204,
		},
		spacing = 20,
	},
	tooltipIcon = {
		paddingY = 30,
		size = 14,
	},
	optInLocations = {
		height = 52,
	},
	requirementsLink = {
		height = 22,
		length = 250,
		paddingY = 25,
	},
	emailDialog = {
		Size = {
			X = 500,
			Y = 350,
		}
	},
	selectInput = {
		button = {
			height = 38,
		},
		fontStyle = {
			Normal = {
				TextSize = 22,
			},
		},
		padding = 10,
		width = {
			creator = 330,
			genre = 210,
		},
	},
	defaultButton = {
		ButtonColor = StyleKey.DialogMainButton,
		ButtonColor_Hover = StyleKey.LinkText,
		ButtonColor_Disabled = StyleKey.DialogMainButtonDisabled,
		TextColor = StyleKey.DialogMainButtonText,
		TextColor_Disabled = StyleKey.DialogMainButtonTextDisabled,
		BorderColor = StyleKey.Light,
	},
	cancelButton = {
		ButtonColor = StyleKey.Button,
		ButtonColor_Hover = StyleKey.ButtonHover,
		ButtonColor_Disabled = StyleKey.ButtonDisabled,
		TextColor = StyleKey.ButtonText,
		TextColor_Disabled = StyleKey.DimmedText,
		BorderColor = StyleKey.Border,
	},
	pageButton = {
		ButtonColor = StyleKey.Button,
		ImageColor = StyleKey.MainText,
		BorderColor = StyleKey.Border,

		hovered = {
			ButtonColor = StyleKey.ButtonHover,
		},
		disabled = {
			ButtonColor = StyleKey.ButtonDisabled,
			ImageColor = StyleKey.DimmedText,
		},
	},
	menuBar = {
		backgroundColor = StyleKey.MenuBarBackground,
	},
	menuEntry = {
		hover = StyleKey.MenuEntryHover,
		highlight = StyleKey.MenuEntryHighlight,
		text = StyleKey.BrightText,
		font = {
			selected = Enum.Font.SourceSansSemibold,
			unselected = Enum.Font.SourceSans,
		}
	},
	footer = {
		gradient = StyleKey.MainText,
		textbutton = {
			font = Enum.Font.SourceSans,
		},
	},
	header = {
		font = Enum.Font.SourceSans,
		text = StyleKey.BrightText,
	},
	checkboxset = {
		font = Enum.Font.SourceSans,
		error = StyleKey.ErrorText,
		maxHeight = 65
	},
	listDialog = {
		font = Enum.Font.SourceSansSemibold,
		textColor = StyleKey.MainText,
	},
	successText = {
		font = Enum.Font.SourceSans,
		text = Color3.fromRGB(2, 183, 87),
	},
	textWithInlineLink = {
		maxWidth = 380,
	},
	failText = {
		font = Enum.Font.SourceSans,
		text = StyleKey.ErrorText,
	},
	pageText = {
		font = Enum.Font.SourceSansLight
	},
	radioButton = {
		font = Enum.Font.SourceSans,
		textColor = StyleKey.MainText,
		dimTextColor = StyleKey.DimmedText,
	},

	--Constants used for UI
	DROPDOWN_WIDTH = 330,
	DROPDOWN_HEIGHT = 38,

	MENU_BAR_WIDTH = 192,
	FOOTER_HEIGHT = 65,

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

	[ui.Image] = image,
}

return function(createMock: boolean?)
	local styleRoot
	if createMock then
		styleRoot = StudioTheme.mock()
	else
		styleRoot = StudioTheme.new()
	end

	local theme = styleRoot:extend(style)
	theme.getUILibraryTheme = getUILibraryTheme

	return theme
end