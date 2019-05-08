local Plugin = script.Parent.Parent.Parent

local createSignal = require(Plugin.Src.Util.createSignal)
local Constants = require(Plugin.Src.Util.Constants)
local Cryo = require(Plugin.Cryo)
local UILibraryCreateTheme = require(Plugin.UILibrary.createTheme)

local Theme = {}

function Theme.new(override)
	local self = {
		overrideTheme = override or nil,
		signal = createSignal(),
		externalThemeChangedConnection = nil,

		values = {},
		uiLibraryValues = {},
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
	return UILibraryCreateTheme(self.uiLibraryValues)
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
		Subtext = {
			Font = Enum.Font.SourceSans,
			TextSize = 16,
			TextColor3 = color(StyleColor.DimmedText),
		},
	}

	self:update({
		isDarkerTheme = isDark,
		
		fontStyle = settings():GetFFlag("StudioGameSettingsAccessPermissions") and fontStyle or nil,

		backgroundColor = color(StyleColor.MainBackground),

		hyperlink = color(StyleColor.LinkText),
		warningColor = color(StyleColor.WarningText),

		separator = isDark and color(StyleColor.Border) or color(StyleColor.Titlebar),

		scrollBar = isDark and color(StyleColor.ScrollBar) or color(StyleColor.Border),
		scrollBarBackground = isDark and color(StyleColor.ScrollBarBackground) or Color3.fromRGB(245, 245, 245),

		menuBar = {
			backgroundColor = isDark and color(StyleColor.ScrollBarBackground) or color(StyleColor.MainBackground),
		},

		menuEntry = {
			hover = isDark and color(StyleColor.CurrentMarker) or color(StyleColor.RibbonTab),
			highlight = isDark and color(StyleColor.TableItem, StyleModifier.Selected) or color(StyleColor.CurrentMarker),
			text = color(StyleColor.BrightText),
		},

		header = {
			text = color(StyleColor.BrightText),
		},

		footer = {
			gradient = color(StyleColor.MainText),
		},

		titledFrame = {
			text = color(StyleColor.SubText),
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