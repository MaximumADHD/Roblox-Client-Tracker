local Plugin = script.Parent.Parent.Parent

local createSignal = require(Plugin.Src.Util.createSignal)
local Constants = require(Plugin.Src.Util.Constants)
local Cryo = require(Plugin.Cryo)

local Theme = {}

function Theme.new(override)
	local self = {
		overrideTheme = override or nil,
		signal = createSignal(),
		externalThemeChangedConnection = nil,

		values = {},
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

function Theme:recalculateTheme()
	local externalTheme = self:getExternalTheme()
	local isDark = self:isDarkerTheme()

	-- Shorthands for getting a color
	local c = Enum.StudioStyleGuideColor
	local m = Enum.StudioStyleGuideModifier

	local function color(...)
		return externalTheme:GetColor(...)
	end

	self:update({
		isDarkerTheme = isDark,

		backgroundColor = color(c.MainBackground),

		separator = isDark and color(c.Border) or color(c.Titlebar),

		scrollBar = color(c.ScrollBar),

		menuBar = {
			backgroundColor = isDark and color(c.ScrollBarBackground) or color(c.MainBackground),
		},

		menuEntry = {
			hover = color(c.RibbonTab),
			highlight = isDark and color(c.TableItem, m.Selected) or color(c.CurrentMarker),
			text = color(c.BrightText),
		},

		header = {
			text = color(c.BrightText),
		},

		footer = {
			gradient = color(c.MainText),
		},

		titledFrame = {
			text = color(c.SubText),
		},

		textBox = {
			background = color(c.InputFieldBackground),
			disabled = color(c.Tab),
			borderDefault = color(c.Border),
			borderHover = isDark and color(c.MainButton) or color(c.CurrentMarker),
			tooltip = color(c.DimmedText),
			text = color(c.MainText),
		},

		radioButton = {
			background = color(c.InputFieldBackground),
			title = color(c.BrightText),
			description = color(c.DimmedText),
		},

		checkBox = {
			background = color(c.InputFieldBackground),
			title = color(c.BrightText),
		},

		dialog = {
			background = color(c.MainBackground),
			text = color(c.MainText),
		},

		cancelButton = {
			ButtonColor = color(c.Button),
			ButtonColor_Hover = color(c.Button, m.Hover),
			ButtonColor_Disabled = color(c.Button, m.Disabled),
			TextColor = color(c.MainText),
			TextColor_Disabled = color(c.DimmedText),
			BorderColor = color(c.Border),
		},

		defaultButton = {
			ButtonColor = isDark and color(c.MainButton) or color(c.CurrentMarker),
			ButtonColor_Hover = color(c.LinkText),
			ButtonColor_Disabled = isDark and color(c.Button, m.Disabled) or Constants.BLUE_DISABLED,
			TextColor = Color3.new(1, 1, 1),
			TextColor_Disabled = isDark and color(c.DimmedText) or Color3.new(1, 1, 1),
			BorderColor = color(c.Light),
		},
	})
end

function Theme.newDummyTheme()
	return Theme.new({
		GetColor = function()
			return Color3.fromRGB(0, 0, 0)
		end,
	})
end

-- Remove with FFlagStudioLuaGameSettingsDialog2
function Theme.DEPRECATED_constantColors()
	local theme = Theme.newDummyTheme()

	theme:update({
		isDarkerTheme = false,

		backgroundColor = Color3.fromRGB(255, 255, 255),

		separator = Color3.fromRGB(245, 245, 245),

		scrollBar = Color3.fromRGB(255, 255, 255),

		menuBar = {
			backgroundColor = Color3.fromRGB(255, 255, 255),
		},

		menuEntry = {
			hover = Color3.fromRGB(242, 242, 242),
			highlight = Color3.fromRGB(61, 180, 255),
			text = Color3.fromRGB(0, 0, 0),
		},

		header = {
			text = Color3.fromRGB(0, 0, 0),
		},

		footer = {
			gradient = Color3.fromRGB(0, 0, 0),
		},

		titledFrame = {
			text = Color3.fromRGB(184, 184, 184),
		},

		radioButton = {
			background = Color3.fromRGB(255, 255, 255),
			title = Color3.fromRGB(0, 0, 0),
			description = Color3.fromRGB(184, 184, 184),
		},

		dialog = {
			background = Color3.fromRGB(255, 255, 255),
			text = Color3.fromRGB(0, 0, 0),
		},

		cancelButton = {
			ButtonColor = Color3.fromRGB(255, 255, 255),
			ButtonColor_Hover = Color3.fromRGB(242, 242, 242),
			ButtonColor_Disabled = Color3.fromRGB(255, 255, 255),
			TextColor = Color3.fromRGB(0, 0, 0),
			TextColor_Disabled = Color3.fromRGB(117, 117, 117),
			BorderColor = Color3.fromRGB(184, 184, 184),
		},

		defaultButton = {
			ButtonColor = Color3.fromRGB(0, 162, 255),
			ButtonColor_Hover = Color3.fromRGB(61, 180, 255),
			ButtonColor_Disabled = Color3.fromRGB(153, 218, 255),
			TextColor = Color3.fromRGB(255, 255, 255),
			TextColor_Disabled = Color3.fromRGB(255, 255, 255),
			BorderColor = Color3.fromRGB(242, 242, 242),
		},
	})

	return theme
end

return Theme