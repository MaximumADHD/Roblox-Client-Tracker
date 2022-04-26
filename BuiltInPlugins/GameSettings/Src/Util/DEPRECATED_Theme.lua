local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local DevFrameworkTheme = ContextServices.Theme
local Stylizer = ContextServices.Stylizer
local StudioUI = Framework.StudioUI
local StudioFrameworkStyles = StudioUI.StudioFrameworkStyles

local Util = Framework.Util
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR
local StyleTable = Util.StyleTable
local Style = Util.Style
local FrameworkStyleModifier = Util.StyleModifier

local UIFolderData = Framework.UIData
local Button = require(UIFolderData.Button.style)

local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)
local UILibraryTheme = require(script.Parent.DEPRECATED_UILibraryTheme)
local getThemeHelpers = UILibraryTheme.getThemeHelpers
local getUILibraryTheme = UILibraryTheme.getUILibraryTheme
local getMockStudioTheme = UILibraryTheme.getMockStudioTheme

local Theme = {}
Theme.isDarkerTheme = UILibraryTheme.isDarkerTheme

local isCli, _ = pcall(function()
	return game:GetService("ProcessService")
end)


function Theme.createValues(theme, getColor)
	local helpers = getThemeHelpers()
	local StyleColor = helpers.StyleColor
	local StyleModifier = helpers.StyleModifier
	local isDark = helpers.isDark

	local studioStyles = StudioFrameworkStyles.new(theme, getColor)
	
	local fontStyle = {
		Title = {
			Font = Enum.Font.SourceSans,
			TextSize = 24,
			TextColor3 = theme:getColor(StyleColor.TitlebarText),
		},
		Header = {
			Font = Enum.Font.SourceSans,
			TextSize = 24,
			TextColor3 = theme:getColor(StyleColor.BrightText),
		},
		Subtitle = {
			Font = Enum.Font.SourceSans,
			TextSize = 22,
			TextColor3 = theme:getColor(StyleColor.SubText),
		},
		Normal = {
			Font = Enum.Font.SourceSans,
			TextSize = 22,
			TextColor3 = theme:getColor(StyleColor.MainText),
		},
		SemiBold = {
			Font = Enum.Font.SourceSansSemibold,
			TextSize = 22,
			TextColor3 = theme:getColor(StyleColor.MainText),
		},
		Smaller = {
			Font = Enum.Font.SourceSans,
			TextSize = 20,
			TextColor3 = theme:getColor(StyleColor.MainText),
		},
		Warning = {
			Font = Enum.Font.SourceSans,
			TextSize = 20,
			TextColor3 = theme:getColor(StyleColor.WarningText),
		},
		Error = {
			Font = Enum.Font.SourceSans,
			TextSize = 20,
			TextColor3 = theme:getColor(StyleColor.ErrorText),
		},
		Subtext = {
			Font = Enum.Font.SourceSans,
			TextSize = 16,
			TextColor3 = theme:getColor(StyleColor.DimmedText),
		},
		SmallError = {
			Font = Enum.Font.SourceSans,
			TextSize = 16,
			TextColor3 = theme:getColor(StyleColor.ErrorText),
		},
	}

	local button = Button(theme, getColor)

	local gameSettingsButtons = StyleTable.new("Button", function()
		local GameSettingsPrimaryButton = Style.extend(button.RoundPrimary, {
			TextSize = fontStyle.Normal.TextSize,
		})

		local GameSettingsButton = Style.extend(button.Round, {
			TextSize = fontStyle.Normal.TextSize,
		})

		return {
			GameSettingsButton = GameSettingsButton,
			GameSettingsPrimaryButton = GameSettingsPrimaryButton,
		}
	end)

	local tooltipOptIn = StyleTable.new("Image", function()
		local TooltipStyle = Style.new({
			Image = "rbxasset://textures/GameSettings/MoreDetails.png",
			Color = theme:getColor(StyleColor.SubText),
			[FrameworkStyleModifier.Hover] = {
				Color = theme:getColor(StyleColor.MainText, StyleModifier.Hover),
			},
		})

		local WarningStyle = Style.new({
			Image = "rbxasset://textures/GameSettings/Warning.png",
		})

		return {
			TooltipStyle = TooltipStyle,
			WarningStyle = WarningStyle,
		}
	end)

	return {
		Plugin = Style.extend({
			isDarkerTheme = isDark,

			fontStyle = fontStyle,

			backgroundColor = theme:getColor(StyleColor.MainBackground),

			hyperlink = theme:getColor(StyleColor.LinkText),
			warningColor = theme:getColor(StyleColor.WarningText),
			warningIcon = "rbxasset://textures/GameSettings/Warning.png",

			separator = isDark and theme:getColor(StyleColor.Border) or theme:getColor(StyleColor.Titlebar),

			scrollBar = isDark and theme:getColor(StyleColor.ScrollBar) or theme:getColor(StyleColor.Border),
			scrollBarBackground = isDark and theme:getColor(StyleColor.ScrollBarBackground) or Color3.fromRGB(245, 245, 245),

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
				backgroundColor = isDark and theme:getColor(StyleColor.ScrollBarBackground) or theme:getColor(StyleColor.MainBackground),
			},

			rowHeight = 35,

			robuxFeeBase = {
				icon = {
					imageColor = isDark and theme:getColor(StyleColor.MainText) or theme:getColor(StyleColor.DimmedText),
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
			},

			searchBar = {
				border = theme:getColor(StyleColor.Border),
				borderHover = isDark and theme:getColor(StyleColor.MainButton) or theme:getColor(StyleColor.CurrentMarker),
				borderSelected = isDark and theme:getColor(StyleColor.MainButton) or theme:getColor(StyleColor.CurrentMarker),
				placeholderText = theme:getColor(StyleColor.DimmedText),

				searchIcon = theme:getColor(StyleColor.SubText),

				clearButton = {
					imageSelected = theme:getColor(StyleColor.SubText),
					image = theme:getColor(StyleColor.SubText),
				},

				dropDown = {
					backgroundColor = theme:getColor(StyleColor.InputFieldBackground),
					itemText = theme:getColor(StyleColor.MainText),
					headerText = theme:getColor(StyleColor.SubText),
					hovered = {
						backgroundColor = theme:getColor(StyleColor.Button, StyleModifier.Hover),
						itemText = theme:getColor(StyleColor.ButtonText, StyleModifier.Hover),
					},
					item = {
						offset = 2,
					},
					selected = {
						backgroundColor = theme:getColor(StyleColor.Button, StyleModifier.Selected),
					},
				},
			},

			menuEntry = {
				hover = isDark and theme:getColor(StyleColor.CurrentMarker) or theme:getColor(StyleColor.RibbonTab),
				highlight = isDark and theme:getColor(StyleColor.TableItem, StyleModifier.Selected) or theme:getColor(StyleColor.CurrentMarker),
				text = theme:getColor(StyleColor.BrightText),
			},

			footer = {
				gradient = theme:getColor(StyleColor.MainText),
				height = 65,
			},

			textBox = {
				background = theme:getColor(StyleColor.InputFieldBackground),
				disabled = theme:getColor(StyleColor.Tab),
				borderDefault = theme:getColor(StyleColor.Border),
				borderHover = isDark and theme:getColor(StyleColor.MainButton) or theme:getColor(StyleColor.CurrentMarker),
				tooltip = theme:getColor(StyleColor.DimmedText),
				text = theme:getColor(StyleColor.MainText),
				height = 42,
			},

			textWithInlineLink = {
				maxWidth = 380,
			},

			radioButton = {
				background = theme:getColor(StyleColor.InputFieldBackground),
				title = theme:getColor(StyleColor.BrightText),
				description = theme:getColor(StyleColor.DimmedText),
				size = 20,
				padding = 5,
				descriptionWidth = 500,
				image = {
					background = "rbxasset://textures/GameSettings/RadioButton.png",
					selected = isDark and "rbxasset://textures/StudioSharedUI/radio_selected_enabled_dark.png" or "rbxasset://textures/ui/LuaApp/icons/ic-blue-dot.png",
					selectedDisabled = isDark and "rbxasset://textures/StudioSharedUI/radio_selected_disabled_dot_dark.png" or "rbxasset://textures/StudioSharedUI/radio_selected_disabled_dot.png"
				}
			},

			radioButtonSet = {
				warningLabel = {
					color = theme:getColor(StyleColor.WarningText),
					height = 30,
				},

				description = {
					height = 25 
				},

				padding = 5,
			},

			checkBox = {
				background = theme:getColor(StyleColor.InputFieldBackground),
				title = theme:getColor(StyleColor.BrightText),
			},

			devProducts = {
				headerPadding = 20,
				titlePadding = 12
			},

			badges = {
				headerPadding = 20,
				titlePadding = 12,
				refreshButton = {
					icon = isDark and "rbxasset://textures/GameSettings/refresh_dark_theme.png" 
						or "rbxasset://textures/GameSettings/refresh_light_theme.png",
					offset = {
						x = - 10,
					},
					size = 18,
				},
			},

			dropDown = {
				background = theme:getColor(StyleColor.Button),
				hover = theme:getColor(StyleColor.Button, StyleModifier.Hover),
				text = theme:getColor(StyleColor.BrightText),
				disabled = theme:getColor(StyleColor.Tab),
				handle = theme:getColor(StyleColor.MainText),
				border = theme:getColor(StyleColor.Border),
				gradient = theme:getColor(StyleColor.Dark)
			},

			dropDownEntry = {
				background = theme:getColor(StyleColor.MainBackground),
				hover = isDark and theme:getColor(StyleColor.CurrentMarker) or theme:getColor(StyleColor.RibbonTab),
				highlight = isDark and theme:getColor(StyleColor.TableItem, StyleModifier.Selected) or theme:getColor(StyleColor.CurrentMarker),
				text = theme:getColor(StyleColor.MainText),
			},

			dialog = {
				background = theme:getColor(StyleColor.MainBackground),
				text = theme:getColor(StyleColor.MainText),
				size = {
					width = 480,
					height = 308,
				},
				spacing = 20,
			},

			subjectThumbnail = {
				background = theme:getColor(StyleColor.TableItem),
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

			thumbnail = {
				background = theme:getColor(StyleColor.Dark),
				count = theme:getColor(StyleColor.DimmedText),
			},

			newThumbnail = {
				background = theme:getColor(StyleColor.TableItem),
				border = isDark and theme:getColor(StyleColor.Dark) or theme:getColor(StyleColor.Titlebar),
				plus = isDark and theme:getColor(StyleColor.MainText) or theme:getColor(StyleColor.DimmedText),
			},

			thumbnailDrag = {
				background = theme:getColor(StyleColor.CurrentMarker, StyleModifier.Selected),
				border = theme:getColor(StyleColor.CurrentMarker, StyleModifier.Selected),
			},

			cancelButton = {
				ButtonColor = theme:getColor(StyleColor.Button),
				ButtonColor_Hover = theme:getColor(StyleColor.Button, StyleModifier.Hover),
				ButtonColor_Disabled = theme:getColor(StyleColor.Button, StyleModifier.Disabled),
				TextColor = theme:getColor(StyleColor.MainText),
				TextColor_Disabled = theme:getColor(StyleColor.DimmedText),
				BorderColor = theme:getColor(StyleColor.Border),
			},

			defaultButton = {
				ButtonColor = isDark and theme:getColor(StyleColor.MainButton) or theme:getColor(StyleColor.CurrentMarker),
				ButtonColor_Hover = theme:getColor(StyleColor.LinkText),
				ButtonColor_Disabled = isDark and theme:getColor(StyleColor.Button, StyleModifier.Disabled) or DEPRECATED_Constants.BLUE_DISABLED,
				TextColor = Color3.new(1, 1, 1),
				TextColor_Disabled = isDark and theme:getColor(StyleColor.ButtonText, StyleModifier.Disabled) or Color3.new(1, 1, 1),
				BorderColor = theme:getColor(StyleColor.Light),
			},

			collaboratorItem = {
				collapseStateArrow = isDark and Color3.fromRGB(204, 204, 204) or Color3.fromRGB(25, 25, 25),
				deleteButton = isDark and Color3.fromRGB(136, 136, 136) or Color3.fromRGB(184, 184, 184),
			},

			table = {
				height = 350,
				header = {
					height = 32,
				},
				item = {
					background = theme:getColor(StyleColor.TableItem),
					height = 32,
					padding = 5,
				},
				icon = {
					height = 40
				},
				menu = {
					itemPadding = 30,
					buttonSize = 32,
					buttonPaddingY = 10,
				},
				textPadding = 6,
			},

			toggleButton = {
				height = 24
			},

			editButton = {
				image = "rbxasset://textures/GameSettings/edit.png",
				imageColor = isDark and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(25, 25, 25)
			},

			copyButton = {
				image = "rbxasset://textures/GameSettings/copy.png",
				imageColor = isDark and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(25, 25, 25)
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
				}
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
				}
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
				DEPRECATED_width = 140, -- remove with FFlagStudioExplainFriendCollaboratorPermission3
				width = 195
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
		}),

		Framework = Style.extend(studioStyles, {
			Button = Style.extend(studioStyles.Button, gameSettingsButtons),
			Image = Style.extend(studioStyles.Image, tooltipOptIn),
		}),
	}
end

function Theme.new()
	local themeContext = DevFrameworkTheme.new(Theme.createValues)
	function themeContext:getUILibraryTheme()
		return getUILibraryTheme()
	end
	return themeContext
end

function Theme.newDummyTheme()
	local themeContext = DevFrameworkTheme.mock(Theme.createValues, function()
		return getMockStudioTheme()
	end)
	function themeContext:getUILibraryTheme()
		return getUILibraryTheme()
	end
	return themeContext
end

return Theme
