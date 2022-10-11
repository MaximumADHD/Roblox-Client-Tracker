local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)

local Util = Framework.Util
local Style = Framework.Style

local StyleModifier = Util.StyleModifier
local StyleKey = Style.StyleKey

local DEPRECATED_UILibraryTheme = require(script.Parent.DEPRECATED_UILibraryTheme)
local getUILibraryTheme = DEPRECATED_UILibraryTheme.getUILibraryTheme

local getRawComponentStyle = Style.getRawComponentStyle
local ui = Style.ComponentSymbols
local StudioTheme = Style.Themes.StudioTheme

local Dash = Framework.Dash
local join = Dash.join

local fontStyle = {
	Title = {
		Font = Enum.Font.SourceSans,
		TextSize = 24,
		TextColor3 = StyleKey.TitlebarText,
	},
	Header = {
		Font = Enum.Font.SourceSans,
		TextSize = 24,
		TextColor3 = StyleKey.BrightText,
	},
	Subtitle = {
		Font = Enum.Font.SourceSans,
		TextSize = 22,
		TextColor3 = StyleKey.SubText,
	},
	Normal = {
		Font = Enum.Font.SourceSans,
		TextSize = 22,
		TextColor3 = StyleKey.MainText,
	},
	SemiBold = {
		Font = Enum.Font.SourceSansSemibold,
		TextSize = 22,
		TextColor3 = StyleKey.MainText,
	},
	Smaller = {
		Font = Enum.Font.SourceSans,
		TextSize = 20,
		TextColor3 = StyleKey.MainText,
	},
	Warning = {
		Font = Enum.Font.SourceSans,
		TextSize = 20,
		TextColor3 = StyleKey.WarningText,
	},
	Error = {
		Font = Enum.Font.SourceSans,
		TextSize = 20,
		TextColor3 = StyleKey.ErrorText,
	},
	Subtext = {
		Font = Enum.Font.SourceSans,
		TextSize = 16,
		TextColor3 = StyleKey.DimmedText,
	},
	SmallError = {
		Font = Enum.Font.SourceSans,
		TextSize = 16,
		TextColor3 = StyleKey.ErrorText,
	},
}

local frameworkButton = getRawComponentStyle("Button")
local button = join(frameworkButton, {
	["&GameSettingsPrimaryButton"] = join(frameworkButton["&RoundPrimary"], {
		TextSize = fontStyle.Normal.TextSize,
	}),
	["&GameSettingsButton"] = join(frameworkButton["&Round"], {
		TextSize = fontStyle.Normal.TextSize,
	}),
})

local image = join(getRawComponentStyle("Image"), {
	["&TooltipStyle"] = {
		Image = "rbxasset://textures/GameSettings/MoreDetails.png",
		Color = StyleKey.SubText,
		[StyleModifier.Hover] = {
			Color = StyleKey.MainTextHover,
		},
	},
	["&WarningStyle"] = {
		Image = "rbxasset://textures/GameSettings/Warning.png",
	},
})

local robuxFeeBase = {
	icon = {
		imageColor = StyleKey.MainText,
		image = "rbxasset://textures/ui/common/robux_small.png",
		size = 16,
	},

	priceField = {
		width = 150,
	},

	subText = {
		width = 500,
	},

	height = {
		withSubText = 137,
		withoutSubText = 121,
	},

	spacing = 10,

	transparency = {
		enabled = 0,
		disabled = 0.5,
	},

	pricePadding = 25,
}

local searchBar = {
	border = StyleKey.Border,
	borderHover = StyleKey.DialogMainButton,
	borderSelected = StyleKey.DialogMainButton,
	placeholderText = StyleKey.DimmedText,

	searchIcon = StyleKey.SubText,

	clearButton = {
		imageSelected = StyleKey.SubText,
		image = StyleKey.SubText,
	},

	dropDown = {
		backgroundColor = StyleKey.InputFieldBackground,
		itemText = StyleKey.MainText,
		headerText = StyleKey.SubText,
		hovered = {
			backgroundColor = StyleKey.ButtonHover,
		},
		item = {
			offset = 2,
		},
		selected = {
			backgroundColor = StyleKey.ButtonSelected,
		},
	},
}

