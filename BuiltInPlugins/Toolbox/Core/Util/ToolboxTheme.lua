local Plugin = script.Parent.Parent.Parent

local Colors = require(Plugin.Core.Util.Colors)
local createSignal = require(Plugin.Core.Util.createSignal)
local Immutable = require(Plugin.Core.Util.Immutable)
local wrapStrictTable = require(Plugin.Core.Util.wrapStrictTable)

local ToolboxTheme = {}

function ToolboxTheme.enableLuaApisForTheme()
	return settings():GetFFlag("StudioEnableLuaAPIsForThemes")
end

function ToolboxTheme.createDummyThemeManager()
	if ToolboxTheme.enableLuaApisForTheme() then
		-- Fake the studio theme impl
		return ToolboxTheme.new({
			getTheme = {
				GetColor = function()
					return Color3.fromRGB(0, 0, 0)
				end,
			},
		})
	else
		return ToolboxTheme.new({
			getTheme = Enum.UITheme.Light,
		})
	end
end

function ToolboxTheme.new(options)
	local self = {
		_externalThemeGetter = options.getTheme or nil,
		_isDarkThemeGetter = options.isDarkerTheme or false,
		_externalThemeChangedSignal = options.themeChanged or nil,

		_externalThemeChangedConnection = nil,

		_values = {},

		_signal = createSignal(),
	}

	self.values = wrapStrictTable(self._values, "theme")

	setmetatable(self, {
		__index = ToolboxTheme
	})

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
	self._values = Immutable.JoinDictionaries(self._values, changedValues)
	self.values = wrapStrictTable(self._values, "theme")
	self._signal:fire(self.values)
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
		return getter()
	end

	return getter and true or false
end

