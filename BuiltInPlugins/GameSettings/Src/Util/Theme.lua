local Plugin = script.Parent.Parent.Parent

local Framework = Plugin.Framework

local ContextServices = require(Framework.ContextServices)
local DevFrameworkTheme = ContextServices.Theme
local StudioUI = require(Framework.StudioUI)
local StudioFrameworkStyles = StudioUI.StudioFrameworkStyles

local Util = require(Framework.Util)
local StyleTable = Util.StyleTable
local Style = Util.Style
local StyleModifier = Util.StyleModifier

local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)
local UILibrary = require(Plugin.UILibrary)
local StudioTheme = UILibrary.Studio.Theme
local createTheme = UILibrary.createTheme
local StudioStyle = UILibrary.Studio.Style

local FFlagStudioConvertGameSettingsToDevFramework = game:GetFastFlag("StudioConvertGameSettingsToDevFramework")

local Theme = {}

function Theme.isDarkerTheme()
	-- Assume "darker" theme if the average main background colour is darker
	local mainColour = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainBackground)
	return (mainColour.r + mainColour.g + mainColour.b) / 3 < 0.5
end

function Theme.createValues(theme, getColor)
	local StyleColor = Enum.StudioStyleGuideColor
	local StyleModifier = Enum.StudioStyleGuideModifier

	local studioStyles = StudioFrameworkStyles.new(theme, getColor)

	local isDark = Theme.isDarkerTheme()

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

	return {
		Plugin = Style.extend({
			isDarkerTheme = isDark,

			fontStyle = fontStyle,

			backgroundColor = theme:getColor(StyleColor.MainBackground),

			hyperlink = theme:getColor(StyleColor.LinkText),
			warningColor = theme:getColor(StyleColor.WarningText),

			separator = isDark and theme:getColor(StyleColor.Border) or theme:getColor(StyleColor.Titlebar),

			scrollBar = isDark and theme:getColor(StyleColor.ScrollBar) or theme:getColor(StyleColor.Border),
			scrollBarBackground = isDark and theme:getColor(StyleColor.ScrollBarBackground) or Color3.fromRGB(245, 245, 245),

			menuBar = {
				backgroundColor = isDark and theme:getColor(StyleColor.ScrollBarBackground) or theme:getColor(StyleColor.MainBackground),
			},

			rowHeight = 35,

			robuxFeeBase = {
				icon = {
					image = "rbxasset://textures/ui/common/robux.png",
					size = 30,
				},

				priceField = {
					width = 150,
				},

				disabledSubText = {
					width = 475,
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

			radioButton = {
				background = theme:getColor(StyleColor.InputFieldBackground),
				title = theme:getColor(StyleColor.BrightText),
				description = theme:getColor(StyleColor.DimmedText),
				size = 20,
				padding = 5,
			},

			checkBox = {
				background = theme:getColor(StyleColor.InputFieldBackground),
				title = theme:getColor(StyleColor.BrightText),
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
			},

			subjectThumbnail = {
				background = theme:getColor(StyleColor.TableItem),
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
				header = {
					height = 32,
				},
				item = {
					background = theme:getColor(StyleColor.TableItem),
					height = 32,
					padding = 5,
				},
				menu = {
					--TODO: add image
					image = "",
					itemPadding = 30,
					buttonSize = 32,
					buttonPaddingY = 10,
				},
				textPadding = 6,
			},

			editButton = {
				image = "rbxasset://textures/GameSettings/edit.png",
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

			settingsPage = {
				settingPadding = 32,
				marginX = 25, -- on each side
				headerPadding = 6,
			},

			backButton = {
				image = "rbxasset://textures/PublishPlaceAs/navigation_pushBack.png",
				size = 32,
			},

			placePage = {
				textBox = {
					length = 100,
				}
			}
		}),

		Framework = Style.extend(studioStyles, {}),
	}
end

-- getColor : function<Color3>(getColor enum)
-- StyleColor = Enum.StudioStyleGuideColor
-- StyleModifier = Enum.StudioStyleGuideModifier
function Theme.DEPRECATED_createValues(getColor, StyleColor, StyleModifier)
	-- define the getColor palette for the UILibrary, override where necessary
	local UILibraryStylePalette = StudioStyle.new(getColor, StyleColor, StyleModifier)
	UILibraryStylePalette.backgroundColor = Color3.new(1, 0, 0)

	local isDark = Theme.isDarkerTheme()

	local fontStyle = {
		Title = {
			Font = Enum.Font.SourceSans,
			TextSize = 24,
			TextColor3 = getColor(StyleColor.TitlebarText),
		},
		Header = {
			Font = Enum.Font.SourceSans,
			TextSize = 24,
			TextColor3 = getColor(StyleColor.BrightText),
		},
		Subtitle = {
			Font = Enum.Font.SourceSans,
			TextSize = 22,
			TextColor3 = getColor(StyleColor.SubText),
		},
		Normal = {
			Font = Enum.Font.SourceSans,
			TextSize = 22,
			TextColor3 = getColor(StyleColor.MainText),
		},
		SemiBold = {
			Font = Enum.Font.SourceSansSemibold,
			TextSize = 22,
			TextColor3 = getColor(StyleColor.MainText),
		},
		Smaller = {
			Font = Enum.Font.SourceSans,
			TextSize = 20,
			TextColor3 = getColor(StyleColor.MainText),
		},
		Warning = {
			Font = Enum.Font.SourceSans,
			TextSize = 20,
			TextColor3 = getColor(StyleColor.WarningText),
		},
		Error = {
			Font = Enum.Font.SourceSans,
			TextSize = 20,
			TextColor3 = getColor(StyleColor.ErrorText),
		},
		Subtext = {
			Font = Enum.Font.SourceSans,
			TextSize = 16,
			TextColor3 = getColor(StyleColor.DimmedText),
		},
		SmallError = {
			Font = Enum.Font.SourceSans,
			TextSize = 16,
			TextColor3 = getColor(StyleColor.ErrorText),
		},
	}

	-- define all the colors used in the plugin
	local PluginTheme = {
		isDarkerTheme = isDark,

		fontStyle = fontStyle,

		backgroundColor = getColor(StyleColor.MainBackground),

		hyperlink = getColor(StyleColor.LinkText),
		warningColor = getColor(StyleColor.WarningText),

		separator = isDark and getColor(StyleColor.Border) or getColor(StyleColor.Titlebar),

		scrollBar = isDark and getColor(StyleColor.ScrollBar) or getColor(StyleColor.Border),
		scrollBarBackground = isDark and getColor(StyleColor.ScrollBarBackground) or Color3.fromRGB(245, 245, 245),

		menuBar = {
			backgroundColor = isDark and getColor(StyleColor.ScrollBarBackground) or getColor(StyleColor.MainBackground),
		},

		searchBar = {
			border = getColor(StyleColor.Border),
			borderHover = isDark and getColor(StyleColor.MainButton) or getColor(StyleColor.CurrentMarker),
			borderSelected = isDark and getColor(StyleColor.MainButton) or getColor(StyleColor.CurrentMarker),
			placeholderText = getColor(StyleColor.DimmedText),

			searchIcon = getColor(StyleColor.SubText),

			clearButton = {
				imageSelected = getColor(StyleColor.SubText),
				image = getColor(StyleColor.SubText),
			},

			dropDown = {
				backgroundColor = getColor(StyleColor.InputFieldBackground),
				itemText = getColor(StyleColor.MainText),
				headerText = getColor(StyleColor.SubText),

				hovered = {
					backgroundColor = getColor(StyleColor.Button, StyleModifier.Hover),
					itemText = getColor(StyleColor.ButtonText, StyleModifier.Hover),
				},

				selected = {
					backgroundColor = getColor(StyleColor.Button, StyleModifier.Selected),
				},
			},
		},

		menuEntry = {
			hover = isDark and getColor(StyleColor.CurrentMarker) or getColor(StyleColor.RibbonTab),
			highlight = isDark and getColor(StyleColor.TableItem, StyleModifier.Selected) or getColor(StyleColor.CurrentMarker),
			text = getColor(StyleColor.BrightText),
		},

		footer = {
			gradient = getColor(StyleColor.MainText),
		},

		textBox = {
			background = getColor(StyleColor.InputFieldBackground),
			disabled = getColor(StyleColor.Tab),
			borderDefault = getColor(StyleColor.Border),
			borderHover = isDark and getColor(StyleColor.MainButton) or getColor(StyleColor.CurrentMarker),
			tooltip = getColor(StyleColor.DimmedText),
			text = getColor(StyleColor.MainText),
		},

		radioButton = {
			background = getColor(StyleColor.InputFieldBackground),
			title = getColor(StyleColor.BrightText),
			description = getColor(StyleColor.DimmedText),
		},

		checkBox = {
			background = getColor(StyleColor.InputFieldBackground),
			title = getColor(StyleColor.BrightText),
		},

		dropDown = {
			background = getColor(StyleColor.Button),
			hover = getColor(StyleColor.Button, StyleModifier.Hover),
			text = getColor(StyleColor.BrightText),
			disabled = getColor(StyleColor.Tab),
			handle = getColor(StyleColor.MainText),
			border = getColor(StyleColor.Border),
			gradient = getColor(StyleColor.Dark)
		},

		dropDownEntry = {
			background = getColor(StyleColor.MainBackground),
			hover = isDark and getColor(StyleColor.CurrentMarker) or getColor(StyleColor.RibbonTab),
			highlight = isDark and getColor(StyleColor.TableItem, StyleModifier.Selected) or getColor(StyleColor.CurrentMarker),
			text = getColor(StyleColor.MainText),
		},

		dialog = {
			background = getColor(StyleColor.MainBackground),
			text = getColor(StyleColor.MainText),
		},

		subjectThumbnail = {
			background = getColor(StyleColor.TableItem),
		},

		thumbnail = {
			background = getColor(StyleColor.Dark),
			count = getColor(StyleColor.DimmedText),
		},

		newThumbnail = {
			background = getColor(StyleColor.TableItem),
			border = isDark and getColor(StyleColor.Dark) or getColor(StyleColor.Titlebar),
			plus = isDark and getColor(StyleColor.MainText) or getColor(StyleColor.DimmedText),
		},

		thumbnailDrag = {
			background = getColor(StyleColor.CurrentMarker, StyleModifier.Selected),
			border = getColor(StyleColor.CurrentMarker, StyleModifier.Selected),
		},

		cancelButton = {
			ButtonColor = getColor(StyleColor.Button),
			ButtonColor_Hover = getColor(StyleColor.Button, StyleModifier.Hover),
			ButtonColor_Disabled = getColor(StyleColor.Button, StyleModifier.Disabled),
			TextColor = getColor(StyleColor.MainText),
			TextColor_Disabled = getColor(StyleColor.DimmedText),
			BorderColor = getColor(StyleColor.Border),
		},

		defaultButton = {
			ButtonColor = isDark and getColor(StyleColor.MainButton) or getColor(StyleColor.CurrentMarker),
			ButtonColor_Hover = getColor(StyleColor.LinkText),
			ButtonColor_Disabled = isDark and getColor(StyleColor.Button, StyleModifier.Disabled) or DEPRECATED_Constants.BLUE_DISABLED,
			TextColor = Color3.new(1, 1, 1),
			TextColor_Disabled = isDark and getColor(StyleColor.ButtonText, StyleModifier.Disabled) or Color3.new(1, 1, 1),
			BorderColor = getColor(StyleColor.Light),
		},

		collaboratorItem = {
			collapseStateArrow = isDark and Color3.fromRGB(204, 204, 204) or Color3.fromRGB(25, 25, 25),
			deleteButton = isDark and Color3.fromRGB(136, 136, 136) or Color3.fromRGB(184, 184, 184),
		},

		table = {
			item = {
				background = getColor(StyleColor.TableItem)
			}
		},

		editButton = {
			image = "rbxasset://textures/GameSettings/edit.png",
			imageColor = isDark and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(25, 25, 25)
		},

		uiListLayout = {
			padding = 10,
		}
	}

	-- define any custom changes to UILibrary elements, use UILibrary's createTheme path syntax
	local UILibraryOverrides = {
		button = {
			LargeHitboxButton = {
				backgroundColor = getColor(StyleColor.MainBackground, StyleModifier.Default),

				hovered = {
					backgroundColor = getColor(StyleColor.Button, StyleModifier.Hover),
				},
			},
		},
		toggleButton = {
			defaultWidth = 40,
			defaultHeight = 24,
			onImage = isDark and "rbxasset://textures/RoactStudioWidgets/toggle_on_dark.png"
				or "rbxasset://textures/RoactStudioWidgets/toggle_on_light.png",
			offImage = isDark and "rbxasset://textures/RoactStudioWidgets/toggle_off_dark.png"
				or "rbxasset://textures/RoactStudioWidgets/toggle_off_light.png",
			disabledImage = isDark and "rbxasset://textures/RoactStudioWidgets/toggle_disable_dark.png"
				or "rbxasset://textures/RoactStudioWidgets/toggle_disable_light.png",
		}
	}

	local StyleOverrides = {
		font = Enum.Font.SourceSans,

		backgroundColor = getColor(StyleColor.InputFieldBackground),
		textColor = getColor(StyleColor.MainText),
		subTextColor = getColor(StyleColor.SubText),
		dimmerTextColor = getColor(StyleColor.DimmedText),
		disabledColor = getColor(StyleColor.Tab),
		borderColor = getColor(StyleColor.Border),
		hoverColor = isDark and getColor(StyleColor.MainButton) or getColor(StyleColor.CurrentMarker),
		
		-- Dropdown item
		hoveredItemColor = getColor(StyleColor.Button, StyleModifier.Hover),
		hoveredTextColor = getColor(StyleColor.ButtonText, StyleModifier.Hover),
		
		-- Dropdown button
		selectionColor = getColor(StyleColor.Button, StyleModifier.Selected),
		selectedTextColor = getColor(StyleColor.ButtonText, StyleModifier.Selected),
		selectionBorderColor = getColor(StyleColor.ButtonBorder, StyleModifier.Selected),
		
		errorColor = getColor(StyleColor.ErrorText),

		hyperlinkTextColor = getColor(StyleColor.LinkText),
	}

	return {
		PluginTheme = PluginTheme,
		UILibraryStylePalette = StyleOverrides,
		UILibraryOverrides = UILibraryOverrides,
	}
end

local function getUILibraryTheme()
	local theme = settings().Studio.Theme

	local c = Enum.StudioStyleGuideColor
	local m = Enum.StudioStyleGuideModifier

	local styleGuide = StudioStyle.new(function(...)
		return theme:GetColor(...)
	end, c, m)

	local mainColor = theme:GetColor(Enum.StudioStyleGuideColor.MainBackground)
	local isDark = (mainColor.r + mainColor.g + mainColor.b) / 3 < 0.5

	local UILibraryOverrides = {
		button = {
			LargeHitboxButton = {
				backgroundColor = theme:GetColor(c.MainBackground, m.Default),

				hovered = {
					backgroundColor = theme:GetColor(c.Button, m.Hover),
				},
			},
		},

		checkBox = {
			backgroundColor = theme:getColor(c.InputFieldBackground),
			titleColor = theme:getColor(c.BrightText),
		},

		detailedDropdown = {
			background = theme:getColor(c.Button),
			hover = theme:getColor(c.Button, m.Hover),
			text = theme:getColor(c.BrightText),
			disabled = theme:getColor(c.Tab),
			handle = theme:getColor(c.MainText),
			border = theme:getColor(c.Border),
			gradient = theme:getColor(c.Dark)
		},

		textBox = {
			background = theme:GetColor(c.InputFieldBackground),
			disabled = theme:GetColor(c.Tab),
			borderDefault = theme:GetColor(c.Border),
			borderHover = isDark and theme:GetColor(c.MainButton) or theme:GetColor(c.CurrentMarker),
			tooltip = theme:GetColor(c.DimmedText),
			text = theme:GetColor(c.MainText),
		},

		textEntry = {
			textTransparency = {
				enabled = 0,
				disabled = 0.5
			}
		},

		scrollingFrame = {
			backgroundColor = isDark and theme:getColor(c.InputFieldBackground) or Color3.fromRGB(245, 245, 245),
		},

		toggleButton = {
			defaultWidth = 40,
			defaultHeight = 24,
			onImage = isDark and "rbxasset://textures/RoactStudioWidgets/toggle_on_dark.png"
				or "rbxasset://textures/RoactStudioWidgets/toggle_on_light.png",
			offImage = isDark and "rbxasset://textures/RoactStudioWidgets/toggle_off_dark.png"
				or "rbxasset://textures/RoactStudioWidgets/toggle_off_light.png",
			disabledImage = isDark and "rbxasset://textures/RoactStudioWidgets/toggle_disable_dark.png"
				or "rbxasset://textures/RoactStudioWidgets/toggle_disable_light.png",
		},

		tooltip = {
			textSize = 16,
			font = Enum.Font.SourceSans,
		}
	}

	return createTheme(styleGuide, UILibraryOverrides)
end

function Theme.new()
	if FFlagStudioConvertGameSettingsToDevFramework then
		local themeContext = DevFrameworkTheme.new(Theme.createValues)
		function themeContext:getUILibraryTheme()
			return getUILibraryTheme()
		end
		return themeContext
	else
		return StudioTheme.new(Theme.DEPRECATED_createValues)
	end
end

function Theme.newDummyTheme()
	return StudioTheme.newDummyTheme(Theme.DEPRECATED_createValues)
end

return Theme