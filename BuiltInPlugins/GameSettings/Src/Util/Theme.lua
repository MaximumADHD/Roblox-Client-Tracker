local Plugin = script.Parent.Parent.Parent

local createSignal = require(Plugin.Src.Util.createSignal)
local Constants = require(Plugin.Src.Util.Constants)
local Cryo = require(Plugin.Cryo)
local UILibrary = require(Plugin.UILibrary)
local UILibraryCreateTheme = require(Plugin.UILibrary.createTheme)
local StudioTheme = UILibrary.Studio.Theme
local StudioStyle = UILibrary.Studio.Style

local fflagFontsInTheme = settings():GetFFlag("StudioGameSettingsFontsInTheme")

local DEPRECATED_Theme = {}

function DEPRECATED_Theme.new(override)
	local self = {
		overrideTheme = override or nil,
		signal = createSignal(),
		externalThemeChangedConnection = nil,

		values = {},
		uiLibraryValues = {},
		uiLibraryOverrides = {},
	}

	setmetatable(self, {
		__index = DEPRECATED_Theme
	})

	if override == nil then
		self.externalThemeChangedConnection = settings().Studio.ThemeChanged:Connect(function()
			self:recalculateTheme()
		end)
	end

	self:recalculateTheme()

	return self
end

function DEPRECATED_Theme:subscribe(...)
	return self.signal:subscribe(...)
end

function DEPRECATED_Theme:destroy()
	if self.externalThemeChangedConnection then
		self.externalThemeChangedConnection:Disconnect()
	end
end

function DEPRECATED_Theme:update(changedValues)
	self.values = Cryo.Dictionary.join(self.values, changedValues)
	self.signal:fire(self.values)
end

function DEPRECATED_Theme:updateUILibrary(changedValues)
	self.uiLibraryValues = Cryo.Dictionary.join(self.uiLibraryValues, changedValues)
	self.signal:fire(self.uiLibraryValues)
end

function DEPRECATED_Theme:overrideUILibrary(overrides)
	self.uiLibraryOverrides = Cryo.Dictionary.join(self.uiLibraryOverrides, overrides)
	self.signal:fire(self.uiLibraryOverrides)
end

function DEPRECATED_Theme:getExternalTheme()
	local overrideTheme = self.overrideTheme
	if overrideTheme then
		return overrideTheme
	end

	return settings().Studio.Theme
end

function DEPRECATED_Theme:isDarkerTheme()
	-- Assume "darker" theme if the average main background colour is darker
	local mainColour = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainBackground)
	return (mainColour.r + mainColour.g + mainColour.b) / 3 < 0.5
end

function DEPRECATED_Theme:getUILibraryTheme()
	return UILibraryCreateTheme(self.uiLibraryValues, self.uiLibraryOverrides)
end

