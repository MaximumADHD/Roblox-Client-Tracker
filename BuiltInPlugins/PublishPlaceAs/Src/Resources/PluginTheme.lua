local Plugin = script.parent.parent.parent

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local FrameworkTheme = ContextServices.Theme

local StudioUI = Framework.StudioUI
local StudioFrameworkStyles = StudioUI.StudioFrameworkStyles

local Util = Framework.Util
local Style = Util.Style
local StyleTable = Util.StyleTable
local FrameworkStyleModifier = Util.StyleModifier

local UILibrary = require(Plugin.Packages.UILibrary)
local createTheme = UILibrary.createTheme

-- getColor : function<Color3>(color enum)
-- c = Enum.StudioStyleGuideColor
-- m = Enum.StudioStyleGuideModifier

local function createStyles(theme, getColor)
	local c = Enum.StudioStyleGuideColor
	local m = Enum.StudioStyleGuideModifier

	local studioStyles = StudioFrameworkStyles.new(theme, getColor)

	local isDark = settings().Studio.Theme.Name == "Dark"

	local tooltipOptIn = StyleTable.new("Image", function()
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
	end)

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
				Subtext = {
					Font = Enum.Font.SourceSans,
					TextSize = 16,
					TextColor3 = theme:getColor(c.DimmedText)
				}
			},

			icons = {
				newPlace = "rbxasset://textures/PublishPlaceAs/WhiteNew.png",
				backArrow = "rbxasset://textures/PublishPlaceAs/navigation_pushBack.png",
				checkmark = "rbxasset://textures/PublishPlaceAs/common_checkmarkCircle.png",
				thumbnailPlaceHolder = "rbxasset://textures/PublishPlaceAs/TransparentWhiteImagePlaceholder.png",
				backgroundColor = isDark and Color3.fromRGB(37, 37, 37) or Color3.fromRGB(245, 245, 245),
				imageColor = isDark and Color3.fromRGB(102, 102, 102) or Color3.fromRGB(151, 151, 151),
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
				maxHeight = 65
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
			Image = Style.extend(studioStyles.Image, tooltipOptIn),
		}),
	}
end

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
		partialHyperlink = {
			RequirementsLink = {
				textSize = 16,
				textColor = theme:GetColor(c.SubText),
				font = Enum.Font.SourceSans,
			},
		},
	}

	return createTheme(UILibraryStylePalette, UILibraryOverrides)
end

local Theme = {}

function Theme.new()
	local theme = FrameworkTheme.new(createStyles)
	function theme:getUILibraryTheme()
		return getUILibraryTheme()
	end
	return theme
end

function Theme.mock()
	local function getTheme()
		return settings().Studio.Theme
	end
	local theme = FrameworkTheme.mock(createStyles, getTheme)
	function theme:getUILibraryTheme()
		return getUILibraryTheme()
	end
	return theme
end

return Theme
