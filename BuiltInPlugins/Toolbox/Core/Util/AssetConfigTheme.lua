local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Cryo = require(Packages.Cryo)

local Util = Plugin.Core.Util
local Colors = require(Util.Colors)
local createSignal = require(Util.createSignal)
local wrapStrictTable = require(Util.wrapStrictTable)
local Images = require(Util.Images)
local TestHelpers = require(Util.Test.TestHelpers)

local AssetConfigTheme = {}
AssetConfigTheme.__index = AssetConfigTheme

function AssetConfigTheme.createDummyThemeManager()
	-- Fake the studio theme impl
	return AssetConfigTheme.new({
		getTheme = function()
			return {
				GetColor = function()
					return Color3.fromRGB(0, 0, 0)
				end,
			}
		end,
		studioStyleGuideColor = TestHelpers.createMockStudioStyleGuideColor(),
		studioStyleGuideModifier = TestHelpers.createMockStudioStyleGuideModifier(),
	})
end

--[[
	options:
		getTheme : function void -> Theme
		isDarkerTheme : function Theme -> bool
		themeChanged : RbxScriptSignal
]]
function AssetConfigTheme.new(options)
	local self = {
		_externalThemeGetter = options.getTheme or nil,
		_externalThemeChangedSignal = options.themeChanged or nil,

		_externalThemeChangedConnection = nil,

		_studioStyleGuideColor = options.studioStyleGuideColor or Enum.StudioStyleGuideColor,
		_studioStyleGuideModifier = options.studioStyleGuideModifier or Enum.StudioStyleGuideModifier,

		_values = {},

		_UILibraryTheme = {},

		_signal = createSignal(),
	}

	self.values = wrapStrictTable(self._values, "theme")

	setmetatable(self, AssetConfigTheme)

	if self._externalThemeChangedSignal then
		self._externalThemeChangedConnection = self._externalThemeChangedSignal:Connect(function()
			self:_recalculateTheme()
		end)
	end
	self:_recalculateTheme()

	return self
end

function AssetConfigTheme:subscribe(...)
	return self._signal:subscribe(...)
end

function AssetConfigTheme:destroy()
	if self._externalThemeChangedConnection then
		self._externalThemeChangedConnection:Disconnect()
		self._externalThemeChangedConnection = nil
	end
end

function AssetConfigTheme:_update(changedValues)
	self._values = (Cryo.Dictionary.join)(self._values, changedValues)
	self.values = wrapStrictTable(self._values, "theme")
	self._signal:fire(self.values, self._UILibraryTheme)
end

function AssetConfigTheme:_getExternalTheme()
	local getter = self._externalThemeGetter

	if type(getter) == "function" then
		return getter()
	end

	return getter
end

function AssetConfigTheme:_isDarkerTheme()
	local darkSide = false

	if self._externalThemeGetter then
		darkSide = self._externalThemeGetter().Name == "Dark"
	end

	return darkSide
end

