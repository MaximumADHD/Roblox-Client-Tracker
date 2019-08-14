local Plugin = script.Parent.Parent.Parent

local createSignal = require(Plugin.Src.Util.createSignal)
local Constants = require(Plugin.Src.Util.Constants)
local Cryo = require(Plugin.Cryo)
local UILibraryCreateTheme = require(Plugin.UILibrary.createTheme)

local fflagFontsInTheme = settings():GetFFlag("StudioGameSettingsFontsInTheme")

local Theme = {}

function Theme.new(override)
	local self = {
		overrideTheme = override or nil,
		signal = createSignal(),
		externalThemeChangedConnection = nil,

		values = {},
		uiLibraryValues = {},
		uiLibraryOverrides = {},
	}

	setmetatable(self, {
		__index = Theme
	})

	if override == nil then
		self.externalThemeChangedConnection = settings().Studio.ThemeChanged:Connect(function()
			self:recalculateTheme()
		end)
	end

	self:recalculateTheme()

	return self
end

function Theme:subscribe(...)
	return self.signal:subscribe(...)
end

function Theme:destroy()
	if self.externalThemeChangedConnection then
		self.externalThemeChangedConnection:Disconnect()
	end
end

function Theme:update(changedValues)
	self.values = Cryo.Dictionary.join(self.values, changedValues)
	self.signal:fire(self.values)
end

function Theme:updateUILibrary(changedValues)
	self.uiLibraryValues = Cryo.Dictionary.join(self.uiLibraryValues, changedValues)
	self.signal:fire(self.uiLibraryValues)
end

function Theme:overrideUILibrary(overrides)
	self.uiLibraryOverrides = Cryo.Dictionary.join(self.uiLibraryOverrides, overrides)
	self.signal:fire(self.uiLibraryOverrides)
end

function Theme:getExternalTheme()
	local overrideTheme = self.overrideTheme
	if overrideTheme then
		return overrideTheme
	end

	return settings().Studio.Theme
end

function Theme:isDarkerTheme()
	-- Assume "darker" theme if the average main background colour is darker
	local mainColour = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainBackground)
	return (mainColour.r + mainColour.g + mainColour.b) / 3 < 0.5
end

function Theme:getUILibraryTheme()
	return UILibraryCreateTheme(self.uiLibraryValues, self.uiLibraryOverrides)
end

function Theme:recalculateTheme()
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

function Theme.newDummyTheme()
	return Theme.new({
		GetColor = function()
			return Color3.fromRGB(0, 0, 0)
		end,
	})
end

return Theme