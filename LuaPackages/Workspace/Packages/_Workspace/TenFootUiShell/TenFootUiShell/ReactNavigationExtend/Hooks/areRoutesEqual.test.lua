local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local ReactNavigationExtend = TenFootUiShell.ReactNavigationExtend

local JestGlobals = require(Packages.Dev.JestGlobals)
local it = JestGlobals.it
local expect = JestGlobals.expect

local TenFootUiNavigatorTypes = require(ReactNavigationExtend.TenFootUiNavigatorTypes)
local areRoutesEqual = require(script.Parent.areRoutesEqual)

type RouteState = TenFootUiNavigatorTypes.RouteState

it("should return true when routes are identical references", function()
	local routes1: { RouteState } = {
		{ key = "home", routeName = "Home" },
		{ key = "profile", routeName = "Profile", params = { id = 123 } },
	}
	local routes2 = routes1

	expect(areRoutesEqual(routes1, routes2)).toBeTruthy()
end)

it("should return false when lengths of routes are different", function()
	local routes1: { RouteState } = {
		{ key = "home", routeName = "Home" },
		{ key = "profile", routeName = "Profile", params = { id = 123 } },
	}
	local routes2: { RouteState } = {
		{ key = "home", routeName = "Home" },
	}

	expect(areRoutesEqual(routes1, routes2)).toBeFalsy()
end)

it("should return true when all keys match", function()
	local routes1: { RouteState } = {
		{ key = "home", routeName = "Home" },
		{ key = "profile", routeName = "Profile", params = { id = 123 } },
	}
	local routes2: { RouteState } = {
		{ key = "home", routeName = "Home" },
		{ key = "profile", routeName = "Profile", params = { id = 456 } },
	}

	expect(areRoutesEqual(routes1, routes2)).toBeTruthy()
end)

it("should return false when keys are in different order", function()
	local routes1: { RouteState } = {
		{ key = "home", routeName = "Home", params = { id = 123 } },
		{ key = "profile", routeName = "Profile", params = { id = 123 } },
	}
	local routes2: { RouteState } = {
		{ key = "profile", routeName = "Profile", params = { id = 123 } },
		{ key = "home", routeName = "Home", params = { id = 123 } },
	}

	expect(areRoutesEqual(routes1, routes2)).toBeFalsy()
end)
