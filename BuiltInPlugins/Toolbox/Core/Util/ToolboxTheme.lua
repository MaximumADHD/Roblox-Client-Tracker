local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Cryo = require(Packages.Cryo)

local Util = Plugin.Core.Util
local Colors = require(Util.Colors)
local createSignal = require(Util.createSignal)
local wrapStrictTable = require(Util.wrapStrictTable)
local Images = require(Util.Images)
local Constants = require(Util.Constants)
local TestHelpers = require(Util.Test.TestHelpers)

local ToolboxTheme = {}
ToolboxTheme.__index = ToolboxTheme

function ToolboxTheme.createDummyThemeManager()
	-- Fake the studio theme impl
	return ToolboxTheme.new({
		getTheme = {
			GetColor = function()
				return Color3.new(math.random(), math.random(), math.random())
			end,
		},
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
function ToolboxTheme.new(options)
	local self = {
		_externalThemeGetter = options.getTheme or nil,
		_isDarkThemeGetter = options.isDarkerTheme or false,
		_externalThemeChangedSignal = options.themeChanged or nil,

		_studioStyleGuideColor = options.studioStyleGuideColor or Enum.StudioStyleGuideColor,
		_studioStyleGuideModifier = options.studioStyleGuideModifier or Enum.StudioStyleGuideModifier,

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
		self._externalThemeChangedConnection = nil
	end
end

function ToolboxTheme:_update(changedValues)
	self._values = (Cryo.Dictionary.join)(self._values, changedValues)
	self.values = wrapStrictTable(self._values, "theme")
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
	local c = self._studioStyleGuideColor
	local m = self._studioStyleGuideModifier

	local function color(...)
		return externalTheme:GetColor(...)
	end

	self:_update({
		isDarkerTheme = isDark,

		linkButton = {
			textColor = Color3.fromRGB(0, 162, 255),
		},

		toolbox = {
			backgroundColor = color(c.MainBackground),
		},

		-- stolen from AssetConfigTheme
		loading = {
			text = color(c.MainText),
			backgroundBar = color(c.Midlight),
			bar = color(c.CurrentMarker),
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
			icon = {
				-- TODO CLIDEVSRVS-1690: Don't show border in lighter theme. Put that into theme object, rather than asset icon?
				borderColor = color(c.Item, m.Hover),
			},

			progressBarColor = Colors.BLUE_PRIMARY,
		},

		infoBanner = {
			backgroundColor = color(c.Titlebar),
			textColor = color(c.SubText),
		},

		tooltip = {
			backgroundColor = color(c.MainBackground),
			borderColor = color(c.Border),
			textColor = color(c.MainText),
		},

		sortComponent = {
			labelTextColor = color(c.MainText),
		},

		radioButton = {
			textColor = color(c.MainText),
			background = color(c.InputFieldBackground),
		},
	})
end

return ToolboxTheme
