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
type NavigationObject = TenFootUiCommon.NavigationObject
type RouteState = TenFootUiCommon.RouteState
type Descriptor = TenFootUiCommon.Descriptor
type AnimationStyle = TenFootUiCommon.AnimationStyle
type TenFootUiContext = TenFootUiCommon.TenFootUiContext
type TenFootUiRouterConfig = TenFootUiCommon.TenFootUiRouterConfig

local mockAppPage = {
	Startup = "Startup",
	Home = "Home",
	Games = "Games",
	AvatarExperienceRoot = "AvatarExperienceRoot",
	SearchPage = "SearchPage",
	PurchaseRobux = "PurchaseRobux",
}

local defaultGlobalNavConfig: GlobalNavConfig = {
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

local function TestScreen(props)
	return React.createElement("Frame", {})
end

local routerConfig: TenFootUiCommon.TenFootUiRouterConfig = {
	switchRoutes = {
		{
			[mockAppPage.Startup] = {
				screen = TestScreen,
				navigationOptions = {
					screenKind = "Default",
					animationStyle = "None",
				},
			},
		},
		{
			[mockAppPage.Home] = {
				screen = TestScreen,
				navigationOptions = {
					screenKind = "Default",
					animationStyle = "None",
				},
			},
		},
		{
			[mockAppPage.AvatarExperienceRoot] = {
				screen = TestScreen,
				navigationOptions = {
					screenKind = "Default",
					animationStyle = "None",
				},
			},
		},
	},
	stackRoutes = {
		{
			[mockAppPage.Games] = {
				navigatorConfig = {
					initialRouteKey = mockAppPage.Games,
				},
				navigationOptions = {
					screenKind = "Default",
					animationStyle = "None",
				},
				screenStack = {
					{
						[mockAppPage.Games] = {
							screen = TestScreen,
							navigationOptions = {
								screenKind = "Default",
								animationStyle = "None",
							},
						},
					},
				},
			},
		},
	},
	commonStackRoutes = {
		{
			[mockAppPage.SearchPage] = {
				screen = TestScreen,
				navigationOptions = {
					screenKind = "Default",
					animationStyle = "None",
				},
			},
		},
		{
			[mockAppPage.PurchaseRobux] = {
				screen = TestScreen,
				navigationOptions = {
					screenKind = "Default",
					animationStyle = "None",
				},
			},
		},
	},
}

local function makeTenFootUiContextMocks(
	globalNavConfig: GlobalNavConfig,
	mockNotificationService: { ActionTaken: any }
): TenFootUiContext
	local mockLuaAppEvents = { ReloadPage = Signal.new(), ReportMutedError = Signal.new() }
	mockLuaAppEvents.ReloadPage.fire = jest.fn()
	mockLuaAppEvents.ReportMutedError.fire = jest.fn()

	local mockRoactAnalyticsTag = newproxy(true) :: RoactServices.Service<any>
	local mockAnalytics = { EventStream = {} }

	local mockRoactServices = {
		[AppNotificationService] = mockNotificationService,
		[mockRoactAnalyticsTag] = mockAnalytics,
	}

	local mockUseRoactServices = jest.fn().mockImplementation(function(tag)
		return mockRoactServices[tag]
	end)
	return {
		LuaAppEvents = mockLuaAppEvents,
		RoactAnalytics = mockRoactAnalyticsTag,
		buttonClick = jest.fn(),
		globalNavConfig = globalNavConfig,
		useRoactService = mockUseRoactServices,
		routerConfig = routerConfig,
	}
end

local function makeMockNotificationService()
	return { ActionTaken = jest.fn() }
end

local function makeMockGlobalNavConfig(globalNavConfig: GlobalNavConfig?): GlobalNavConfig
	return globalNavConfig or defaultGlobalNavConfig
end

type MockNavigationState = {
	index: number?,
	routes: { { routeName: string, key: string? } }?,
	key: string?,
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
		local newIndex = Cryo.List.findWhere(mockNavigation.state.routes, function(route)
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

function makeMockLocalization()
	local mockLocalization = {}
	mockLocalization.Format = jest.fn().mockImplementation(function(_, key, _)
		return "Localized:" .. key
	end)
	return mockLocalization
end

type MakeMockProvidersConfig = {
	tenFootUiContext: any?,
	store: any?,
	initialStoreState: any?,
	navigationState: MockNavigationState?,
	globalNavConfig: GlobalNavConfig?,
}

local makeMockProviders = function(config: MakeMockProvidersConfig?)
	config = config or {} :: MakeMockProvidersConfig
	assert(config, "Config must not be nil")

	local mockLocalization = makeMockLocalization()
	local globalNavConfig = makeMockGlobalNavConfig(config.globalNavConfig)
	local mockNotificationService = makeMockNotificationService()
	local mockNavigation = makeMockNavigation(config.navigationState)
	local mockTenFootUiContext = makeTenFootUiContextMocks(globalNavConfig, mockNotificationService)

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
				value = config.tenFootUiContext or mockTenFootUiContext,
			} :: any, props.children)
		end,
	}

	local nestedMocks = {
		globalNavConfig = globalNavConfig,
		mockNavigation = mockNavigation,
		mockTenFootUiContext = mockTenFootUiContext,
		mockNotificationService = mockNotificationService,
	}

	return providers, nestedMocks
end

local function makeMockNavigationObject(navState: NavigationState): NavigationObject
	return {
		state = navState,
		dispatch = function() end,
		getParam = function(...)
			return
		end,
		addListener = function(_e, _fn)
			return { remove = function() end }
		end,
	}
end

local function makeMockDescriptor(
	key: string,
	navState: NavigationState,
	screenKind: ScreenKind,
	animationStyle: AnimationStyle?
)
	local testComponentNavigationFromProp, testComponentScreenProps
	local TestComponent = React.Component:extend("TestComponent")
	function TestComponent:render()
		testComponentNavigationFromProp = self.props.navigation
		testComponentScreenProps = self.props.screenProps
		return nil
	end
	local descriptor: Descriptor = {
		getComponent = function()
			return TestComponent
		end,
		key = key,
		options = {
			screenKind = screenKind,
			animationStyle = animationStyle,
		},
		navigation = makeMockNavigationObject(navState),
		state = navState,
	}

	return descriptor, testComponentNavigationFromProp, testComponentScreenProps
end

return {
	makeMockGlobalNavConfig = makeMockGlobalNavConfig,
	makeMockProviders = makeMockProviders,
	mockAppPage = mockAppPage,
	makeMockDescriptor = makeMockDescriptor,
	makeMockLocalization = makeMockLocalization,
	makeTenFootUiContextMocks = makeTenFootUiContextMocks,
}
