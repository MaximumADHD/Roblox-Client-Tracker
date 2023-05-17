local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local it = JestGlobals.it
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local TenFootUiCommon = require(Packages.TenFootUiCommon)
local getCurrentRouteKey = require(script.Parent.getCurrentRouteKey)

type RouteState = TenFootUiCommon.RouteState
type NavigationState = TenFootUiCommon.NavigationState
type NavigationObject = TenFootUiCommon.NavigationObject

describe("getCurrentRouteKey", function()
	it("should return nil if navigation is nil", function()
		local expectedState = nil
		local navigation = nil
		expect(getCurrentRouteKey(navigation)).toEqual(expectedState)
	end)
	it("should return the state if it's only 1 level deep", function()
		local expectedState = { key = "home", routeName = "Home" }
		local navigation: NavigationObject = { state = expectedState :: RouteState } :: any
		expect(getCurrentRouteKey(navigation)).toEqual(expectedState.key)
	end)
	it("should return the state if it's 2 levels deep", function()
		local expectedState: RouteState = { key = "home", routeName = "Home" }
		local navigation = {
			state = {
				index = 2,
				routes = {
					{
						key = "nothing",
						routeName = "nothing",
					},
					expectedState,
				},
			},
		} :: any --LUAU FIXME: there is an issue determining RouteState as being a valid member of a union in an intersection
		expect(getCurrentRouteKey(navigation)).toEqual(expectedState.key)
	end)
	it("should return the state if it's 3 levels deep", function()
		local expectedState: RouteState = { key = "home", routeName = "Home" }
		local navigation = {

			state = {
				key = "test",
				index = 2,
				routes = {
					{
						index = 1,
						routes = {
							{
								key = "nothing",
								routeName = "nothing",
							},
						},
					},
					{
						index = 1,
						routes = {
							expectedState,
						},
					},
				},
			},
		} :: any --LUAU FIXME: there is an issue determining RouteState as being a valid member of a union in an intersection
		expect(getCurrentRouteKey(navigation)).toEqual(expectedState.key)
	end)
end)
