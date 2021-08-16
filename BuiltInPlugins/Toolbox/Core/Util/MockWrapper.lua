local Plugin = script.Parent.Parent.Parent
local FFlagRemoveUILibraryFromToolbox = require(Plugin.Core.Util.getFFlagRemoveUILibraryFromToolbox)()

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local Rodux = require(Libs.Rodux)
local TestHelpers = require(Libs.Framework).TestHelpers
local provideMockContext = TestHelpers.provideMockContext

local Localization = require(Plugin.Core.Util.Localization)
local Settings = require(Plugin.Core.Util.Settings)
local ToolboxTheme = require(Plugin.Core.Util.ToolboxTheme)
local ToolboxReducerMock = require(Plugin.Core.Reducers.ToolboxReducerMock)
local NetworkInterfaceMock = require(Plugin.Core.Networking.NetworkInterfaceMock)
local AssetAnalyticsContextItem = require(Plugin.Core.Util.Analytics.AssetAnalyticsContextItem)
local AssetAnalytics = require(Plugin.Core.Util.Analytics.AssetAnalytics)
local FlagsList = require(Plugin.Core.Util.FlagsList)

local ExternalServicesWrapper = require(Plugin.Core.Components.ExternalServicesWrapper)
local UILibraryWrapper = require(Libs.Framework).ContextServices.UILibraryWrapper :: any
local makeTheme = require(Plugin.Core.Util.makeTheme)

local Framework = require(Libs.Framework)
local Networking = Framework.Http.Networking
local ContextServices = Framework.ContextServices
local Mouse = ContextServices.Mouse
local SettingsContext = require(Plugin.Core.ContextServices.Settings)
local getAssetConfigTheme = require(Plugin.Core.Themes.getAssetConfigTheme)

local function MockWrapper(props)
	local store = props.store or Rodux.Store.new(ToolboxReducerMock, nil, {
		Rodux.thunkMiddleware
	})
	local plugin = props.plugin or nil
	local pluginGui = props.pluginGui or nil
	local settings = props.settings or Settings.new(plugin)
	local theme = props.theme or ToolboxTheme.createDummyThemeManager()
	local networkInterface = props.networkInterface or NetworkInterfaceMock.new()
	local localization = props.localization or Localization.createDummyLocalization()

	local mouse = Mouse.new({
		Icon = "rbxasset://SystemCursors/Arrow",
	})

	local focus = ContextServices.Focus.new(Instance.new("ScreenGui"))
	local pluginContext = ContextServices.Plugin.new(plugin)
	local settingsContext = SettingsContext.new(settings)
	local themeContext = makeTheme((not FFlagRemoveUILibraryFromToolbox) and theme:getUILibraryTheme() or nil, getAssetConfigTheme())
	local uiLibraryWrapper
	if (not FFlagRemoveUILibraryFromToolbox) then
		uiLibraryWrapper = UILibraryWrapper.new()
	end
	local storeContext = ContextServices.Store.new(store)
	local api = ContextServices.API.new({
		networking = Networking.mock(),
	})
	local analytics

	if FlagsList:get("FFlagToolboxUseDevFrameworkAssetPreview") then
		analytics = ContextServices.Analytics.mock()
	end

	local assetAnalytics = AssetAnalyticsContextItem.new(props.assetAnalytics or AssetAnalytics.mock())

	local context

	if FFlagRemoveUILibraryFromToolbox then
		context = {
			storeContext,
			focus,
			mouse,
			pluginContext,
			settingsContext,
			themeContext,
			api,
			assetAnalytics,
			analytics,
		}
	else
		context = {
			storeContext,
			focus,
			mouse,
			pluginContext,
			settingsContext,
			themeContext,
			uiLibraryWrapper,
			api,
			assetAnalytics,
			analytics,
		}
	end

	return Roact.createElement(ExternalServicesWrapper, {
		store = store,
		plugin = plugin,
		pluginGui = pluginGui,
		settings = settings,
		theme = theme,
		networkInterface = networkInterface,
		localization = localization,
	}, {
		provideMockContext(context,
			props[Roact.Children])
	})
end

return MockWrapper
