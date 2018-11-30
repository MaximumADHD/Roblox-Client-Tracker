if not plugin or not settings():GetFFlag("StudioLuaWidgetToolbox") then
	return
end

local Plugin = script.Parent.Parent
local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local Rodux = require(Libs.Rodux)

local Analytics = require(Plugin.Core.Util.Analytics.Analytics)
local Constants = require(Plugin.Core.Util.Constants)
local DebugFlags = require(Plugin.Core.Util.DebugFlags)
local Images = require(Plugin.Core.Util.Images)
local Settings = require(Plugin.Core.Util.Settings)
local ToolboxTheme = require(Plugin.Core.Util.ToolboxTheme)
local Localization = require(Plugin.Core.Util.Localization)

local Background = require(Plugin.Core.Types.Background)
local Suggestion = require(Plugin.Core.Types.Suggestion)

local ExternalServicesWrapper = require(Plugin.Core.Components.ExternalServicesWrapper)
local Toolbox = require(Plugin.Core.Components.Toolbox)
local ToolboxPlugin = require(Plugin.Core.Components.ToolboxPlugin)

local ToolboxReducer = require(Plugin.Core.Reducers.ToolboxReducer)

local NetworkInterface = require(Plugin.Core.Networking.NetworkInterface)

local LocalizationService = game:GetService("LocalizationService")

local FFlagStudioLuaWidgetToolboxV2 = settings():GetFFlag("StudioLuaWidgetToolboxV2")

if DebugFlags.shouldRunTests() then
	local Tests = Plugin.Core
	local RunToolboxTests = require(Plugin.Core.RunToolboxTests)
	RunToolboxTests(Tests)
end

local function createTheme()
	if ToolboxTheme.enableLuaApisForTheme() then
		return ToolboxTheme.new({
			getTheme = function()
				return settings().Studio.Theme
			end,
			isDarkerTheme = function(theme)
				-- Assume "darker" theme if the average main background colour is darker
				local mainColour = theme:GetColor(Enum.StudioStyleGuideColor.MainBackground)
				return (mainColour.r + mainColour.g + mainColour.b) / 3 < 0.5
			end,
			themeChanged = settings().Studio.ThemeChanged,
		})
	else
		return ToolboxTheme.new({
			getTheme = function()
				return settings().Studio["UI Theme"]
			end,
			isDarkerTheme = function()
				return settings().Studio["UI Theme"] == Enum.UITheme.Dark
			end,
			themeChanged = settings().Studio:GetPropertyChangedSignal("UI Theme")
		})
	end
end

local function createLocalization()
	local localizationTable = Plugin.LocalizationSource.ToolboxTranslationReferenceTable

	-- Check if we should use a fake locale
	if DebugFlags.shouldUseTestCustomLocale() then
		print("Toolbox using test custom locale")
		return Localization.createTestCustomLocaleLocalization(DebugFlags.getOrCreateTestCustomLocale())
	end

	if DebugFlags.shouldUseTestRealLocale() then
		print("Toolbox using test real locale")
		return Localization.createTestRealLocaleLocalization(localizationTable, DebugFlags.getOrCreateTestRealLocale())
	end

	-- Either "RobloxLocaleId" or "SystemLocaleId"
	local localePropToUse = "RobloxLocaleId"

	return Localization.new({
		getLocaleId = function()
			return LocalizationService[localePropToUse]
		end,
		getTranslator = function(localeId)
			return localizationTable:GetTranslator(localeId)
		end,
		localeIdChanged = LocalizationService:GetPropertyChangedSignal(localePropToUse)
	})
end

local function deprecatedCreateToolbox(pluginGui, localization)
	local store = Rodux.Store.new(ToolboxReducer, nil, {
		Rodux.thunkMiddleware
	})
	local settings = Settings.new(plugin)
	local theme = createTheme()
	local networkInterface = NetworkInterface.new()

	local props = {
		initialWidth = pluginGui and pluginGui.AbsoluteSize.x or Constants.TOOLBOX_MIN_WIDTH,
		backgrounds = Background.BACKGROUNDS,
		suggestions = Suggestion.SUGGESTIONS,
	}

	return Roact.createElement(ExternalServicesWrapper, {
		store = store,
		plugin = plugin,
		pluginGui = pluginGui,
		settings = settings,
		theme = theme,
		networkInterface = networkInterface,
		localization = localization,
	}, {
		Toolbox = Roact.createElement(Toolbox, props)
	})
end

local function deprecatedMain()
	local toolbar = plugin:CreateToolbar("luaToolboxToolbar")
	local toolboxButton = toolbar:CreateButton("luaToolboxButton", "Insert items from the toolbox", Images.TOOLBOX_ICON)

	local localization = createLocalization()

	local dockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo.new(
		Enum.InitialDockState.Left,  -- InitialDockState
		true,                        -- InitEnabled
		false,                       -- InitialEnabledShouldOverrideRestore
		0, 0,                        -- FloatingXSize, FloatingYSize
		Constants.TOOLBOX_MIN_WIDTH, -- MinWidth
		Constants.TOOLBOX_MIN_HEIGHT -- MinHeight
	)
	local pluginGui = plugin:CreateDockWidgetPluginGui("Toolbox", dockWidgetPluginGuiInfo)
	pluginGui.Name = "Toolbox"
	pluginGui.Title = localization:getLocalizedContent().ToolboxToolbarName
	pluginGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	toolboxButton.Click:connect(function()
		pluginGui.Enabled = not pluginGui.Enabled
	end)

	toolboxButton:SetActive(pluginGui.Enabled)

	pluginGui:GetPropertyChangedSignal("Enabled"):connect(function()
		toolboxButton:SetActive(pluginGui.Enabled)
	end)

	local toolboxComponent = deprecatedCreateToolbox(pluginGui, localization)

	local toolboxHandle = Roact.mount(toolboxComponent, pluginGui, "Toolbox")

	-- Unmount the toolbox when the plugin gui is being destroyed
	pluginGui.AncestryChanged:connect(function(child, parent)
		if parent == nil and toolboxHandle then
			Analytics.sendReports(plugin)

			Roact.unmount(toolboxHandle)
		end
	end)
end

local function main()
	local store = Rodux.Store.new(ToolboxReducer, nil, {
		Rodux.thunkMiddleware
	})

	local settings = Settings.new(plugin)
	local theme = createTheme()
	local networkInterface = NetworkInterface.new()
	local localization = createLocalization()

	local backgrounds = Background.BACKGROUNDS
	local suggestions = Suggestion.SUGGESTIONS

	local toolboxHandle

	local function onPluginWillDestroy()
		if toolboxHandle then
			Analytics.sendReports(plugin)
			Roact.unmount(toolboxHandle)
		end
	end

	local toolboxComponent = Roact.createElement(ToolboxPlugin, {
		plugin = plugin,
		store = store,
		settings = settings,
		theme = theme,
		networkInterface = networkInterface,
		localization = localization,

		backgrounds = backgrounds,
		suggestions = suggestions,

		onPluginWillDestroy = onPluginWillDestroy,
	})

	toolboxHandle = Roact.mount(toolboxComponent)
end

if FFlagStudioLuaWidgetToolboxV2 then
	main()
else
	deprecatedMain()
end
