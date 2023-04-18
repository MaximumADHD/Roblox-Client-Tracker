local Root = script:FindFirstAncestor("TenFootUiTesting")
local Packages = Root.Parent
local Cryo = require(Packages.Cryo)
local React = require(Packages.React)
local AppNotificationService = require(Packages.RoactServiceTags).AppNotificationService
local AppCommonLib = require(Packages.AppCommonLib)
local LocalizationProvider = require(Packages.Localization).LocalizationProvider
local RoactServices = require(Packages.RoactServices)
local JestGlobals = require(Packages.Dev.JestGlobals)
local mockProviders = require(Packages.Dev.LuaProfileDeps).UnitTestHelpers.mockProviders
local TenFootUiContext = require(Packages.TenFootUiCommon).TenFootUiContext
local TenFootUiCommon = require(Packages.TenFootUiCommon)

local jest = JestGlobals.jest
local Signal = AppCommonLib.Signal

type GlobalNavConfig = TenFootUiCommon.GlobalNavConfig
type ScreenKind = TenFootUiCommon.ScreenKind
type NavigationState = TenFootUiCommon.NavigationState
type RouteState = TenFootUiCommon.RouteState

local mockAppPage = {
	Startup = "Startup",
	Home = "Home",
	Games = "Games",
	AvatarExperienceRoot = "AvatarExperienceRoot",
	SearchPage = "SearchPage",
	PurchaseRobux = "PurchaseRobux",
}

local makeMockGlobalNavMocks = function()
	local mockTenFootUiContext = {}

	local mockGlobalNavConfig: GlobalNavConfig = {
		tabs = {
			{
				titleLocalizationKey = "CommonUI.Features.Label.Home",
				page = mockAppPage.Home,
				icon = "icons/menu/home_on",
				actionType = nil,
			},
			{
				titleLocalizationKey = "CommonUI.Features.Label.Discover",
				page = mockAppPage.Games,
				icon = "icons/menu/games_on",
				actionType = Enum.AppShellActionType.TapGamePageTab,
			},
			{
				titleLocalizationKey = "CommonUI.Features.Label.Avatar",
				page = mockAppPage.AvatarExperienceRoot,
				iconComponent = function()
					return React.createElement("Frame")
				end,
				actionType = Enum.AppShellActionType.TapAvatarTab,
			},
		},
		options = {
			{
				titleLocalizationKey = "Feature.Catalog.Label.Search",
				page = mockAppPage.SearchPage,
				icon = "icons/common/search",
				actionType = nil,
			},
			{
				titleLocalizationKey = "Feature.Home.Robux",
				page = mockAppPage.PurchaseRobux,
				icon = "icons/common/goldrobux",
				actionType = nil,
			},
		},
	}

	local mockLuaAppEvents = { ReloadPage = Signal.new(), ReportMutedError = Signal.new() }
	mockLuaAppEvents.ReloadPage.fire = jest.fn()
	mockLuaAppEvents.ReportMutedError.fire = jest.fn()

	local mockNotificationService = {}
	mockNotificationService.ActionTaken = jest.fn()

	local mockRoactAnalyticsTag = newproxy(true) :: RoactServices.Service<any>
	local mockAnalytics = { EventStream = {} }

	local mockRoactServices = {
		[AppNotificationService] = mockNotificationService,
		[mockRoactAnalyticsTag] = mockAnalytics,
	}

	local mockUseRoactServices = jest.fn().mockImplementation(function(tag)
		return mockRoactServices[tag]
	end)

	mockTenFootUiContext.LuaAppEvents = mockLuaAppEvents
	mockTenFootUiContext.RoactAnalytics = mockRoactAnalyticsTag
	mockTenFootUiContext.buttonClick = jest.fn()
	mockTenFootUiContext.globalNavConfig = mockGlobalNavConfig
	mockTenFootUiContext.useRoactService = mockUseRoactServices

	return {
		mockTenFootUiContext = mockTenFootUiContext,
		mockNotificationService = mockNotificationService,
	}
end

