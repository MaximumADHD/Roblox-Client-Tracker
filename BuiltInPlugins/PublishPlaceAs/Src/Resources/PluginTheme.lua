local Plugin = script.parent.parent.parent

local FFlagUpdatePublishPlacePluginToDevFrameworkContext = game:GetFastFlag("UpdatePublishPlacePluginToDevFrameworkContext")
local FFlagLuobuDevPublishLua = game:GetFastFlag("LuobuDevPublishLua")
local FFlagLuobuDevPublishLuaTempOptIn = game:GetFastFlag("LuobuDevPublishLuaTempOptIn")

local Framework = Plugin.Packages.Framework
local ContextServices = require(Framework.ContextServices)
local FrameworkTheme = ContextServices.Theme

local StudioUI = require(Framework.StudioUI)
local StudioFrameworkStyles = StudioUI.StudioFrameworkStyles

local Util = require(Framework.Util)
local Style = Util.Style
local StyleTable = Util.StyleTable
local FrameworkStyleModifier = Util.StyleModifier

local UILibrary = require(Plugin.Packages.UILibrary)
local createTheme = UILibrary.createTheme
local StudioTheme = UILibrary.Studio.Theme
local StudioStyle = UILibrary.Studio.Style
local deepJoin = require(Plugin.Src.Util.deepJoin)

