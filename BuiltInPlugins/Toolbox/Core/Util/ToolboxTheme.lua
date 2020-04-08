local FFlagEnableToolboxAssetNameColorChange = game:GetFastFlag("EnableToolboxAssetNameColorChange")
local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Cryo = require(Libs.Cryo)

local UILibrary = require(Libs.UILibrary)
local createTheme = UILibrary.createTheme
local StudioStyle = UILibrary.Studio.Style

local Util = Plugin.Core.Util
local Colors = require(Util.Colors)
local createSignal = require(Util.createSignal)
local wrapStrictTable = require(Util.wrapStrictTable)
local Images = require(Util.Images)
local Constants = require(Util.Constants)

local ToolboxTheme = {}
ToolboxTheme.__index = ToolboxTheme

function ToolboxTheme.createDummyThemeManager()
	-- Fake the studio theme impl
	return ToolboxTheme.new({
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
function ToolboxTheme.new(options)
	local self = {
		_externalThemeGetter = options.getTheme or nil,
		_isDarkThemeGetter = options.isDarkerTheme or false,
		_externalThemeChangedSignal = options.themeChanged or nil,

		_externalThemeChangedConnection = nil,

		_values = {},
		-- So we don't mix up Toolbox theme and UILibrary theme
		_UILibraryTheme = {},

		_signal = createSignal(),
	}

	self.values = wrapStrictTable(self._values, "theme")

	setmetatable(self, ToolboxTheme)

	if self._externalThemeChangedSignal then
		self._externalThemeChangedConnection = self._externalThemeChangedSignal:Connect(function()
			self:_recalculateTheme()
		end)
	end
	self:_recalculateTheme()

	return self
end

function ToolboxTheme:subscribe(...)
	return self._signal:subscribe(...)
end

function ToolboxTheme:destroy()
	if self._externalThemeChangedConnection then
		self._externalThemeChangedConnection:Disconnect()
	end
end

function ToolboxTheme:_update(changedValues)
	self._values = (Cryo.Dictionary.join)(self._values,
		changedValues)
	self.values = wrapStrictTable(self._values, "theme")
	self._signal:fire(self.values, self._UILibraryTheme)
end

function ToolboxTheme:_updateUILibrary(style, overrides)
	self._UILibraryTheme = createTheme(style, overrides)
	self._signal:fire(self.values, self._UILibraryTheme)
end

function ToolboxTheme:_getExternalTheme()
	local getter = self._externalThemeGetter

	if type(getter) == "function" then
		return getter()
	end

	return getter
end

function ToolboxTheme:_isDarkerTheme()
	local getter = self._isDarkThemeGetter

	if type(getter) == "function" then
		return getter(self:_getExternalTheme())
	end

	return getter and true or false
end

function ToolboxTheme:_recalculateTheme()
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

		toolbox = {
			backgroundColor = color(c.MainBackground),
		},

		header = {
			backgroundColor = color(c.Titlebar),
			borderColor = color(c.Border),
		},

		-- stolen from AssetConfigTheme
		loading = {
			text = color(c.MainText),
			backgroundBar = color(c.Midlight),
			bar = color(c.CurrentMarker),
		},

		dropdownMenu = {
			currentSelection = {
				backgroundColor = color(c.Dropdown),
				backgroundSelectedColor = color(c.CurrentMarker),
				borderColor = color(c.Border),
				borderSelectedColor = color(c.CurrentMarker),
				textColor = color(c.MainText),
				textSelectedColor = color(c.MainText, m.Selected),

				-- TODO CLIDEVSRVS-1690: Icon colour
				iconColor = isDark and Color3.fromRGB(242, 242, 242) or Color3.fromRGB(25, 25, 25),
				iconSelectedColor = Color3.fromRGB(255, 255, 255),
			},

			item = {
				backgroundColor = color(c.Item),

				-- TODO CLIDEVSRVS-1690: Item background colour
				-- backgroundSelectedColor = isDark and Color3.fromRGB(11, 90, 175) or Color3.fromRGB(242, 242, 242),
				backgroundSelectedColor = isDark and color(c.Item, m.Selected) or color(c.Tab),

				selectedBarColor = color(c.CurrentMarker),
				textColor = color(c.MainText),
				labelTextColor = color(c.DimmedText),
			},

			dropdownFrame = {
				borderColor = color(c.Border),
			},
		},

		searchBar = {
			backgroundColor = color(c.Dropdown),
			liveBackgroundColor = color(c.InputFieldBackground),
			borderColor = color(c.Border),
			borderHoveredColor = color(c.CurrentMarker),
			borderSelectedColor = Colors.BLUE_PRIMARY,
			textColor = color(c.MainText),
			placeholderTextColor = color(c.DimmedText),
			divideLineColor = color(c.Border),

			-- TODO CLIDEVSRVS-1690: Search bar button colours
			searchButton = {
				imageColor = Color3.fromRGB(184, 184, 184),
				imageSelectedColor = Color3.fromRGB(0, 162, 255),
			},

			clearButton = {
				imageColor = Color3.fromRGB(184, 184, 184),
				imageSelectedColor = Color3.fromRGB(0, 162, 255),
			},
		},

		asset = {
			outline = {
				backgroundColor = color(c.MainBackground),
				borderColor = color(c.Border),
			},

			icon = {
				-- TODO CLIDEVSRVS-1690: Don't show border in lighter theme. Put that into theme object, rather than asset icon?
				borderColor = color(c.Item, m.Hover),
			},

			assetName = {
				textColor = FFlagEnableToolboxAssetNameColorChange and color(c.MainText) or color(c.LinkText),
			},

			status = {
				textColor = color(c.MainText),
			},

			creatorName = {
				textColor = color(c.SubText),
			},

			voting = {
				textColor = color(c.SubText),

				upVotes = Color3.fromRGB(82, 168, 70),
				downVotes = Color3.fromRGB(206, 100, 91),

				votedUpThumb = Color3.fromRGB(0, 178, 89),
				votedDownThumb = Color3.fromRGB(216, 104, 104),
				voteThumb = Color3.fromRGB(117, 117, 117),
			},

			assetIcon = {
				buttonColor = isDark and Color3.fromRGB(178, 178, 178) or color(c.SubText),
			},

			progressBarColor = Colors.BLUE_PRIMARY,
		},

		infoBanner = {
			backgroundColor = color(c.Titlebar),
			textColor = color(c.SubText),
		},

		loadingIndicator = {
			baseColor = isDark and Color3.fromRGB(56, 56, 56) or Color3.fromRGB(184, 184, 184),
			endColor = isDark and Color3.fromRGB(11, 90, 175) or Color3.fromRGB(0, 162, 255),
		},

		footer = {
			backgroundColor = color(c.Titlebar),
			borderColor = color(c.Border),
			labelTextColor = color(c.MainText),

			button = {
				textColor = color(c.MainText),
				textSelectedColor = color(c.MainText, m.Selected),
				backgroundColor = color(c.Dropdown),
				backgroundSelectedColor = color(c.CurrentMarker),
				borderColor = color(c.Border),
				borderSelectedColor = color(c.CurrentMarker),
			},
		},

		tooltip = {
			backgroundColor = color(c.MainBackground),
			borderColor = color(c.Border),
			textColor = color(c.MainText),
		},

		scrollingFrame = {
			-- TODO CLIDEVSRVS-1690: Scrollbar colour.
			-- Using semantic names means background too dark in light theme and bar invisible to see in dark theme.
			scrollbarBackgroundColor = isDark and Color3.fromRGB(41, 41, 41) or Color3.fromRGB(245, 245, 245),
			scrollbarImageColor = isDark and Color3.fromRGB(85, 85, 85) or Color3.fromRGB(245, 245, 245),
		},

		sortComponent = {
			labelTextColor = color(c.MainText),
		},

		suggestionsComponent = {
			labelTextColor = color(c.MainText),
			textColor = color(c.SubText),
			textHoveredColor = color(c.LinkText),
			underlineColor = color(c.LinkText),
		},

		-- TODO: Look at adding this to flag off case
		-- In case improvements flag is on but themes get turned off
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

		searchTag = {
			backgroundColor = isDark and color(c.ScrollBar) or color(c.GameSettingsTableItem),
			borderColor = color(c.Border),
			textColor = color(c.MainText),
			clearAllText = color(c.LinkText),
		},

		assetPreview = {
			background = isDark and Color3.fromRGB(46, 46, 46) or Color3.fromRGB(255, 255, 255),

			popUpWrapperButton = {
				-- The same?
				detectorBGTrans = isDark and 0.25 or 0.25,
				detectorBackground = isDark and Color3.fromRGB(0, 0, 0) or Color3.fromRGB(0, 0, 0),
			},

			assetName = {
				textColor = color(c.MainText)
			},

			robuxImageText = {
			},

			modelPreview = {
				background = isDark and Color3.fromRGB(37, 37, 37) or Color3.fromRGB(227, 227, 227)
			},

			imagePreview = {
				background = isDark and Color3.fromRGB(37, 37, 37) or Color3.fromRGB(227, 227, 227),
				textColor = color(c.MainText)
			},

			soundPreview = {
				background = isDark and Color3.fromRGB(37, 37, 37) or Color3.fromRGB(227, 227, 227),
				textColor = color(c.MainText)
			},

			otherPreview = {
				background = isDark and Color3.fromRGB(37, 37, 37) or Color3.fromRGB(227, 227, 227),
				textColor = color(c.MainText)
			},

			treeView = {
				background = isDark and color(c.ScrollBarBackground) or color(c.TabBar),
				textColor = color(c.MainText),
				arrowColor = Color3.fromRGB(140, 140, 140),
				hover = color(c.Item, m.Hover),
				selected = color(c.Item, m.Selected),
				selectedText = Color3.fromRGB(255, 255, 255),
			},

			detailedDescription = {
				textColor = color(c.MainText)
			},

			vote = {
				backgroundTrans = isDark and 0.9 or 0.9,
				background = isDark and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(0, 0, 0),
				bgBoderColor = isDark and Color3.fromRGB(67, 67, 67) or Color3.fromRGB(229, 229, 229),
				textColor = color(c.MainText),
				subTextColor = color(c.SubText),

				buttonBGColor = isDark and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(178, 178, 178),
				buttonBGTrans = isDark and 0.7 or 0,
				voteUpBGColor = isDark and Color3.fromRGB(0, 100, 0) or Color3.fromRGB(0, 100, 0),
				voteUpBGBorderColor = isDark and Color3.fromRGB(124, 124, 124) or Color3.fromRGB(178, 178, 178),
				voteDownBGColor = isDark and Color3.fromRGB(100, 0, 0) or Color3.fromRGB(100, 0, 0),
				voteDownBGBorderColor = isDark and Color3.fromRGB(124, 124, 124) or Color3.fromRGB(178, 178, 178),
				voteDisabledBGColor = isDark and Color3.fromRGB(10, 10, 10) or Color3.fromRGB(10, 10, 10),
			},

			descriptions = {
				background = color(c.MainBackground),
				leftTextColor = isDark and Color3.fromRGB(170, 170, 170) or Color3.fromRGB(117, 117, 117),
				rightTextColor = isDark and Color3.fromRGB(204, 204, 204) or color(c.MainText),
				lineColor = isDark and Color3.fromRGB(34, 34, 34) or Color3.fromRGB(227, 227, 227),
			},

			actionBar = {
				background = isDark and Color3.fromRGB(46,46,46) or Color3.fromRGB(255,255,255),
				buttonBG = Colors.BLUE_PRIMARY,
				buttonBGDisabled = isDark and Colors.BUTTON_CTA_BG_DISABLED_DARK or Colors.BLUE_DISABLED,

				showMoreBGColor = isDark and Color3.fromRGB(109, 109, 109) or Color3.fromRGB(168,168,168),
				showMoreBorderColor = isDark and Color3.fromRGB(109, 109, 109) or Color3.fromRGB(207, 207, 207),

				textColor = Colors.WHITE,
				textColorDisabled = isDark and Colors.DARK_DIMMER_TEXT_COLOR or Colors.WHITE,
			},

			previewButtons = {
				backgroundTrans = isDark and 0.25 or 0.25,
				backgroundColor = isDark and Color3.fromRGB(102, 102, 102) or Color3.fromRGB(158, 158, 158),
				backgroundDisabledColor = isDark and Color3.fromRGB(50, 50, 50) or Color3.fromRGB(100, 100, 100),
			}
		},

		searchOptions = {
			background = color(c.MainBackground),
			headerTextColor = color(c.MainText),
			imageColor = Colors.GRAY_2,
			imageSelectedColor = Colors.BLUE_PRIMARY,
			border = color(c.Border),
			separator = isDark and color(c.Border) or Color3.fromRGB(213, 213, 213),

			audioSearch = {
				textColor = color(c.MainText),
			},

			timeTextBox = {
				borderColor = color(c.Border),
				backgroundColor = color(c.InputFieldBackground),
				selectedBorderColor = Colors.BLUE_PRIMARY,
				textColor = color(c.MainText),
				placeholderTextColor = color(c.DimmedText),
			},

			applyButton = {
				textColor = Colors.WHITE,
				backgroundColor = Colors.BLUE_PRIMARY,
				borderColor = color(c.MainBackground),
			},

			cancelButton = {
				textColor = color(c.MainText),
				backgroundColor = color(c.Button),
				borderColor = color(c.Border),
			},
		},

		radioButton = {
			textColor = color(c.MainText),
			background = color(c.InputFieldBackground),
		},

		tabSet = {
			backgroundColor = color(c.MainBackground),
			borderColor = color(c.Border),
			topBorderColor = isDark and Colors.BLUE_PRIMARY or color(c.Border),
			tabBackground = color(c.Titlebar),
			contentColor = color(c.TitlebarText),
			selectedColor = isDark and Colors.WHITE or Colors.BLUE_PRIMARY,
		},

		purchaseDialog = {
			promptText = color(c.MainText),
			balanceText = color(c.DimmedText),
		},
	})

	-- Need more color for the style
	local styleGuide = Cryo.Dictionary.join(StudioStyle.new(color, c, m), {
		font = Enum.Font.SourceSans,

		backgroundColor = color(c.InputFieldBackground),
		liveBackgroundColor = color(c.InputFieldBackground),
		textColor = color(c.MainText),
		subTextColor = color(c.SubText),
		dimmerTextColor = color(c.DimmedText),
		disabledColor = color(c.Tab),
		borderColor = color(c.Border),
		hoverColor = isDark and color(c.MainButton) or color(c.CurrentMarker),

		-- Dropdown item
		hoveredItemColor = color(c.Button, m.Hover),
		hoveredTextColor = color(c.ButtonText, m.Hover),

		-- Dropdown button
		selectionColor = color(c.Button, m.Selected),
		selectedTextColor = color(c.ButtonText, m.Selected),
		selectionBorderColor = color(c.ButtonBorder, m.Selected),

		errorColor = color(c.ErrorText),
	})

	local overrides = {
		assetPreview = {
			fontBold = Enum.Font.GothamBold,
			textSizeMedium = 16,
			textSizeLarge = 18,
			backgroundColor = isDark and Color3.fromRGB(46, 46, 46) or Color3.fromRGB(255, 255, 255),

			modelPreview = {
				background = isDark and Color3.fromRGB(37, 37, 37) or Color3.fromRGB(227, 227, 227)
			},

			imagePreview = {
				background = isDark and Color3.fromRGB(37, 37, 37) or Color3.fromRGB(227, 227, 227),
				textColor = color(c.MainText)
			},

			thumbnailIconPreview = {
				background = isDark and Color3.fromRGB(37, 37, 37) or Color3.fromRGB(227, 227, 227),
				textColor = color(c.MainText),
			},

			previewButtons = {
				backgroundTrans = isDark and 0.25 or 0.25,
				backgroundColor = isDark and Color3.fromRGB(102, 102, 102) or Color3.fromRGB(158, 158, 158),
				backgroundDisabledColor = isDark and Color3.fromRGB(50, 50, 50) or Color3.fromRGB(100, 100, 100),
			},

			vote = {
				background = isDark and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(0, 0, 0),
				boderColor = isDark and Color3.fromRGB(67, 67, 67) or Color3.fromRGB(229, 229, 229),

				button = {
					backgroundColor = isDark and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(178, 178, 178),
					backgroundTrans = isDark and 0.7 or 0,
				},

				voteUp = {
					borderColor = isDark and Color3.fromRGB(124, 124, 124) or Color3.fromRGB(178, 178, 178),
				},

				voteDown = {
					borderColor = isDark and Color3.fromRGB(124, 124, 124) or Color3.fromRGB(178, 178, 178),
				},
			},

			treeViewButton = {
				backgroundColor = isDark and Color3.fromRGB(102, 102, 102) or Color3.fromRGB(158, 158, 158),
				backgroundDisabledColor = isDark and Color3.fromRGB(50, 50, 50) or Color3.fromRGB(100, 100, 100),
			},

			actionBar = {
				background = isDark and Color3.fromRGB(46,46,46) or Color3.fromRGB(255,255,255),

				button = {
					backgroundColor = Colors.BLUE_PRIMARY,
					backgroundDisabledColor = isDark and Colors.BUTTON_CTA_BG_DISABLED_DARK or Colors.BLUE_DISABLED,
				},

				showMore = {
					backgroundColor = isDark and Color3.fromRGB(109, 109, 109) or Color3.fromRGB(168,168,168),
					borderColor = isDark and Color3.fromRGB(109, 109, 109) or Color3.fromRGB(207, 207, 207),
				},

				text = {
					color = Colors.WHITE,
					colorDisabled = isDark and Colors.DARK_DIMMER_TEXT_COLOR or Colors.WHITE,
				},

				padding = 12,
				centerPadding = 10,

				robuxSize = UDim2.fromOffset(16,16),

				images = {
					showMore = "rbxasset://textures/StudioToolbox/AssetPreview/more.png",
					robuxSmall = "rbxasset://textures/ui/common/robux_small.png",
					colorWhite = Color3.fromRGB(255, 255, 255),
				}
			},

			description = {
				background = color(c.MainBackground),
				leftTextColor = isDark and Color3.fromRGB(170, 170, 170) or Color3.fromRGB(117, 117, 117),
				rightTextColor = isDark and Color3.fromRGB(204, 204, 204) or color(c.MainText),
				lineColor = isDark and Color3.fromRGB(34, 34, 34) or Color3.fromRGB(227, 227, 227),
			},

			audioPreview = {
				background = color(c.MainBackground),
				textColor = styleGuide.textColor,
				button_Color = isDark and Color3.fromRGB(204, 204, 204) or Color3.fromRGB(117, 117, 117),
				audioPlay_BG_Color = isDark and Color3.fromRGB(102, 102, 102) or Color3.fromRGB(204, 204, 204),
				progressBar_BG_Color = isDark and Color3.fromRGB(37, 37, 37) or Color3.fromRGB(219, 219, 219),
			},
		},

		loadingBar = {
			text = color(c.MainText),
			bar = {
				foregroundColor = color(c.CurrentMarker),
				backgroundColor = color(c.Midlight),
			},
		},

		instanceTreeView = {
			background = isDark and color(c.ScrollBarBackground) or color(c.TabBar),
			arrowColor = Color3.fromRGB(140, 140, 140),
			selectedText = Color3.fromRGB(255, 255, 255),
			hover = color(c.Item, m.Hover),
			selected = color(c.Item, m.Selected),
		},

		toggleButton = {
			defaultWidth = 40,
			defaultHeight = 24,

			onImage = isDark and Images.TOGGLE_ON_DARK or Images.TOGGLE_ON_LIGHT,
			offImage = isDark and Images.TOGGLE_OFF_DARK or Images.TOGGLE_OFF_LIGHT,
			disabledImage = isDark and Images.TOGGLE_DISABLE_DARK or Images.TOGGLE_DISABLE_LIGHT,
		},

		dialog = {
			background = color(c.MainBackground),
		},

		button = {
			Default = {
				backgroundColor = color(c.Button),
			},
		},

		tooltip = {
			textSize = Constants.FONT_SIZE_SMALL,
		},

		searchBar = {
			backgroundColor = color(c.Dropdown),
			border = {
				selected = {
					color = Colors.BLUE_PRIMARY,
				},
			},
		},
	}

	self:_updateUILibrary(styleGuide, overrides)
end

function ToolboxTheme:getUILibraryTheme()
	return self._UILibraryTheme
end

return ToolboxTheme
