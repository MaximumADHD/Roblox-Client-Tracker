local Packages = script:FindFirstAncestor("TenFootUiShell").Parent
local React = require(Packages.React)
local JestGlobals = require(Packages.Dev.JestGlobals)
local it = JestGlobals.it
local expect = JestGlobals.expect

local TenFootUiCommon = require(Packages.TenFootUiCommon)
local RouteViewState = require(script.Parent.RouteViewState)

type NavigationObject = TenFootUiCommon.NavigationObject
type Descriptor = TenFootUiCommon.Descriptor
type RouteState = TenFootUiCommon.RouteState
type RouteViewState = RouteViewState.RouteViewState

local routeState: RouteState = {
	key = "foo",
	routeName = "Foo",
}
local testState = {
	routes = {
		routeState,
	},
	index = 1,
	key = "foo",
}

local TestComponent = React.Component:extend("TestComponent")
function TestComponent:render()
	return nil
end

local testNavigation: NavigationObject = {
	state = testState,
	dispatch = function() end,
	getParam = function(...)
		return
	end,
	addListener = function(_e, _fn)
		return { remove = function() end }
	end,
}

local descriptor: Descriptor = {
	getComponent = function()
		return TestComponent
	end,
	key = "foo",
	options = {
		screenKind = "Default",
	},
	navigation = testNavigation,
	state = testState,
}

it("should set Opening view state correctly", function()
	local routeViewState: RouteViewState = {
		key = routeState.key,
		name = routeState.routeName,
		descriptor = descriptor,
		viewState = "Opened" :: "Opened",
		destinationKey = nil,
	}

	local openingRouteViewState = RouteViewState.setOpening(routeViewState)

	expect(openingRouteViewState.viewState).toEqual("Opening")
	expect(openingRouteViewState.key).toEqual(routeViewState.key)
	expect(openingRouteViewState.name).toEqual(routeViewState.name)
	expect(openingRouteViewState.descriptor).toEqual(routeViewState.descriptor)
	expect(openingRouteViewState.destinationKey).toBeNil()
end)

it("should set Closing view state correctly", function()
	local destinationKey = "bar"
	local routeViewState: RouteViewState = {
		key = routeState.key,
		name = routeState.routeName,
		descriptor = descriptor,
		viewState = "Opened" :: "Opened",
		destinationKey = nil,
	}
	local closingRouteViewState = RouteViewState.setClosing(routeViewState, destinationKey)

	expect(closingRouteViewState.viewState).toEqual("Closing")
	expect(closingRouteViewState.key).toEqual(routeViewState.key)
	expect(closingRouteViewState.name).toEqual(routeViewState.name)
	expect(closingRouteViewState.descriptor).toEqual(routeViewState.descriptor)
	expect(closingRouteViewState.destinationKey).toEqual(destinationKey)
end)

it("should return true for isAnimating when view state is Opening", function()
	local routeViewState: RouteViewState = {
		key = routeState.key,
		name = routeState.routeName,
		descriptor = descriptor,
		viewState = "Opening" :: "Opening",
		destinationKey = nil,
	}

	expect(RouteViewState.isAnimating(routeViewState)).toBeTruthy()
end)

it("should return true for isAnimating when view state is Closing", function()
	local routeViewState: RouteViewState = {
		key = routeState.key,
		name = routeState.routeName,
		descriptor = descriptor,
		viewState = "Closing" :: "Closing",
		destinationKey = "bar",
	}

	expect(RouteViewState.isAnimating(routeViewState)).toBeTruthy()
end)

it("should return false for isAnimating when view state is Opened", function()
	local routeViewState: RouteViewState = {
		key = routeState.key,
		name = routeState.routeName,
		descriptor = descriptor,
		viewState = "Opened" :: "Opened",
		destinationKey = nil,
	}

	expect(RouteViewState.isAnimating(routeViewState)).toBeFalsy()
end)