-- getColor : function<Color3>(color enum)
-- c = Enum.StudioStyleGuideColor
-- m = Enum.StudioStyleGuideModifier
local function createValues(getColor, c, m)
	local isDark = settings().Studio.Theme.Name == "Dark"
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
		radioButton = {
			font = Enum.Font.SourceSans,
			textColor = getColor(c.MainText),
			dimTextColor = getColor(c.DimmedText),
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

local function createStyles(theme, getColor)
	assert(FFlagUpdatePublishPlacePluginToDevFrameworkContext)

	local c = Enum.StudioStyleGuideColor
	local m = Enum.StudioStyleGuideModifier

	local studioStyles = StudioFrameworkStyles.new(theme, getColor)

	local isDark = settings().Studio.Theme.Name == "Dark"

	local tooltipOptIn = FFlagLuobuDevPublishLua and StyleTable.new("Image", function()
		local TooltipStyle = Style.new({
			Image = "rbxasset://textures/PublishPlaceAs/MoreDetails.png",
			Color = theme:getColor(c.SubText),
			[FrameworkStyleModifier.Hover] = {
				Color = theme:getColor(c.MainText, m.Hover),
			},
		})
		return {
			TooltipStyle = TooltipStyle,
		}
	end) or nil

	local tempLinkText = FFlagLuobuDevPublishLuaTempOptIn and StyleTable.new("LinkText", function()
		local LinkTextStyle = Style.new({
			Font = Enum.Font.SourceSans,
			TextSize = 22,
			EnableHover = true,
			TextColor = theme:getColor(c.LinkText),
		})
		return {
			LinkTextStyle = LinkTextStyle,
		}
	end) or nil

	-- define all the colors used in the plugin
	return {
		Plugin = {
			backgroundColor = theme:getColor(c.MainBackground),
			textColor = theme:getColor(c.MainText),
			subTextColor = theme:getColor(c.SubText),
			dimmerTextColor = theme:getColor(c.DimmedText),
			disabledColor = theme:getColor(c.Tab),
			borderColor = theme:getColor(c.Border),
			hoverColor = isDark and theme:getColor(c.MainButton) or theme:getColor(c.CurrentMarker),
			errorColor = theme:getColor(c.ErrorText),
			font = Enum.Font.SourceSans,

			fontStyle = {
				Title = {
					Font = Enum.Font.SourceSans,
					TextSize = 24,
					TextColor3 = theme:getColor(c.TitlebarText),
				},
				Normal = {
					Font = Enum.Font.SourceSans,
					TextSize = 22,
					TextColor3 = theme:getColor(c.MainText),
				},
			},

			icons = {
				newPlace = "rbxasset://textures/PublishPlaceAs/WhiteNew.png",
				backArrow = "rbxasset://textures/PublishPlaceAs/navigation_pushBack.png",
				checkmark = "rbxasset://textures/PublishPlaceAs/common_checkmarkCircle.png",
				thumbnailPlaceHolder = "rbxasset://textures/PublishPlaceAs/TransparentWhiteImagePlaceholder.png",
				backgroundColor = isDark and Color3.fromRGB(37, 37, 37) or Color3.fromRGB(245, 245, 245),
				imageColor = isDark and Color3.fromRGB(102, 102, 102) or Color3.fromRGB(151, 151, 151),
			},
			dialog = {
				minSize = {
					width = 400,
					height = 204,
				},
				spacing = 20,
			},
			defaultButton = {
				ButtonColor = isDark and theme:getColor(c.MainButton) or theme:getColor(c.CurrentMarker),
				ButtonColor_Hover = theme:getColor(c.LinkText),
				ButtonColor_Disabled = isDark and theme:getColor(c.Button, m.Disabled) or Color3.fromRGB(153, 218, 255),
				TextColor = Color3.new(1, 1, 1),
				TextColor_Disabled = isDark and theme:getColor(c.ButtonText, m.Disabled) or Color3.new(1, 1, 1),
				BorderColor = theme:getColor(c.Light),
			},
			cancelButton = {
				ButtonColor = theme:getColor(c.Button),
				ButtonColor_Hover = theme:getColor(c.Button, m.Hover),
				ButtonColor_Disabled = theme:getColor(c.Button, m.Disabled),
				TextColor = theme:getColor(c.MainText),
				TextColor_Disabled = theme:getColor(c.DimmedText),
				BorderColor = theme:getColor(c.Border),
			},

			pageButton = {
				ButtonColor = theme:getColor(c.Button),
				ImageColor = theme:getColor(c.MainText),
				BorderColor = theme:getColor(c.Border),

				hovered = {
					ButtonColor = theme:getColor(c.Button, m.Hover),
				},
				disabled = {
					ButtonColor = theme:getColor(c.Button, m.Disabled),
					ImageColor = theme:getColor(c.DimmedText),
				},
			},

			menuBar = {
				backgroundColor = isDark and theme:getColor(c.ScrollBarBackground) or theme:getColor(c.MainBackground),
			},

			menuEntry = {
				hover = isDark and theme:getColor(c.CurrentMarker) or theme:getColor(c.RibbonTab),
				highlight = isDark and theme:getColor(c.TableItem, m.Selected) or theme:getColor(c.CurrentMarker),
				text = theme:getColor(c.BrightText),
				font = {
					selected = Enum.Font.SourceSansSemibold,
					unselected = Enum.Font.SourceSans,
				}
			},
			footer = {
				gradient = theme:getColor(c.MainText),
				textbutton = {
					font = Enum.Font.SourceSans,
				},
			},
			header = {
				text = theme:getColor(c.BrightText),
				font = Enum.Font.SourceSans,
			},
			checkboxset = {
				font = Enum.Font.SourceSans,
				error = theme:getColor(c.ErrorText),
			},
			listDialog = {
				font = Enum.Font.SourceSansSemibold,
				textColor = theme:getColor(c.MainText),
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
				text = theme:getColor(c.ErrorText),
			},
			pageText = {
				font = Enum.Font.SourceSansLight
			},
			radioButton = {
				font = Enum.Font.SourceSans,
				textColor = theme:getColor(c.MainText),
				dimTextColor = theme:getColor(c.DimmedText),
			},
			tooltipIcon = FFlagLuobuDevPublishLua and {
				paddingY = 30,
				size = 14,
			} or nil,
			optInLocations = FFlagLuobuDevPublishLua and {
				height = 52,
			} or nil,
			tempOptInLink = FFlagLuobuDevPublishLuaTempOptIn and {
				TextColor3 = theme:getColor(c.MainText),
				TextSize = 22,
				Font =  Enum.Font.SourceSans,
			} or nil,
			requirementsLink = FFlagLuobuDevPublishLua and {
				height = 22,
				length = 250,
				paddingY = 25,
			} or nil,

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
		},

		Framework = Style.extend(studioStyles, {
			Image = FFlagLuobuDevPublishLua and Style.extend(studioStyles.Image, tooltipOptIn) or nil,
			LinkText = FFlagLuobuDevPublishLuaTempOptIn and Style.extend(studioStyles.LinkText, tempLinkText) or nil
		}),
	}
end

local function getUILibraryTheme()
	assert(FFlagUpdatePublishPlacePluginToDevFrameworkContext)

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
		hyperlinkTextColor = FFlagLuobuDevPublishLua and theme:GetColor(c.LinkText) or nil,
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
		partialHyperlink = FFlagLuobuDevPublishLua and {
			RequirementsLink = {
				textSize = 16,
				textColor = theme:GetColor(c.SubText),
				font = Enum.Font.SourceSans,
			},
		} or nil,
	}

	return createTheme(UILibraryStylePalette, UILibraryOverrides)
end

local Theme = {}

function Theme.new()
	if FFlagUpdatePublishPlacePluginToDevFrameworkContext then
		local theme = FrameworkTheme.new(createStyles)
		function theme:getUILibraryTheme()
			return getUILibraryTheme()
		end
		return theme
	else
		return StudioTheme.new(createValues)
	end
end

function Theme.mock()
	if FFlagUpdatePublishPlacePluginToDevFrameworkContext then
		local function getTheme()
			return settings().Studio.Theme
		end
		local theme = FrameworkTheme.mock(createStyles, getTheme)
		function theme:getUILibraryTheme()
			return getUILibraryTheme()
		end
		return theme
	else
		return StudioTheme.newDummyTheme(createValues)
	end
end

return Theme