function DEPRECATED_Theme:recalculateTheme()
	local externalTheme = self:getExternalTheme()
	local isDark = self:isDarkerTheme()

	-- Shorthand for getting a color
	local StyleColor = Enum.StudioStyleGuideColor
	local StyleModifier = Enum.StudioStyleGuideModifier

	local function color(...)
		return externalTheme:GetColor(...)
	end
	
	local fontStyle = {
		Title = {
			Font = Enum.Font.SourceSans,
			TextSize = 24,
			TextColor3 = color(StyleColor.TitlebarText),
		},
		Header = {
			Font = Enum.Font.SourceSans,
			TextSize = 24,
			TextColor3 = color(StyleColor.BrightText),
		},
		Subtitle = {
			Font = Enum.Font.SourceSans,
			TextSize = 22,
			TextColor3 = color(StyleColor.SubText),
		},
		Normal = {
			Font = Enum.Font.SourceSans,
			TextSize = 22,
			TextColor3 = color(StyleColor.MainText),
		},
		SemiBold = {
			Font = Enum.Font.SourceSansSemibold,
			TextSize = 22,
			TextColor3 = color(StyleColor.MainText),
		},
		Smaller = {
			Font = Enum.Font.SourceSans,
			TextSize = 20,
			TextColor3 = color(StyleColor.MainText),
		},
		Warning = {
			Font = Enum.Font.SourceSans,
			TextSize = 20,
			TextColor3 = color(StyleColor.WarningText),
		},
		Error = {
			Font = Enum.Font.SourceSans,
			TextSize = 20,
			TextColor3 = color(StyleColor.ErrorText),
		},
		Subtext = {
			Font = Enum.Font.SourceSans,
			TextSize = 16,
			TextColor3 = color(StyleColor.DimmedText),
		},
		SmallError = {
			Font = Enum.Font.SourceSans,
			TextSize = 16,
			TextColor3 = color(StyleColor.ErrorText),
		},
	}

	self:update({
		isDarkerTheme = isDark,
		
		fontStyle = fflagFontsInTheme and fontStyle or nil,

		backgroundColor = color(StyleColor.MainBackground),

		hyperlink = color(StyleColor.LinkText),
		warningColor = color(StyleColor.WarningText),

		separator = isDark and color(StyleColor.Border) or color(StyleColor.Titlebar),

		scrollBar = isDark and color(StyleColor.ScrollBar) or color(StyleColor.Border),
		scrollBarBackground = isDark and color(StyleColor.ScrollBarBackground) or Color3.fromRGB(245, 245, 245),

		menuBar = {
			backgroundColor = isDark and color(StyleColor.ScrollBarBackground) or color(StyleColor.MainBackground),
		},

		searchBar = {
			border = color(StyleColor.Border),
			borderHover = isDark and color(StyleColor.MainButton) or color(StyleColor.CurrentMarker),
			borderSelected = isDark and color(StyleColor.MainButton) or color(StyleColor.CurrentMarker),
			placeholderText = color(StyleColor.DimmedText),

			searchIcon = color(StyleColor.SubText),

			clearButton = {
				imageSelected = color(StyleColor.SubText),
				image = color(StyleColor.SubText),
			},

			dropDown = {
				backgroundColor = color(StyleColor.InputFieldBackground),
				itemText = color(StyleColor.MainText),
				headerText = color(StyleColor.SubText),

				hovered = {
					backgroundColor = color(StyleColor.Button, StyleModifier.Hover),
					itemText = color(StyleColor.ButtonText, StyleModifier.Hover),
				},

				selected = {
					backgroundColor = color(StyleColor.Button, StyleModifier.Selected),
				},
			},
		},

		menuEntry = {
			hover = isDark and color(StyleColor.CurrentMarker) or color(StyleColor.RibbonTab),
			highlight = isDark and color(StyleColor.TableItem, StyleModifier.Selected) or color(StyleColor.CurrentMarker),
			text = color(StyleColor.BrightText),
		},

		footer = {
			gradient = color(StyleColor.MainText),
		},

		textBox = {
			background = color(StyleColor.InputFieldBackground),
			disabled = color(StyleColor.Tab),
			borderDefault = color(StyleColor.Border),
			borderHover = isDark and color(StyleColor.MainButton) or color(StyleColor.CurrentMarker),
			tooltip = color(StyleColor.DimmedText),
			text = color(StyleColor.MainText),
		},

		radioButton = {
			background = color(StyleColor.InputFieldBackground),
			title = color(StyleColor.BrightText),
			description = color(StyleColor.DimmedText),
		},

		checkBox = {
			background = color(StyleColor.InputFieldBackground),
			title = color(StyleColor.BrightText),
		},

		dropDown = {
			background = color(StyleColor.Button),
			hover = color(StyleColor.Button, StyleModifier.Hover),
			text = color(StyleColor.BrightText),
			disabled = color(StyleColor.Tab),
			handle = color(StyleColor.MainText),
			border = color(StyleColor.Border),
			gradient = color(StyleColor.Dark)
		},

		dropDownEntry = {
			background = color(StyleColor.MainBackground),
			hover = isDark and color(StyleColor.CurrentMarker) or color(StyleColor.RibbonTab),
			highlight = isDark and color(StyleColor.TableItem, StyleModifier.Selected) or color(StyleColor.CurrentMarker),
			text = color(StyleColor.MainText),
		},

		dialog = {
			background = color(StyleColor.MainBackground),
			text = color(StyleColor.MainText),
		},

		subjectThumbnail = {
			background = color(StyleColor.TableItem),
		},

		thumbnail = {
			background = color(StyleColor.Dark),
			count = color(StyleColor.DimmedText),
		},

		newThumbnail = {
			background = color(StyleColor.TableItem),
			border = isDark and color(StyleColor.Dark) or color(StyleColor.Titlebar),
			plus = isDark and color(StyleColor.MainText) or color(StyleColor.DimmedText),
		},

		thumbnailDrag = {
			background = color(StyleColor.CurrentMarker, StyleModifier.Selected),
			border = color(StyleColor.CurrentMarker, StyleModifier.Selected),
		},

		cancelButton = {
			ButtonColor = color(StyleColor.Button),
			ButtonColor_Hover = color(StyleColor.Button, StyleModifier.Hover),
			ButtonColor_Disabled = color(StyleColor.Button, StyleModifier.Disabled),
			TextColor = color(StyleColor.MainText),
			TextColor_Disabled = color(StyleColor.DimmedText),
			BorderColor = color(StyleColor.Border),
		},

		defaultButton = {
			ButtonColor = isDark and color(StyleColor.MainButton) or color(StyleColor.CurrentMarker),
			ButtonColor_Hover = color(StyleColor.LinkText),
			ButtonColor_Disabled = isDark and color(StyleColor.Button, StyleModifier.Disabled) or Constants.BLUE_DISABLED,
			TextColor = Color3.new(1, 1, 1),
			TextColor_Disabled = isDark and color(StyleColor.ButtonText, StyleModifier.Disabled) or Color3.new(1, 1, 1),
			BorderColor = color(StyleColor.Light),
		},

		collaboratorItem = {
			collapseStateArrow = isDark and Color3.fromRGB(204, 204, 204) or Color3.fromRGB(25, 25, 25),
			deleteButton = isDark and Color3.fromRGB(136, 136, 136) or Color3.fromRGB(184, 184, 184),
		},

		table = {
			item = {
				background = color(StyleColor.TableItem)
			},
		},

		editButton = {
			image = "rbxasset://textures/GameSettings/edit.png",
			imageColor = isDark and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(25, 25, 25)
		}
	})

	self:overrideUILibrary({
		button = {
			LargeHitboxButton = {
				backgroundColor = self.values.backgroundColor,

				hovered = {
					backgroundColor = color(StyleColor.Button, StyleModifier.Hover),
				},
			},
		}
	})

	-- This is how we tell the UILibrary to use our colors instead of its predefined settings
	self:updateUILibrary({
		backgroundColor = color(StyleColor.InputFieldBackground),
		textColor = color(StyleColor.MainText),
		subTextColor = color(StyleColor.SubText),
		dimmerTextColor = color(StyleColor.DimmedText),
		disabledColor = color(StyleColor.Tab),
		borderColor = color(StyleColor.Border),
		hoverColor = isDark and color(StyleColor.MainButton) or color(StyleColor.CurrentMarker),
		hyperlinkTextColor = color(StyleColor.LinkText),
		
		-- Dropdown item
		hoveredItemColor = color(StyleColor.Button, StyleModifier.Hover),
		hoveredTextColor = color(StyleColor.ButtonText, StyleModifier.Hover),
		
		-- Dropdown button
		selectionColor = color(StyleColor.Button, StyleModifier.Selected),
		selectedTextColor = color(StyleColor.ButtonText, StyleModifier.Selected),
		selectionBorderColor = color(StyleColor.ButtonBorder, StyleModifier.Selected),
		
		errorColor = color(StyleColor.ErrorText),
	})
