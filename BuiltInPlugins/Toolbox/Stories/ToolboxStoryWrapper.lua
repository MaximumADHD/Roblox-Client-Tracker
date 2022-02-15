local Plugin = script.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Roact = require(Libs.Roact)
local Rodux = require(Libs.Rodux)
local Framework = require(Libs.Framework)

local Networking = Framework.Http.Networking
local ContextServices = Framework.ContextServices
local ThemeSwitcher = Framework.Style.ThemeSwitcher

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

	local context = {
		storeContext,
		settingsContext,
		api,
		assetAnalytics,
		themeContext,
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
