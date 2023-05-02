local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)
local JestGlobals = require(Packages.Dev.JestGlobals)
local jest = JestGlobals.jest
local it = JestGlobals.it
local expect = JestGlobals.expect
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local TenFootUiCommon = require(Packages.TenFootUiCommon)
local useStackScreens = require(script.Parent.useStackScreens)

type RouteState = TenFootUiCommon.RouteState
type Descriptor = TenFootUiCommon.Descriptor
type NavigationState = TenFootUiCommon.NavigationState
type NavigationObject = TenFootUiCommon.NavigationObject
type ScreenKind = TenFootUiCommon.ScreenKind

local function createMockNavigationState(
	index: number,
	key: string,
	routes: { RouteState },
	isTransitioning: boolean?
): NavigationState
	return {
		index = index,
		key = key,
		routes = routes,
		isTransitioning = isTransitioning,
	}
end

local function createMockNavigationObject(navigationState: NavigationState): NavigationObject
	return {
		state = navigationState,
		dispatch = function() end,
		getParam = function(...)
			return
		end,
		addListener = function(_e, _fn)
			return { remove = function() end }
		end,
	}
end

local function createMockDescriptor(
	component: React.ComponentType<any>,
	key: string,
	screenKind: ScreenKind,
	navigationObject: NavigationObject,
	navigatioState: NavigationState
): Descriptor
	return {
		getComponent = function()
			return component
		end,
		key = key,
		options = {
			screenKind = screenKind,
		},
		navigation = navigationObject,
		state = navigatioState,
	}
end

local key1 = "foo"
local key2 = "bar"
local key3 = "baz"
local name1 = "Foo"
local name2 = "Bar"
local name3 = "Baz"

local routeState1: RouteState = {
	key = key1,
	routeName = name1,
}

local routeState2: RouteState = {
	key = key2,
	routeName = name2,
}

local routeState3: RouteState = {
	key = key3,
	routeName = name3,
}

local root, cards, element, setNavStateExt, completeTransitionSpy

beforeEach(function()
	local MockComponent = React.Component:extend("MockComponent")
	function MockComponent:render(props)
		return nil
	end

	local initialNavigationState = createMockNavigationState(1, key1, { routeState1 })
	completeTransitionSpy = jest.fn()

	element = React.createElement(function()
		local navState, setNavState = React.useState(initialNavigationState)
		setNavStateExt = setNavState

		local navObject = createMockNavigationObject(navState)

		local descriptors = {}
		for _, route in navState.routes do
			local routeKey = route.key
			local screenKind: ScreenKind = "Default" :: ScreenKind
			if routeKey == key2 then
				screenKind = "Overlay" :: ScreenKind
			end
			descriptors[routeKey] = createMockDescriptor(MockComponent, routeKey, screenKind, navObject, navState)
		end

		cards = useStackScreens({
			navigationState = navState,
			descriptors = descriptors,
			completeTransition = completeTransitionSpy,
		})
		return
	end)
	root = ReactRoblox.createRoot(Instance.new("Folder"))
	ReactRoblox.act(function()
		root:render(element)
	end)
end)

afterEach(function()
	root:unmount()
end)

it("should handleInitialState correctly", function()
	expect(cards.screens).toEqual({
		expect.objectContaining({ key = key1, name = name1, visible = true, viewState = "Opened" }),
	})
end)