local style = {
	fontStyle = fontStyle,
	backgroundColor = StyleKey.MainBackground,

	hyperlink = StyleKey.LinkText,
	warningColor = StyleKey.WarningText,
	warningIcon = "rbxasset://textures/GameSettings/Warning.png",

	separator = StyleKey.SubBackground2,

	scrollBar = StyleKey.ScrollBar,
	scrollBarBackground = StyleKey.ScrollBarBackground,

	button = {
		width = 125,
		height = 35,
	},

	buttonBar = {
		offset = -29,
	},

	header = {
		height = 45,
	},

	menuBar = {
		backgroundColor = StyleKey.MenuBarBackground,
	},

	rowHeight = 35,

	robuxFeeBase = robuxFeeBase,

	searchBar = searchBar,

	menuEntry = {
		hover = StyleKey.MenuEntryHover,
		highlight = StyleKey.MenuEntryHighlight,
		text = StyleKey.BrightText,
	},

	footer = {
		gradient = StyleKey.MainText,
		height = 65,
	},

	textBox = {
		background = StyleKey.InputFieldBackground,
		disabled = StyleKey.InputFieldBackgroundDisabled,
		borderDefault = StyleKey.Border,
		borderHover = StyleKey.DialogMainButton,
		tooltip = StyleKey.DimmedText,
		text = StyleKey.MainText,
		height = 42,
	},

	textWithInlineLink = {
		maxWidth = 380,
	},

	radioButton = {
		background = StyleKey.InputFieldBackground,
		title = StyleKey.BrightText,
		description = StyleKey.DimmedText,
		size = 20,
		padding = 5,
		descriptionWidth = 500,
		image = {
			background = "rbxasset://textures/GameSettings/RadioButton.png",
			selected = StyleKey.RadioButtonImage,
			selectedDisabled = StyleKey.RadioButtonDisabledImage,
		},
	},

	radioButtonSet = {
		warningLabel = {
			color = StyleKey.WarningText,
			height = 30,
		},

		description = {
			height = 25,
		},
		padding = 5,
	},

	checkBox = {
		background = StyleKey.InputFieldBackground,
		title = StyleKey.BrightText,
	},

	devProducts = {
		headerPadding = 20,
		titlePadding = 12,
	},

	badges = {
		headerPadding = 20,
		titlePadding = 12,
		refreshButton = {
			icon = StyleKey.RefreshImage,
			offset = {
				x = -10,
			},
			size = 18,
		},
	},

	dropDown = {
		background = StyleKey.Button,
		hover = StyleKey.ButtonHover,
		text = StyleKey.BrightText,
		disabled = StyleKey.InputFieldBackgroundDisabled,
		handle = StyleKey.MainText,
		border = StyleKey.Border,
		gradient = StyleKey.SubBackground2,
	},

	dropDownEntry = {
		background = StyleKey.MenuBarBackground,
		hover = StyleKey.MenuEntryHover,
		highlight = StyleKey.MenuEntryHighlight,
		text = StyleKey.MainText,
	},

	dialog = {
		background = StyleKey.MainBackground,
		text = StyleKey.MainText,
		size = {
			width = 480,
			height = 308,
		},
		spacing = 20,
	},

	subjectThumbnail = {
		background = StyleKey.TableItem,
		maskImage = "rbxasset://textures/StudioSharedUI/avatarMask.png",
		loadingImage = "rbxasset://textures/StudioSharedUI/default_user.png",
		loadFailureImage = "rbxasset://textures/GameSettings/ModeratedAsset.jpg",
	},

	groupThumbnail = {
		loadingImage = "rbxasset://textures/StudioSharedUI/default_group.png",
		loadFailureImage = "rbxasset://textures/GameSettings/ModeratedAsset.jpg",
	},

	badgeIconThumbnail = {
		loadingImage = "rbxasset://textures/StudioSharedUI/default_badge.png",
		loadFailureImage = "rbxasset://textures/GameSettings/ModeratedAsset.jpg",
	},

	dottedBorder = {
		image = "rbxasset://textures/GameSettings/DottedBorder.png",
		sliceCenter = Rect.new(2, 2, 265, 148),
		square = {
			image = "rbxasset://textures/GameSettings/DottedBorder_Square.png",
			sliceCenter = Rect.new(2, 2, 148, 148),
		},
	},

	plus = {
		image = "rbxasset://textures/GameSettings/CenterPlus.png",
		rectOffset = Vector2.new(121, 63),
		rectSize = Vector2.new(24, 24),
	},

	thumbnail = {
		background = StyleKey.SubBackground2,
		count = StyleKey.DimmedText,
	},

	newThumbnail = {
		background = StyleKey.SubBackground,
		border = StyleKey.SubBackground2,
		plus = StyleKey.MainText,
	},

	thumbnailDrag = {
		background = StyleKey.SubBackground,
		border = StyleKey.CurrentMarkerSelected,
	},

	cancelButton = {
		ButtonColor = StyleKey.Button,
		TextColor = StyleKey.MainText,
		BorderColor = StyleKey.Border,
	},

	defaultButton = {
		ButtonColor = StyleKey.DialogMainButton,
		TextColor = Color3.new(1, 1, 1),
		BorderColor = StyleKey.SubBackground2,
	},

	collaboratorItem = {
		collapseStateArrow = StyleKey.MainText,
		deleteButton = StyleKey.SubBackground,
	},

	table = {
		height = 350,
		header = {
			height = 32,
		},
		item = {
			background = StyleKey.TableItem,
			height = 32,
			padding = 5,
		},
		icon = {
			height = 40,
		},
		menu = {
			itemPadding = 30,
			buttonSize = 32,
			buttonPaddingY = 10,
		},
		textPadding = 6,
	},

	toggleButton = {
		height = 24,
	},

	editButton = {
		image = "rbxasset://textures/GameSettings/edit.png",
		imageColor = StyleKey.MainText,
	},

	copyButton = {
		image = "rbxasset://textures/GameSettings/copy.png",
		imageColor = StyleKey.MainText,
	},

	uiListLayout = {
		padding = 10,
	},

	createButton = {
		PaddingX = 75,
		PaddingY = 10,
	},

	viewButton = {
		PaddingX = 75,
		PaddingY = 10,
	},

	mainView = {
		publishText = {
			offset = 70,
			width = 250,
		},
		publishButton = {
			offset = 125,
			paddingX = 75,
			paddingY = 15,
		},
	},

	shutdownButton = {
		PaddingX = 75,
		PaddingY = 10,
	},

	settingsPage = {
		settingPadding = 32,
		marginX = 25, -- on each side
		headerPadding = 6,

		reloadButton = {
			paddingX = 75,
			paddingY = 15,
		},
		failLabelPaddingX = 400,
		failPageListPaddingY = 16,

		toggleButtonSize = UDim2.fromOffset(40, 24),
	},

	backButton = {
		image = "rbxasset://textures/PublishPlaceAs/navigation_pushBack.png",
		size = 32,
	},

	placePage = {
		textBox = {
			length = 100,
		},
	},

	requirementsLink = {
		height = 22,
		length = 250,
		paddingY = 25,
		paddingX = 5,
	},

	tooltipIcon = {
		paddingX = 5,
		paddingY = 30,
		size = 14,
	},

	emailDialog = {
		Size = {
			X = 500,
			Y = 350,
		},
	},

	optInWarning = {
		padding = 5,
		size = 20,
		transparency = 0.5,
	},

	extraOptInInfo = {
		padding = 30,
		length = 250,
		height = 150,
	},

	warningDialog = {
		headerOffset = -60,
		description = {
			length = 387,
		},
		icon = {
			size = 16,
		},
	},

	selectInput = {
		button = {
			height = 50,
		},
		padding = 10,
		width = 195,
	},

	playabilityWidget = {
		buttonPane = {
			padding = 165,
			spacing = 20,
		},
		spacing = 45,
		titlePane = {
			spacing = 15,
		},
	},

	[ui.Button] = button,
	[ui.Image] = image,
}

local darkThemeOverride = {
	[StyleKey.RadioButtonImage] = "rbxasset://textures/StudioSharedUI/radio_selected_enabled_dark.png",
	[StyleKey.RadioButtonDisabledImage] = "rbxasset://textures/StudioSharedUI/radio_selected_disabled_dot_dark.png",
	[StyleKey.RefreshImage] = "rbxasset://textures/GameSettings/refresh_dark_theme.png",
}
local lightThemeOverride = {
	[StyleKey.RadioButtonImage] = "rbxasset://textures/ui/LuaApp/icons/ic-blue-dot.png",
	[StyleKey.RadioButtonDisabledImage] = "rbxasset://textures/StudioSharedUI/radio_selected_disabled_dot.png",
	[StyleKey.RefreshImage] = "rbxasset://textures/GameSettings/refresh_light_theme.png",
}

return function(mock: boolean?)
	local baseTheme = if mock
		then StudioTheme.mock(darkThemeOverride, lightThemeOverride)
		else StudioTheme.new(darkThemeOverride, lightThemeOverride)
	local theme = baseTheme:extend(style)
	theme.getUILibraryTheme = getUILibraryTheme
	return theme
end
