local Packages = script:FindFirstAncestor("TenFootUiGlobalNav").Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest
local getActiveChildNavigationOptionsRecursively = require(script.Parent.getActiveChildNavigationOptionsRecursively)
local TenFootUiCommon = require(Packages.TenFootUiCommon)

type RouteState = TenFootUiCommon.RouteState
type NavigationState = getActiveChildNavigationOptionsRecursively.NavigationState
type NavigationObject = getActiveChildNavigationOptionsRecursively.NavigationObject

local childScreenProps = {
	value = "childScreenProps",
}

local childNavState = {
	key = "Home",
	routeName = "Home",
}

local parentNavState: NavigationState = {
	key = "Home",
	routeName = "Home",
	index = 1,
	routes = {
		childNavState :: RouteState,
	},
}

local childNavigation: NavigationObject = {
	state = childNavState :: NavigationState,
	getChildNavigation = jest.fn(),
	router = {
		getScreenOptions = jest.fn(),
	},
}

local parentNavigation: NavigationObject = {
	state = parentNavState,
	getChildNavigation = function(...)
		return childNavigation
	end,
	router = {
		getScreenOptions = jest.fn().mockImplementation(function(nav, screenProps): any
			if nav == childNavigation then
				return childScreenProps
			else
				return
			end
		end),
	},
}

it("should get navigation options correctly", function()
	local ret = getActiveChildNavigationOptionsRecursively(parentNavigation)
	expect(ret).toEqual(childScreenProps)
end)
