-- TODO : REFACTOR THIS CLASS TO CONSUME A COMMON TEST WRAPPER
local Plugin = script.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local Rodux = require(Packages.Rodux)
local Framework = require(Packages.Framework)

local Networking = Framework.Http.Networking
local ContextServices = Framework.ContextServices
local ThemeSwitcher = Framework.Style.ThemeSwitcher
local Signal = Framework.Util.Signal

local Localization = require(Plugin.Core.Util.Localization)
local Settings = require(Plugin.Core.Util.Settings)
local ToolboxTheme = require(Plugin.Core.Util.ToolboxTheme)
local ToolboxReducer = require(Plugin.Core.Reducers.ToolboxReducer)
local NetworkInterfaceMock = require(Plugin.Core.Networking.NetworkInterfaceMock)
local AssetAnalyticsContextItem = require(Plugin.Core.Util.Analytics.AssetAnalyticsContextItem)
local AssetAnalytics = require(Plugin.Core.Util.Analytics.AssetAnalytics)
local ExternalServicesWrapper = require(Plugin.Core.Components.ExternalServicesWrapper)
local SettingsContext = require(Plugin.Core.ContextServices.Settings)
local makeTheme = require(Plugin.Core.Util.makeTheme)
local getAssetConfigTheme = require(Plugin.Core.Themes.getAssetConfigTheme)

local CoreTestUtils = require(Plugin.TestUtils.CoreTestUtils)

-- Toolbox-specific context, without overriding the Storybook context items
local function ToolboxStoryWrapper(props)
	local middleware = CoreTestUtils.createThunkMiddleware()

	local store = props.store or Rodux.Store.new(ToolboxReducer, nil, middleware)
	local pluginGui = props.pluginGui or nil
	local settings = props.settings or Settings.new(plugin)
	local networkInterface = props.networkInterface or NetworkInterfaceMock.new()
	local legacyLocalization = props.legacyLocalization or Localization.createDummyLocalization()

	local settingsContext = SettingsContext.new(settings)
	local storeContext = ContextServices.Store.new(store)
	local api = ContextServices.API.new({
		networking = Networking.mock(),
	})
	local themeContext = makeTheme(getAssetConfigTheme(), ThemeSwitcher)

	local assetAnalytics = AssetAnalyticsContextItem.new(props.assetAnalytics or AssetAnalytics.mock())
	local legacyTheme = props.legacyTheme or ToolboxTheme.createDummyThemeManager()

	local TranslationDevelopmentTable = Plugin.LocalizationSource.TranslationDevelopmentTable
	local TranslationReferenceTable = Plugin.LocalizationSource.TranslationReferenceTable
	local devFrameworkLocalization = ContextServices.Localization.new({
		stringResourceTable = TranslationDevelopmentTable,
		translationResourceTable = TranslationReferenceTable,
		pluginName = "Toolbox",
		libraries = {
			[Framework.Resources.LOCALIZATION_PROJECT_NAME] = {
				stringResourceTable = Framework.Resources.TranslationDevelopmentTable,
				translationResourceTable = Framework.Resources.TranslationReferenceTable,
			},
		},
		overrideGetLocale = function() return "en-us" end,
		overrideLocaleId = "en-us",
		overrideLocaleChangedSignal = Signal.new(),
	})

	local context = {
		storeContext,
		settingsContext,
		api,
		assetAnalytics,
		themeContext,
		devFrameworkLocalization,
	}

	return Roact.createElement(ExternalServicesWrapper, {
		store = store,
		plugin = plugin,
		pluginGui = pluginGui,
		settings = settings,
		theme = legacyTheme,
		networkInterface = networkInterface,
		localization = legacyLocalization,
	}, {
		ContextServices.provide(context, props[Roact.Children]),
	})
end

return ToolboxStoryWrapper