end

function DEPRECATED_Theme.newDummyTheme()
	return DEPRECATED_Theme.new({
		GetColor = function()
			return Color3.fromRGB(0, 0, 0)
		end,
	})
end


local Theme = {}

function Theme.isDarkerTheme()
	-- Assume "darker" theme if the average main background colour is darker
	local mainColour = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainBackground)
	return (mainColour.r + mainColour.g + mainColour.b) / 3 < 0.5
end

-- getColor : function<Color3>(getColor enum)
-- c = Enum.StudioStyleGuideColor
-- m = Enum.StudioStyleGuideModifier
function Theme.createValues(getColor, StyleColor, StyleModifier)
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
		
		fontStyle = fflagFontsInTheme and fontStyle or nil,

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
			ButtonColor_Disabled = isDark and getColor(StyleColor.Button, StyleModifier.Disabled) or Constants.BLUE_DISABLED,
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
			},
		},

		editButton = {
			image = "rbxasset://textures/GameSettings/edit.png",
			imageColor = isDark and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(25, 25, 25)
		}
	}

	-- define any custom changes to UILibrary elements, use UILibrary's createTheme path syntax
	local UILibraryOverrides = {
		button = {
			LargeHitboxButton = {
				backgroundColor = Color3.new(1,0,0),

				hovered = {
					backgroundColor = getColor(StyleColor.Button, StyleModifier.Hover),
				},
			},
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
	}

	return {
		PluginTheme = PluginTheme,
		UILibraryStylePalette = StyleOverrides,
		UILibraryOverrides = UILibraryOverrides,
	}
end

function Theme.new()
	return StudioTheme.new(Theme.createValues)
end

function Theme.newDummyTheme()
	return StudioTheme.newDummyTheme(Theme.createValues)
end

return game:GetFastFlag("StudioGameSettingsUseNewProviderAndThemeStuff") and Theme or DEPRECATED_Theme