function ToolboxTheme:_recalculateTheme()
	local externalTheme = self:_getExternalTheme()
	local isDark = self:_isDarkerTheme()

	if self.enableLuaApisForTheme() then
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
				},

				dropdownFrame = {
					borderColor = color(c.Border),
				},
			},

			searchBar = {
				backgroundColor = color(c.Dropdown),
				borderColor = color(c.Border),
				borderSelectedColor = color(c.CurrentMarker),
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
					textColor = color(c.LinkText),
				},

				creatorName = {
					textColor = color(c.SubText),
				},

				voting = {
					textColor = color(c.SubText),

					upVotes = Color3.fromRGB(82, 168, 70),
					downVotes = Color3.fromRGB(206, 100, 91),

					-- TODO CLIDEVSRVS-1690: The buttons should use ImageColor3 instead of multiple images
				},
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
		})
	else
		self:_update({
			isDarkerTheme = isDark,

			toolbox = {
				backgroundColor = isDark and Colors.DARK_MAIN_SECTION_COLOR or Colors.WHITE,
			},

			header = {
				backgroundColor = isDark and Colors.DARK_MAIN_SECTION_COLOR or Colors.HEADER_BACKGROUND_COLOR,
				borderColor = isDark and Colors.DARK_BORDER_COLOR or Colors.HEADER_BORDER_COLOR,
			},

			dropdownMenu = {
				currentSelection = {
					backgroundColor = isDark and Colors.DARK_BACKGROUND_COLOR or Colors.WHITE,
					backgroundSelectedColor = isDark and Colors.DARK_BACKGROUND_COLOR or Colors.BLUE_PRIMARY,
					borderColor  = isDark and Colors.DARK_GREY_BUTTON_DEFAULT_COLOR  or Colors.GRAY_3,
					borderSelectedColor = isDark and Colors.DARK_GREY_BUTTON_DEFAULT_COLOR or Colors.BLUE_PRIMARY,
					textColor  = isDark and Colors.DARK_TITLE_COLOR or Colors.GRAY_1,
					textSelectedColor = isDark and Colors.DARK_MAIN_TEXT_COLOR or Colors.WHITE,
					iconColor = isDark and Colors.GRAY_5 or Colors.GRAY_1,
					iconSelectedColor = isDark and Colors.WHITE or Colors.WHITE,
				},

				item = {
					backgroundColor = isDark and Colors.DARK_BORDER_COLOR or Colors.WHITE,
					backgroundSelectedColor = isDark and Colors.DARK_WIDGET_SELECTED_COLOR or Colors.GRAY_5,
					selectedBarColor = Colors.BLUE_PRIMARY,
					textColor = isDark and Colors.DARK_MAIN_TEXT_COLOR or Colors.GRAY_1,
				},

				dropdownFrame = {
					borderColor = isDark and Colors.DARK_BORDER_COLOR or Colors.GRAY_3,
				},
			},

			searchBar = {
				backgroundColor = isDark and Colors.DARK_RIBBON_BAR_ICON_HOVER_COLOR or Colors.WHITE,
				borderColor = isDark and Colors.DARK_BORDER_COLOR or Colors.GRAY_3,
				borderSelectedColor = isDark and Colors.DARK_WIDGET_SELECTED_COLOR or Colors.BLUE_PRIMARY,
				textColor = isDark and Colors.DARK_MAIN_TEXT_COLOR or Colors.GRAY_1,
				placeholderTextColor = isDark and Colors.DARK_DIMMER_TEXT_COLOR or Colors.GRAY_3,
				divideLineColor = isDark and Colors.DARK_BORDER_COLOR or Colors.GRAY_3,

				searchButton = {
					imageColor = Colors.GRAY_3,
					imageSelectedColor = Colors.BLUE_PRIMARY,
				},

				clearButton = {
					imageColor = Colors.GRAY_3,
					imageSelectedColor = Colors.BLUE_PRIMARY,
				},
			},

			asset = {
				outline = {
					backgroundColor = isDark and Colors.DARK_MAIN_SECTION_COLOR or Colors.WHITE,
					borderColor = isDark and Colors.DARK_BORDER_COLOR or Colors.GRAY_3,
				},

				icon = {
					borderColor = isDark and Colors.DARK_WIDGET_HOVER_COLOR or Colors.WHITE,
				},

				creatorName = {
					textColor = isDark and Colors.DARK_TITLE_COLOR or Colors.GRAY_2,
				},

				assetName = {
					textColor = isDark and Colors.DARK_TITLE_COLOR or Colors.LIGHT_ASSETNAME_TEXT_COLOR,
				},

				voting = {
					textColor = isDark and Colors.DARK_DIMMER_TEXT_COLOR  or Colors.GRAY_2,

					upVotes = Colors.VOTING_GREEN,
					downVotes = Colors.VOTING_RED,
				},
			},

			infoBanner = {
				backgroundColor = isDark and Colors.DARK_SCROLL_BAR_COLOR or Colors.GRAY_3,
				textColor = isDark and Colors.DARK_TITLE_COLOR or Colors.GRAY_2,
			},

			loadingIndicator = {
				baseColor = isDark and Colors.DARK_SCROLL_BAR_COLOR or Colors.GRAY_3,
				endColor = isDark and Colors.DARK_WIDGET_SELECTED_COLOR or Colors.BLUE_PRIMARY,
			},

			footer = {
				backgroundColor = isDark and Colors.DARK_MAIN_SECTION_COLOR or Colors.FOOTER_BACKGROUND_COLOR,
				borderColor = isDark and Colors.DARK_BORDER_COLOR or Colors.FOOTER_BORDER_COLOR,
				labelTextColor = isDark and Colors.DARK_MAIN_TEXT_COLOR or Colors.GRAY_1,

				button = {
					textColor = isDark and Colors.DARK_MAIN_TEXT_COLOR or Colors.GRAY_1,
					textSelectedColor = isDark and Colors.DARK_TITLE_COLOR or Colors.WHITE,
					backgroundColor = isDark and Colors.DARK_BACKGROUND_COLOR or Colors.WHITE,
					backgroundSelectedColor = isDark and Colors.DARK_BACKGROUND_COLOR or Colors.BLUE_PRIMARY,
					borderColor = isDark and Colors.DARK_GREY_BUTTON_DEFAULT_COLOR  or Colors.GRAY_3,
					borderSelectedColor = Colors.BLUE_PRIMARY,
				},
			},

			tooltip = {
				backgroundColor = isDark and Colors.DARK_MAIN_SECTION_COLOR or Colors.WHITE,
				borderColor = isDark and Colors.DARK_MAIN_SECTION_COLOR or Colors.GRAY_5,
				textColor = isDark and Colors.DARK_MAIN_TEXT_COLOR or Colors.BLACK,
				shadow = {
					imageColor = isDark and Colors.DARK_BORDER_COLOR or Colors.WHITE,
					borderColor = isDark and Colors.DARK_MAIN_SECTION_COLOR or Colors.DARK_MAIN_SECTION_COLOR,
					backgroundColor = isDark and Colors.DARK_MAIN_SECTION_COLOR or Colors.WHITE,
				},
			},

			scrollingFrame = {
				scrollbarBackgroundColor = isDark and Colors.DARK_SCROLL_BAR_BACKGROUND_COLOR or Colors.GRAY_6,
				scrollbarImageColor = isDark and Colors.DARK_DISABLED_TEXT_COLOR or Colors.GRAY_6,
			},

			sortComponent = {
				labelTextColor = isDark and Colors.DARK_MAIN_TEXT_COLOR or Colors.GRAY_1,
			},

			suggestionsComponent = {
				labelTextColor = isDark and Colors.DARK_MAIN_TEXT_COLOR or Colors.GRAY_1,
				textColor = Colors.GRAY_2,
				textHoveredColor = Colors.BLUE_PRIMARY,
				underlineColor = Colors.BLUE_PRIMARY,
			},
		})
	end
end

return ToolboxTheme