type MockNavigationState = {
	index: number?,
	routes: { { routeName: string } }?,
}

local function makeMockNavigation(navigationState: MockNavigationState?)
	navigationState = navigationState or {}

	local mockRoutes: { RouteState } = {
		{ key = "Startup", routeName = mockAppPage.Startup },
		{ key = "Home", routeName = mockAppPage.Home },
		{ key = "Games", routeName = mockAppPage.Games },
		{ key = "AvatarExperienceRoot", routeName = mockAppPage.AvatarExperienceRoot },
		{ key = "SearchPage", routeName = mockAppPage.SearchPage },
		{ key = "PurchaseRobux", routeName = mockAppPage.PurchaseRobux },
	}

	local mockNavigation = {}
	mockNavigation.state = Cryo.Dictionary.join({ index = 1, routes = mockRoutes }, navigationState)
	mockNavigation.isFocused = jest.fn().mockReturnValue(false)
	mockNavigation.addListener = jest.fn().mockImplementation(function()
		return {
			remove = jest.fn(),
		}
	end)
	mockNavigation.getParam = jest.fn()
	mockNavigation.navigate = jest.fn().mockImplementation(function(newRouteName: string)
		local newIndex = Cryo.List.findWhere(mockRoutes, function(route)
			return route.routeName == newRouteName
		end)

		if newIndex ~= nil then
			mockNavigation.state = Cryo.Dictionary.join(mockNavigation.state, { index = newIndex })
		else
			error("No navigated route [" .. newRouteName .. "] has been mocked")
		end
	end)

	return mockNavigation
end

type MakeMockProvidersConfig = {
	tenFootUiContext: any?,
	store: any?,
	initialStoreState: any?,
	navigationState: MockNavigationState?,
}

local makeMockProviders = function(config: MakeMockProvidersConfig?)
	config = config or {} :: MakeMockProvidersConfig
	assert(config, "Config must not be nil")

	local mockLocalization = {}
	mockLocalization.Format = jest.fn().mockImplementation(function(_, key, _)
		return "Localized:" .. key
	end)

	local globalNavMocks = makeMockGlobalNavMocks()
	local mockNavigation = makeMockNavigation(config.navigationState)

	local providers = {
		function(props)
			return mockProviders(props.children, {
				includeStoreProvider = true,
				includeStyleProvider = true,
				includeNavigationProvider = true,
				store = config.store,
				initialStoreState = config.initialStoreState,
				navigation = mockNavigation,
			})
		end,
		function(props)
			return React.createElement(LocalizationProvider, {
				localization = mockLocalization,
			}, props.children)
		end,
		function(props)
			return React.createElement(TenFootUiContext.Provider, {
				value = config.tenFootUiContext or globalNavMocks.mockTenFootUiContext,
			} :: any, props.children)
		end,
	}

	local nestedMocks = {
		globalNavMocks = globalNavMocks,
		mockNavigation = mockNavigation,
	}

	return providers, nestedMocks
end

local function makeMockNavigationObject(navState: NavigationState)
	return {
		state = navState,
		dispatch = function() end,
		getParam = function(...)
			return nil
		end,
	}
end

local function makeMockDescriptor(key: string, screenKind: ScreenKind, navState: NavigationState)
	local testComponentNavigationFromProp, testComponentScreenProps
	local TestComponent = React.Component:extend("TestComponent")
	function TestComponent:render()
		testComponentNavigationFromProp = self.props.navigation
		testComponentScreenProps = self.props.screenProps
		return nil
	end
	local descriptor = {
		getComponent = function()
			return TestComponent
		end,
		key = key,
		options = {
			screenKind = screenKind,
		},
		navigation = makeMockNavigationObject(navState),
		state = navState,
	}

	return descriptor, testComponentNavigationFromProp, testComponentScreenProps
end

return {
	makeMockGlobalNavMocks = makeMockGlobalNavMocks,
	makeMockProviders = makeMockProviders,
	mockAppPage = mockAppPage,
	makeMockDescriptor = makeMockDescriptor,
}