function AssetConfigTheme:_recalculateTheme()
	local externalTheme = self:_getExternalTheme()
	local isDark = self:_isDarkerTheme()

	-- Shorthands for getting a color
	local c = self._studioStyleGuideColor
	local m = self._studioStyleGuideModifier

	local function color(...)
		return externalTheme:GetColor(...)
	end

	self:_update({
		isDarkerTheme = isDark,

		assetConfig = {
			backgroundColor = color(c.MainBackground),
			textColor = color(c.MainText),
			labelTextColor = color(c.DimmedText),
			separatorColor = color(c.Border),
			errorColor = color(c.ErrorText),

			packagePermissions = {
				backgroundColor = color(c.MainBackground),
				subTextColor = color(c.SubText),

				collaboratorItem = {
					collapseStateArrow = isDark and Color3.fromRGB(204, 204, 204) or Color3.fromRGB(25, 25, 25),
					deleteButton = isDark and Color3.fromRGB(136, 136, 136) or Color3.fromRGB(184, 184, 184),
				},

				searchBar = {
					border = color(c.InputFieldBorder),
					borderHover = isDark and color(c.MainButton) or color(c.CurrentMarker),
					borderSelected = isDark and color(c.MainButton) or color(c.CurrentMarker),
					placeholderText = color(c.DimmedText),
					backgroundColor = color(c.InputFieldBackground),
					searchIcon = color(c.SubText),

					clearButton = {
						image = color(c.SubText),
					},

					dropDown = {
						backgroundColor = color(c.InputFieldBackground),
						itemText = color(c.MainText),
						headerText = color(c.SubText),

						hovered = {
							backgroundColor = color(c.Item, m.Hover),
							itemText = color(c.ButtonText, m.Hover),
						},

						selected = {
							backgroundColor = color(c.Button, m.Selected),
						},
					},
				},
			},
		},

		publishAsset = {
			backgroundColor = isDark and color(c.MainBackground) or Color3.fromRGB(46, 46, 46),
			titleTextColor = color(c.SubText),
			textColor = color(c.MainText),
			tipsTextColor = isDark and Color3.fromRGB(102, 102, 102) or Colors.GRAY_3,
		},

		divider = {
			horizontalLineColor = isDark and Color3.fromRGB(34, 34, 34) or Color3.fromRGB(227, 227, 227),
		},

		dropdownMenu = {
			currentSelection = {
				backgroundColor = color(c.Dropdown),
				backgroundSelectedColor = color(c.CurrentMarker),
				borderColor = color(c.Border),
				borderSelectedColor = color(c.CurrentMarker),
				textColor = color(c.MainText),
				textSelectedColor = color(c.MainText, m.Selected),

				iconColor = isDark and Color3.fromRGB(242, 242, 242) or Color3.fromRGB(25, 25, 25),
				iconSelectedColor = Color3.fromRGB(255, 255, 255),
			},

			item = {
				backgroundColor = color(c.Item),
				backgroundSelectedColor = isDark and color(c.Item, m.Selected) or color(c.Tab),

				selectedBarColor = color(c.CurrentMarker),
				textColor = color(c.MainText),
				labelTextColor = color(c.DimmedText),
			},

			dropdownFrame = {
				borderColor = color(c.Border),
			},
		},

		textField = {
			backgroundColor = color(c.MainBackground),
			borderColor = color(c.Border),
			borderHoveredColor = color(c.CurrentMarker),
			borderSelectedColor = Colors.BLUE_PRIMARY,
		},

		-- AssetConfig footer
		footer = {
			backgroundColor = color(c.MainBackground),
			borderColor = color(c.Border),
		},

		scrollingFrame = {
			scrollbarBackgroundColor = isDark and Color3.fromRGB(41, 41, 41) or Color3.fromRGB(245, 245, 245),
			scrollbarImageColor = isDark and Color3.fromRGB(85, 85, 85) or Color3.fromRGB(245, 245, 245),
		},

		messageBox = {
			backgroundColor = color(c.MainBackground),
			textColor = color(c.MainText),
			informativeTextColor = color(c.SubText),

			button = {
				textColor = color(c.MainText),
				textSelectedColor = color(c.MainText, m.Selected),
				backgroundColor = color(c.MainBackground),
				backgroundSelectedColor = color(c.CurrentMarker),
				borderColor = color(c.Border),
				borderSelectedColor = color(c.CurrentMarker),
			},
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
			ButtonColor_Disabled = isDark and color(c.Button, m.Disabled) or Colors.BLUE_DISABLED,
			TextColor = Color3.new(1, 1, 1),
			TextColor_Disabled = isDark and color(c.ButtonText, m.Disabled) or Color3.new(1, 1, 1),
			BorderColor = color(c.Light),
		},

		loading = {
			text = color(c.MainText),
			backgroundBar = color(c.Midlight),
			bar = color(c.CurrentMarker),
		},

		uploadResult = {
			greenText = Color3.fromRGB(2, 183, 87),
			redText = Color3.fromRGB(255, 68, 68),
			text = color(c.MainText),
			buttonColor = isDark and color(c.MainText) or color(c.DimmedText),
			idText = color(c.DimmedText),
			background = color(c.TableItem),
			link = color(c.LinkText),
		},

		inputFields = {
			backgroundColor = color(c.InputFieldBackground),
			backgroundColorDisabled = color(c.InputFieldBackground, m.Disabled),
			borderColorActive = color(c.InputFieldBorder, m.Selected),
			borderColorDisabled = color(c.InputFieldBorder, m.Disabled),
			borderColor = color(c.InputFieldBorder),
			toolTip = color(c.DimmedText),
			error = color(c.ErrorText),
		},

		tags = {
			textColor = color(c.MainText),
			backgroundColor = color(c.MainBackground),
			borderColor = color(c.InputFieldBorder),
		},
	})
end

return AssetConfigTheme
