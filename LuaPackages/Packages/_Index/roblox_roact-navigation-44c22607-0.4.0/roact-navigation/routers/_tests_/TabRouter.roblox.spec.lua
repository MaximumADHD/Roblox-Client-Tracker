return function()
	local TabRouter = require(script.Parent.Parent.TabRouter)
	local NavigationActions = require(script.Parent.Parent.Parent.NavigationActions)

	-- NOTE: Most functional tests are covered by SwitchRouter.spec.lua
	-- We just check that we can mount a basic case, and check that our custom
	-- defaults for resetOnBlur and backBehavior work as expected.

	it("should return a component that matches the given route name", function()
		local testComponent = function() end
		local router = TabRouter({
			{ Foo = { screen = testComponent } },
		})

		local component = router.getComponentForRouteName("Foo")
		expect(component).to.equal(testComponent)
	end)

	it("should not reset state for deactivated route", function()
		local router = TabRouter({
			{ Foo = { render = function() end } },
			{ Bar = { render = function() end } },
		})

		local testParams = { a = 1 }

		local initialState = {
			routes = {
				{ routeName = "Foo", params = testParams },
				{ routeName = "Bar" },
			},
			index = 1,
		}

		local state = router.getStateForAction(NavigationActions.navigate({ routeName = "Bar" }), initialState)
		expect(state.routes[1].params).to.equal(testParams)
	end)

	it("should go back to initial route index", function()
		local router = TabRouter({
			{ Foo = { render = function() end } },
			{ Bar = { render = function() end } },
		})

		local prevState = {
			routes = {
				{ routeName = "Foo" },
				{ routeName = "Bar" },
			},
			index = 2,
		}

		local newState = router.getStateForAction(NavigationActions.back(), prevState)
		expect(newState.index).to.equal(1)
	end)
end
