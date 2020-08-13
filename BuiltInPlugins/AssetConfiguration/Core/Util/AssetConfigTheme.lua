local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Cryo = require(Libs.Cryo)
local UILibrary = require(Libs.UILibrary)

local createTheme = UILibrary.createTheme

local Util = Plugin.Core.Util
local Colors = require(Util.Colors)
local createSignal = require(Util.createSignal)
local wrapStrictTable = require(Util.wrapStrictTable)
local Images = require(Util.Images)

local AssetConfigTheme = {}
AssetConfigTheme.__index = AssetConfigTheme

function AssetConfigTheme.createDummyThemeManager()
	-- Fake the studio theme impl
	return AssetConfigTheme.new({
		getTheme = {
			GetColor = function()
				return Color3.fromRGB(0, 0, 0)
			end,
		},
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
		_externalUIThemGetter = options.getUITheme or nil,
		_externalThemeChangedSignal = options.themeChanged or nil,

		_externalThemeChangedConnection = nil,

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
	end
end

function AssetConfigTheme:_update(changedValues)
	self._values = (Cryo.Dictionary.join)(self._values,
		changedValues)
	self.values = wrapStrictTable(self._values, "theme")
	self._signal:fire(self.values, self._UILibraryTheme)
end

function AssetConfigTheme:_updateUILibrary(style, overrides)
	self._UILibraryTheme = createTheme(style, overrides)
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
	if self._externalUIThemGetter then
		darkSide = self._externalUIThemGetter().Name == Enum.UITheme.Dark.Name
	end

	return darkSide
end

function AssetConfigTheme:_recalculateTheme()
	local externalTheme = self:_getExternalTheme()
	local isDark = self:_isDarkerTheme()

	-- Shorthands for getting a color
	local c = Enum.StudioStyleGuideColor
	local m = Enum.StudioStyleGuideModifier

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

				subjectThumbnail = {
					backgroundColor = color(c.TableItem),
					defaultImageColor = isDark and Color3.fromRGB(102, 102, 102) or Color3.fromRGB(151, 151, 151)
				},

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
				}
			}
		},

		versions = {
			thumbnailBorderColor = Color3.fromRGB(117, 117, 117),
			buttonSelectedColor = Color3.fromRGB(0, 162, 255),
			buttonDefaultColor = Color3.fromRGB(117, 117, 117),
			textColor = color(c.MainText),
		},

		previewArea = {
			backgroundColor = isDark and Color3.fromRGB(42, 42, 42) or color(c.MainBackground),
			textColor = color(c.MainText),
			selectedColor = isDark and Colors.WHITE or Colors.BLUE_PRIMARY,
		},

		publishAsset = {
			backgroundColor = isDark and color(c.MainBackground) or Color3.fromRGB(46, 46, 46),
			titleTextColor = color(c.SubText),
			textColor = color(c.MainText),
			tipsTextColor = isDark and Color3.fromRGB(102, 102, 102) or Colors.GRAY_3,
		},

		divider = {
			horizontalLineColor =  isDark and Color3.fromRGB(34, 34, 34) or Color3.fromRGB(227, 227, 227),
			verticalLineColor = isDark and color(c.Border) or color(c.Titlebar)
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
			}
		},

		sideTab = {
			backgroundColor = color(c.MainBackground),
			leftBorderColor = isDark and Colors.BLUE_PRIMARY or color(c.Border),
			tabBackground = color(c.Titlebar),
			contentColor = color(c.TitlebarText),
			-- Remove me when remvoing: FFlagEnablePreviewTabSelection
			selectedColor = isDark and Colors.WHITE or Colors.BLUE_PRIMARY,
			selecteBarColor = isDark and Color3.fromRGB(11, 90, 175) or Colors.GRAY_1,
			selecteBarTrans = isDark and 0 or 0.9,
			selecteBarZindex = isDark and -1 or 0,
			selecteIndicatorColor = Colors.BLUE_PRIMARY,
			selecteIndicatorTrans = isDark and 1 or 0,
			textColor = color(c.MainText),
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

		thumbnailPreview = {
			background = color(c.Item),
			border = color(c.Border),
			text = color(c.MainText),
		},

		typeSelection = {
			background = color(c.TableItem),
			selector = {
				title = color(c.MainText),
				description = color(c.MainText, m.Disabled),
			},
			footer = {
				background = color(c.MainBackground),
				border = color(c.Border),
			},
		},

		loading = {
			text = color(c.MainText),
			backgroundBar = color(c.Midlight),
			bar = color(c.CurrentMarker),
		},

		typeValidation = {
			background = color(c.TableItem),
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

		nav = {
			mainButton = {
				background = color(c.DialogMainButton),
				hoverBackground = color(c.DialogMainButton, m.Hover),
				pressBackground = color(c.DialogMainButton, m.Pressed),
				borderColor = color(c.Border),
				textColor = color(c.DialogMainButtonText),
			},
			button = {
				background = color(c.DialogButton),
				hoverBackground = color(c.DialogButton, m.Hover),
				pressBackground = color(c.DialogButton, m.Pressed),
				borderColor = color(c.Border),
				textColor = color(c.DialogButtonText),
			},
		},

		linkButton = {
			-- Check what to do with the dark theme
			textColor = Color3.fromRGB(0, 162, 255),
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

	-- Need more color for the style
	local styleGuide = {
		backgroundColor = color(c.InputFieldBackground),
		textColor = color(c.MainText),
		subTextColor = color(c.SubText),
		dimmerTextColor = color(c.DimmedText),
		disabledColor = color(c.Tab),
		borderColor = color(c.Border),
		hoverColor = isDark and color(c.MainButton) or color(c.CurrentMarker),
		itemColor = color(c.MainBackground),

		-- Dropdown item
		hoveredItemColor = color(c.Button, m.Hover),
		hoveredTextColor = color(c.ButtonText, m.Hover),

		-- Dropdown button
		selectionColor = color(c.Button, m.Selected),
		selectedTextColor = color(c.ButtonText, m.Selected),
		selectionBorderColor = color(c.ButtonBorder, m.Selected),

		errorColor = color(c.ErrorText),
	}

	local overrides = {
		toggleButton = {
			defaultWidth = 40,
			defaultHeight = 24,

			onImage = isDark and Images.TOGGLE_ON_DARK or Images.TOGGLE_ON_LIGHT,
			offImage = isDark and Images.TOGGLE_OFF_DARK or Images.TOGGLE_OFF_LIGHT,
			disabledImage = isDark and Images.TOGGLE_DISABLE_DARK or Images.TOGGLE_DISABLE_LIGHT,
		},

		detailedDropdown = {
			backgroundColor = color(c.MainBackground),
			borderColor = color(c.DialogButtonBorder),

			hovered = {
				backgroundColor = color(c.Item, m.Hover),
				displayText = color(c.MainText, m.Hover),
				borderColor = color(c.DialogButtonBorder, m.Hover),
			},

			selected = {
				backgroundColor = color(c.Item, m.Selected),
				displayText = color(c.MainText, m.Selected),
			}
		},

		scrollingFrame = {
			scrollbarColor = isDark and Color3.fromRGB(85, 85, 85) or Color3.fromRGB(245, 245, 245),
		},
	}

	self:_updateUILibrary(styleGuide, overrides)
end

function AssetConfigTheme:getUILibraryTheme()
	return self._UILibraryTheme
end

return AssetConfigTheme
