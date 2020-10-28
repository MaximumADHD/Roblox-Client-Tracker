-- upstream https://github.com/react-navigation/react-navigation/blob/20e2625f351f90fadadbf98890270e43e744225b/packages/core/src/__tests__/getNavigation.test.js

return function()
	local root = script.Parent.Parent
	local getNavigation = require(root.getNavigation)
	local NavigationActions = require(root.NavigationActions)

	local createSpy = require(root.utils.createSpy)

	it("getNavigation provides default action helpers", function()
		local router = {
			getActionCreators = function()
				return {}
			end,
			getStateForAction = function(action, lastState)
				return lastState or {}
			end,
		}

		local dispatchSpy = createSpy()

		local topNav = getNavigation(
			router,
			{},
			dispatchSpy.value,
			{},
			function()
				return {}
			end,
			function() end
		)

		topNav.navigate("GreatRoute")

		expect(dispatchSpy.callCount).to.equal(1)
		expect(dispatchSpy.values[1].type).to.equal(NavigationActions.Navigate)
		expect(dispatchSpy.values[1].routeName).to.equal("GreatRoute")
	end)

	it("getNavigation provides router action helpers", function()
		local router = {
			getActionCreators = function()
				return {
					foo = function(bar)
						return { type = "FooBarAction", bar = bar }
					end,
				}
			end,
			getStateForAction = function(action, lastState)
				return lastState or {}
			end,
		}

		local dispatchSpy = createSpy()

		local topNav = nil
		topNav = getNavigation(
			router,
			{},
			dispatchSpy.value,
			{},
			function()
				return {}
			end,
			function()
				return topNav
			end
		)

		topNav.foo("Great")

		expect(dispatchSpy.callCount).to.equal(1)
		expect(dispatchSpy.values[1].type).to.equal("FooBarAction")
		expect(dispatchSpy.values[1].bar).to.equal("Great")
	end)

	it("getNavigation get child navigation with router", function()
		local actionSubscribers = {}
		local navigation = nil

		local routerA = {
			getActionCreators = function()
				return {}
			end,
			getStateForAction = function(action, lastState)
				return lastState or {}
			end,
		}
		local router = {
			childRouters = {
			RouteA = routerA,
			},
			getActionCreators = function()
				return {}
			end,
			getStateForAction = function(action, lastState)
				return lastState or {}
			end,
		}

		local initState = {
			index = 0,
			routes = {
				{
					key = "a",
					routeName = "RouteA",
					routes = {{ key = "c", routeName = "RouteC" }},
					index = 0,
				},
				{ key = "b", routeName = "RouteB" },
			},
		}

		local topNav = getNavigation(
			router,
			initState,
			function() end,
			actionSubscribers,
			function()
				return {}
			end,
			function()
				return navigation
			end
		)

		local childNavA = topNav.getChildNavigation("a")

		expect(childNavA.router).to.equal(routerA)
	end)
end