it("should handleUpdateState correctly", function()
	local index = 2
	local mockNavigationState = createMockNavigationState(index, key2, {
		routeState1,
		routeState2,
	}, true)

	ReactRoblox.act(function()
		setNavStateExt(mockNavigationState)
	end)

	expect(cards.screens).toEqual({
		expect.objectContaining({ key = key1, name = name1, visible = true, viewState = "Opened" }),
		expect.objectContaining({ key = key2, name = name2, visible = true, viewState = "Opening" }),
	})

	ReactRoblox.act(function()
		cards.setOpened(cards.screens[index])
	end)

	expect(completeTransitionSpy).toHaveBeenCalledTimes(1)
	expect(cards.screens).toEqual({
		expect.objectContaining({ key = key1, name = name1, visible = true, viewState = "Opened" }),
		expect.objectContaining({ key = key2, name = name2, visible = true, viewState = "Opened" }),
	})

	index = 3
	mockNavigationState = createMockNavigationState(index, key3, {
		routeState1,
		routeState2,
		routeState3,
	}, true)

	ReactRoblox.act(function()
		setNavStateExt(mockNavigationState)
	end)

	expect(cards.screens).toEqual({
		expect.objectContaining({ key = key1, name = name1, visible = true, viewState = "Opened" }),
		expect.objectContaining({ key = key2, name = name2, visible = true, viewState = "Opened" }),
		expect.objectContaining({ key = key3, name = name3, visible = true, viewState = "Opening" }),
	})

	ReactRoblox.act(function()
		cards.setOpened(cards.screens[index])
	end)

	expect(completeTransitionSpy).toHaveBeenCalledTimes(2)
	expect(cards.screens).toEqual({
		expect.objectContaining({ key = key1, name = name1, visible = false, viewState = "Opened" }),
		expect.objectContaining({ key = key2, name = name2, visible = false, viewState = "Opened" }),
		expect.objectContaining({ key = key3, name = name3, visible = true, viewState = "Opened" }),
	})

	index = 1
	mockNavigationState = createMockNavigationState(index, key1, { routeState1 }, true)
	ReactRoblox.act(function()
		setNavStateExt(mockNavigationState)
	end)

	expect(cards.screens).toEqual({
		expect.objectContaining({ key = key1, name = name1, visible = true, viewState = "Opened" }),
		expect.objectContaining({ key = key2, name = name2, visible = true, viewState = "Closing" }),
		expect.objectContaining({ key = key3, name = name3, visible = true, viewState = "Closing" }),
	})

	ReactRoblox.act(function()
		cards.setClosed(cards.screens[3])
	end)

	expect(#cards.screens).toBe(2)

	ReactRoblox.act(function()
		cards.setClosed(cards.screens[2])
	end)

	expect(#cards.screens).toBe(1)
end)

it("should handle stack actions of init correctly", function()
	local mockNavigationState = createMockNavigationState(3, key3, {
		routeState1,
		routeState2,
		routeState3,
	})

	ReactRoblox.act(function()
		setNavStateExt(mockNavigationState)
	end)

	expect(cards.screens).toEqual({
		expect.objectContaining({ key = key1, name = name1, visible = true, viewState = "Opened" }),
		expect.objectContaining({ key = key2, name = name2, visible = true, viewState = "Opening" }),
		expect.objectContaining({ key = key3, name = name3, visible = true, viewState = "Opening" }),
	})

	ReactRoblox.act(function()
		cards.setOpened(cards.screens[2])
	end)

	ReactRoblox.act(function()
		cards.setOpened(cards.screens[3])
	end)

	local newKey = key1 .. "_new"
	local newRouteState: RouteState = {
		key = newKey,
		routeName = name1,
	}
	mockNavigationState = createMockNavigationState(1, newKey, { newRouteState })
	ReactRoblox.act(function()
		setNavStateExt(mockNavigationState)
	end)

	expect(cards.screens).toEqual({
		expect.objectContaining({ key = key1, name = name1, visible = true, viewState = "Closing" }),
		expect.objectContaining({ key = key2, name = name2, visible = true, viewState = "Closing" }),
		expect.objectContaining({ key = key3, name = name3, visible = true, viewState = "Closing" }),
		expect.objectContaining({ key = newKey, name = name1, visible = true, viewState = "Opening" }),
	})
end)

it("should handle stack actions of replace correctly", function()
	local mockNavigationState = createMockNavigationState(3, key3, {
		routeState1,
		routeState2,
		routeState3,
	})

	ReactRoblox.act(function()
		setNavStateExt(mockNavigationState)
	end)

	expect(cards.screens).toEqual({
		expect.objectContaining({ key = key1, name = name1, visible = true, viewState = "Opened" }),
		expect.objectContaining({ key = key2, name = name2, visible = true, viewState = "Opening" }),
		expect.objectContaining({ key = key3, name = name3, visible = true, viewState = "Opening" }),
	})

	ReactRoblox.act(function()
		cards.setOpened(cards.screens[2])
	end)

	ReactRoblox.act(function()
		cards.setOpened(cards.screens[3])
	end)

	expect(cards.screens).toEqual({
		expect.objectContaining({ key = key1, name = name1, visible = false, viewState = "Opened" }),
		expect.objectContaining({ key = key2, name = name2, visible = false, viewState = "Opened" }),
		expect.objectContaining({ key = key3, name = name3, visible = true, viewState = "Opened" }),
	})

	local newKey = key1 .. "_new"
	local newRouteState: RouteState = {
		key = newKey,
		routeName = name1,
	}
	mockNavigationState = createMockNavigationState(3, newKey, {
		routeState1,
		routeState2,
		newRouteState,
	})
	ReactRoblox.act(function()
		setNavStateExt(mockNavigationState)
	end)

	expect(cards.screens).toEqual({
		expect.objectContaining({ key = key1, name = name1, visible = true, viewState = "Opened" }),
		expect.objectContaining({ key = key2, name = name2, visible = true, viewState = "Opened" }),
		expect.objectContaining({ key = key3, name = name3, visible = true, viewState = "Closing" }),
		expect.objectContaining({ key = newKey, name = name1, visible = true, viewState = "Opening" }),
	})
end)
