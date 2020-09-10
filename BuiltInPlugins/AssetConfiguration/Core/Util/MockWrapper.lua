local FFlagToolboxNewAssetAnalytics = game:GetFastFlag("ToolboxNewAssetAnalytics")

local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local Rodux = require(Libs.Rodux)
local TestHelpers = require(Libs.Framework.TestHelpers)
local provideMockContext = TestHelpers.provideMockContext

local Localization = require(Plugin.Core.Util.Localization)
local Settings = require(Plugin.Core.Util.Settings)
local ToolboxTheme = require(Plugin.Core.Util.ToolboxTheme)
local ToolboxReducerMock = require(Plugin.Core.Reducers.ToolboxReducerMock)
local NetworkInterfaceMock = require(Plugin.Core.Networking.NetworkInterfaceMock)
local AssetAnalyticsContextItem = require(Plugin.Core.Util.Analytics.AssetAnalyticsContextItem)
local AssetAnalytics = require(Plugin.Core.Util.Analytics.AssetAnalytics)

local ExternalServicesWrapper = require(Plugin.Core.Components.ExternalServicesWrapper)
local UILibraryWrapper = require(Libs.Framework.ContextServices.UILibraryWrapper)
local makeTheme = require(Plugin.Core.Util.makeTheme)

local Framework = require(Libs.Framework)
local Networking = Framework.Http.Networking
local ContextServices = Framework.ContextServices
local Mouse = ContextServices.Mouse
local SettingsContext = require(Plugin.Core.ContextServices.Settings)

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
	local themeContext = makeTheme(theme:getUILibraryTheme())
	local uiLibraryWrapper = UILibraryWrapper.new()
	local storeContext = ContextServices.Store.new(store)
	local api = ContextServices.API.new({
		networking = Networking.mock(),
	})

	local assetAnalytics

	if FFlagToolboxNewAssetAnalytics then
		assetAnalytics = AssetAnalyticsContextItem.new(props.assetAnalytics or AssetAnalytics.mock())
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
		provideMockContext({
			storeContext,
			focus,
			mouse,
			pluginContext,
			settingsContext,
			themeContext,
			uiLibraryWrapper,
			api,
			assetAnalytics,
		},
			props[Roact.Children])
	})
end

return MockWrapper
