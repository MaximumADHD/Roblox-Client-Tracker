if not plugin then
	return
end

local Plugin = script.Parent.Parent
local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local Rodux = require(Libs.Rodux)

local Analytics = require(Plugin.Core.Util.Analytics.Analytics)
local DebugFlags = require(Plugin.Core.Util.DebugFlags)
local Settings = require(Plugin.Core.Util.Settings)
local ToolboxTheme = require(Plugin.Core.Util.ToolboxTheme)
local Localization = require(Plugin.Core.Util.Localization)

local Background = require(Plugin.Core.Types.Background)
local Suggestion = require(Plugin.Core.Types.Suggestion)

local ToolboxPlugin = require(Plugin.Core.Components.ToolboxPlugin)

local ToolboxReducer = require(Plugin.Core.Reducers.ToolboxReducer)

local NetworkInterface = require(Plugin.Core.Networking.NetworkInterface)

local LocalizationService = game:GetService("LocalizationService")

if DebugFlags.shouldRunTests() then
	local Tests = Plugin.Core
	local RunToolboxTests = require(Plugin.Core.RunToolboxTests)
	RunToolboxTests(Tests)
end

local function createTheme()
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

main()