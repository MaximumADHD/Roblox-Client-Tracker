-- upstream https://github.com/react-navigation/react-navigation/blob/72e8160537954af40f1b070aa91ef45fc02bba69/packages/core/src/routers/__tests__/StackRouter.test.js

return function()
	local Root = script.Parent.Parent.Parent
	local Packages = Root.Parent
	local Cryo = require(Packages.Cryo)
	local Roact = require(Packages.Roact)
	local StackRouter = require(script.Parent.Parent.StackRouter)
	local StackActions = require(Root.routers.StackActions)
	local NavigationActions = require(Root.NavigationActions)
	local KeyGenerator = require(Root.utils.KeyGenerator)
	local expectDeepEqual = require(Root.utils.expectDeepEqual)

	beforeEach(function()
		KeyGenerator._TESTING_ONLY_normalize_keys()
	end)

	local function ListScreen()
		return Roact.createElement("Frame")
	end

	local ProfileNavigator = Roact.Component:extend("ProfileNavigator")
	ProfileNavigator.router = StackRouter({
		{
			list = {
				path = "list/:id",
				screen = ListScreen,
			},
		},
	})

	function ProfileNavigator:render()
		return Roact.createElement("Frame")
	end

	local MainNavigator = Roact.Component:extend("MainNavigator")
	MainNavigator.router = StackRouter({
		{
			profile = {
				path = "p/:id",
				screen = ProfileNavigator,
			},
		},
	})

	function MainNavigator:render()
		return Roact.createElement("Frame")
	end

	local function LoginScreen()
		return Roact.createElement("Frame")
	end

	local AuthNavigator = Roact.Component:extend("AuthNavigator")
	AuthNavigator.router = StackRouter({
		{ login = { screen = LoginScreen } },
	})

	function AuthNavigator:render()
		return Roact.createElement("Frame")
	end

	local FooNavigator = Roact.Component:extend("FooNavigator")
	FooNavigator.router = StackRouter({
		{
			bar = {
				path = "b/:barThing",
				screen = function() return Roact.createElement("Frame") end,
			},
		},
	})

	function FooNavigator:render()
		return Roact.createElement("Frame")
	end

	local PersonScreen = function()
		return Roact.createElement("Frame")
	end

	local TestStackRouter = StackRouter({
		{ main = { screen = MainNavigator } },
		{ baz = { path = nil, screen = FooNavigator } },
		{ auth = { screen = AuthNavigator } },
		{ person = { path = "people/:id", screen = PersonScreen } },
		{ foo = { path = "fo/:fooThing", screen = FooNavigator } },
	})

	describe("StackRouter", function()
		it("Gets the active screen for a given state", function()
			local function FooScreen()
				return Roact.createElement("Frame")
			end
			local function BarScreen()
				return Roact.createElement("Frame")
			end
			local router = StackRouter({
				{ foo = { screen = FooScreen } },
				{ bar = { screen = BarScreen } },
			})

			expect(router.getComponentForState({
				index = 1,
				isTransitioning = false,
				routes = {
					{ key = "a", routeName = "foo" },
					{ key = "b", routeName = "bar" },
					{ key = "c", routeName = "foo" },
				},
			})).to.equal(FooScreen)
			expect(router.getComponentForState({
				index = 2,
				isTransitioning = false,
				routes = {
					{ key = "a", routeName = "foo" },
					{ key = "b", routeName = "bar" },
				},
			})).to.equal(BarScreen)
		end)

		it("Handles getScreen in getComponentForState", function()
			local function FooScreen()
				return Roact.createElement("Frame")
			end
			local function BarScreen()
				return Roact.createElement("Frame")
			end
			local router = StackRouter({
				{ foo = { getScreen = function() return FooScreen end } },
				{ bar = { getScreen = function() return BarScreen end } },
			})

			expect(router.getComponentForState({
				index = 1,
				isTransitioning = false,
				routes = {
					{ key = "a", routeName = "foo" },
					{ key = "b", routeName = "bar" },
					{ key = "c", routeName = "foo" },
				},
			})).to.equal(FooScreen)
			expect(router.getComponentForState({
				index = 2,
				isTransitioning = false,
				routes = {
					{ key = "a", routeName = "foo" },
					{ key = "b", routeName = "bar" },
				},
			})).to.equal(BarScreen)
		end)

		it("Gets the screen for given route", function()
			local function FooScreen()
				return Roact.createElement("Frame")
			end

			local BarScreen = Roact.Component:extend("BarScreen")
			function BarScreen:render()
				return Roact.createElement("Frame")
			end

			local BazScreen = Roact.Component:extend("BazScreen")
			function BazScreen:render()
				return Roact.createElement("Frame")
			end

			local router = StackRouter({
				{ foo = { screen = FooScreen } },
				{ bar = { screen = BarScreen } },
				{ baz = { screen = BazScreen } },
			})

			expect(router.getComponentForRouteName("foo")).to.equal(FooScreen)
			expect(router.getComponentForRouteName("bar")).to.equal(BarScreen)
			expect(router.getComponentForRouteName("baz")).to.equal(BazScreen)
		end)

		it("Handles getScreen in getComponent", function()
			local function FooScreen()
				return Roact.createElement("Frame")
			end

			local BarScreen = Roact.Component:extend("BarScreen")
			function BarScreen:render()
				return Roact.createElement("Frame")
			end

			local BazScreen = Roact.Component:extend("BazScreen")
			function BazScreen:render()
				return Roact.createElement("Frame")
			end

			local router = StackRouter({
				{ foo = { getScreen = function() return FooScreen end } },
				{ bar = { getScreen = function() return BarScreen end } },
				{ baz = { getScreen = function() return BazScreen end } },
			})

			expect(router.getComponentForRouteName("foo")).to.equal(FooScreen)
			expect(router.getComponentForRouteName("bar")).to.equal(BarScreen)
			expect(router.getComponentForRouteName("baz")).to.equal(BazScreen)
		end)

		-- deviation: StackRouter.getActionForPathAndParams not implemented
		itSKIP("Parses simple paths", function()
			expectDeepEqual(
				AuthNavigator.router.getActionForPathAndParams("login"),
				{
					type = NavigationActions.Navigate,
					routeName = "login",
					params = {},
				}
			)
		end)

		-- deviation: StackRouter.getActionForPathAndParams not implemented
		itSKIP("Parses paths with a param", function()
			expectDeepEqual(
				TestStackRouter.getActionForPathAndParams("people/foo"),
				{
					type = NavigationActions.Navigate,
					routeName = "person",
					params = { id = "foo" },
				}
			)
		end)

		-- deviation: StackRouter.getActionForPathAndParams not implemented
		itSKIP("Parses paths with a query", function()
			expectDeepEqual(
				TestStackRouter.getActionForPathAndParams("people/foo", {
					code = "test",
					foo = "bar",
				}),
				{
					type = NavigationActions.Navigate,
					routeName = "person",
					params = {
						id = "foo",
						code = "test",
						foo = "bar",
					},
				}
			)
		end)

		-- deviation: StackRouter.getActionForPathAndParams not implemented
		itSKIP("Parses paths with an empty query value", function()
			expectDeepEqual(
				TestStackRouter.getActionForPathAndParams("people/foo", {
					code = "",
					foo = "bar",
				}),
				{
					type = NavigationActions.Navigate,
					routeName = "person",
					params = {
						id = "foo",
						code = "",
						foo = "bar",
					},
				}
			)
		end)

		-- deviation: StackRouter.getActionForPathAndParams not implemented
		itSKIP("Correctly parses a path without arguments into an action chain", function()
			local uri = "auth/login"
			local action = TestStackRouter.getActionForPathAndParams(uri)

			expectDeepEqual(action, {
				type = NavigationActions.Navigate,
				routeName = "auth",
				params = {},
				action = {
					type = NavigationActions.Navigate,
					routeName = "login",
					params = {},
				},
			})
		end)

		-- deviation: StackRouter.getActionForPathAndParams not implemented
		itSKIP("Correctly parses a path with arguments into an action chain", function()
			local uri = "main/p/4/list/10259959195"
			local action = TestStackRouter.getActionForPathAndParams(uri)

			expectDeepEqual(action, {
				type = NavigationActions.Navigate,
				routeName = "main",
				params = {},
				action = {
					type = NavigationActions.Navigate,
					routeName = "profile",
					params = { id = "4" },
					action = {
						type = NavigationActions.Navigate,
						routeName = "list",
						params = { id = "10259959195" },
					},
				},
			})
		end)

		-- deviation: StackRouter.getActionForPathAndParams not implemented
		itSKIP("Correctly parses a path to the router connected to another router "
				.. "through a pure wildcard route into an action chain", function()
			local uri = "b/123"
			local action = TestStackRouter.getActionForPathAndParams(uri)

			expectDeepEqual(action, {
				type = NavigationActions.Navigate,
				routeName = "baz",
				params = {},
				action = {
					type = NavigationActions.Navigate,
					routeName = "bar",
					params = {
						barThing = "123",
					},
				},
			})
		end)

		-- deviation: StackRouter.getActionForPathAndParams not implemented
		itSKIP("Correctly returns null action for non-existent path", function()
			local uri = "asdf/1234"
			local action = TestStackRouter.getActionForPathAndParams(uri)

			expect(action).to.equal(nil)
		end)

		-- deviation: StackRouter.getActionForPathAndParams not implemented
		itSKIP("Correctly returns action chain for partially matched path", function()
			local uri = "auth/login"
			local action = TestStackRouter.getActionForPathAndParams(uri)

			expectDeepEqual(action, {
				type = NavigationActions.Navigate,
				routeName = "auth",
				params = {},
				action = {
					type = NavigationActions.Navigate,
					routeName = "login",
					params = {},
				},
			})
		end)

		-- deviation: StackRouter.getActionForPathAndParams not implemented
		itSKIP("Correctly returns action for path with multiple parameters", function()
			local path = "fo/22/b/hello"
			local action = TestStackRouter.getActionForPathAndParams(path)

			expectDeepEqual(action, {
				type = NavigationActions.Navigate,
				routeName = "foo",
				params = { fooThing = "22" },
				action = {
					type = NavigationActions.Navigate,
					routeName = "bar",
					params = { barThing = "hello" },
				},
			})
		end)

		it("Pushes other navigators when navigating to an unopened route name", function()
			local Bar = Roact.Component:extend("Bar")
			function Bar:render()
				return Roact.createElement("Frame")
			end

			Bar.router = StackRouter({
				{ baz = { screen = function() return Roact.createElement("Frame") end } },
				{ qux = { screen = function() return Roact.createElement("Frame") end } },
			})

			local TestRouter = StackRouter({
				{ foo = { screen = function() return Roact.createElement("Frame") end } },
				{ bar = { screen = Bar } },
			})
			local initState = TestRouter.getStateForAction(NavigationActions.init())

			expectDeepEqual(initState, {
				index = 1,
				isTransitioning = false,
				key = "StackRouterRoot",
				routes = { { key = "id-0", routeName = "foo" } },
			})

			local pushedState = TestRouter.getStateForAction(
				NavigationActions.navigate({ routeName = "qux" }),
				initState
			)

			expect(pushedState.index).to.equal(2)
			expect(pushedState.routes[2].index).to.equal(2)
			expect(pushedState.routes[2].routes[2].routeName).to.equal("qux")
		end)

		it("push bubbles up", function()
			local ChildNavigator = Roact.Component:extend("ChildNavigator")
			function ChildNavigator:render()
				return Roact.createElement("Frame")
			end

			ChildNavigator.router = StackRouter({
				{ Baz = { screen = function() return Roact.createElement("Frame") end } },
				{ Qux = { screen = function() return Roact.createElement("Frame") end } },
			})

			local router = StackRouter({
				{ Foo = { screen = function() return Roact.createElement("Frame") end } },
				{ Bar = { screen = ChildNavigator } },
				{ Bad = { screen = function() return Roact.createElement("Frame") end } },
			})
			local state = router.getStateForAction({ type = NavigationActions.Init })
			local state2 = router.getStateForAction(
				{ type = NavigationActions.Navigate, routeName = "Bar" },
				state
			)
			local state3 = router.getStateForAction({
				type = StackActions.Push,
				routeName = "Bad",
			}, state2)

			expect(state3 and state3.index).to.equal(3)
			expect(state3 and #state3.routes).to.equal(3)
		end)

		it("pop bubbles up", function()
			local ChildNavigator = Roact.Component:extend("ChildNavigator")

			function ChildNavigator:render()
				return Roact.createElement("Frame")
			end

			ChildNavigator.router = StackRouter({
				{ Baz = { screen = function() return Roact.createElement("Frame") end } },
				{ Qux = { screen = function() return Roact.createElement("Frame") end } },
			})

			local router = StackRouter({
				{ Foo = { screen = function() return Roact.createElement("Frame") end } },
				{ Bar = { screen = ChildNavigator } },
			})
			local state = router.getStateForAction({ type = NavigationActions.Init })
			local state2 = router.getStateForAction({
				type = NavigationActions.Navigate,
				routeName = "Bar",
				key = "StackRouterRoot",
			}, state)
			local state3 = router.getStateForAction({ type = StackActions.Pop }, state2)

			expect(state3 and state3.index).to.equal(1)
		end)

		-- deviation: StackRouter.getActionForPathAndParams not implemented
		itSKIP("Handle navigation to nested navigator", function()
			local action = TestStackRouter.getActionForPathAndParams("fo/22/b/hello")
			local state2 = TestStackRouter.getStateForAction(action)

			expectDeepEqual(state2, {
				index = 1,
				isTransitioning = false,
				key = "StackRouterRoot",
				routes = {
					{
						index = 1,
						key = "id-1",
						isTransitioning = false,
						routeName = "foo",
						params = { fooThing = "22" },
						routes = {
							{
								routeName = "bar",
								key = "id-0",
								params = {
									barThing = "hello",
								},
							},
						},
					},
				},
			})
		end)

		it("popToTop bubbles up", function()
			local ChildNavigator = Roact.Component:extend("ChildNavigator")

			function ChildNavigator:render()
				return Roact.createElement("Frame")
			end

			ChildNavigator.router = StackRouter({
				{ Baz = { screen = function() return Roact.createElement("Frame") end } },
				{ Qux = { screen = function() return Roact.createElement("Frame") end } },
			})

			local router = StackRouter({
				{ Foo = { screen = function() return Roact.createElement("Frame") end } },
				{ Bar = { screen = ChildNavigator } },
			})

			local state = router.getStateForAction({ type = NavigationActions.Init })
			local state2 = router.getStateForAction(
				{ type = NavigationActions.Navigate, routeName = "Bar" },
				state
			)
			local state3 = router.getStateForAction({ type = StackActions.PopToTop }, state2)

			expect(state3 and state3.index).to.equal(1)
		end)

		it("popToTop targets StackRouter by key if specified", function()
			local ChildNavigator = Roact.Component:extend("ChildNavigator")

			function ChildNavigator:render()
				return Roact.createElement("Frame")
			end

			ChildNavigator.router = StackRouter({
				{ Baz = { screen = function() return Roact.createElement("Frame") end } },
				{ Qux = { screen = function() return Roact.createElement("Frame") end } },
			})

			local router = StackRouter({
				{ Foo = { screen = function() return Roact.createElement("Frame") end } },
				{ Bar = { screen = ChildNavigator } },
			})

			local state = router.getStateForAction({ type = NavigationActions.Init })
			local state2 = router.getStateForAction(
				{ type = NavigationActions.Navigate, routeName = "Bar" },
				state
			)
			local state3 = router.getStateForAction({
				type = StackActions.PopToTop,
				key = state2.key,
			}, state2)

			expect(state3 and state3.index).to.equal(1)
		end)

		it("pop action works as expected", function()
			local TestRouter = StackRouter({
				{ foo = { screen = function() return Roact.createElement("Frame") end } },
				{ bar = { screen = function() return Roact.createElement("Frame") end } },
			})
			local state = {
				index = 4,
				isTransitioning = false,
				routes = {
					{ key = "A", routeName = "foo" },
					{ key = "B", routeName = "bar", params = { bazId = "321" } },
					{ key = "C", routeName = "foo" },
					{ key = "D", routeName = "bar" },
				},
			}
			local poppedState = TestRouter.getStateForAction(StackActions.pop(), state)

			expect(#poppedState.routes).to.equal(3)
			expect(poppedState.index).to.equal(3)
			expect(poppedState.isTransitioning).to.equal(true)

			local poppedState2 = TestRouter.getStateForAction(
				StackActions.pop({ n = 2, immediate = true }),
				state
			)

			expect(#poppedState2.routes).to.equal(2)
			expect(poppedState2.index).to.equal(2)
			expect(poppedState2.isTransitioning).to.equal(false)

			local poppedState3 = TestRouter.getStateForAction(
				StackActions.pop({ n = 5 }),
				state
			)
			expect(#poppedState3.routes).to.equal(1)
			expect(poppedState3.index).to.equal(1)
			expect(poppedState3.isTransitioning).to.equal(true)
			local poppedState4 = TestRouter.getStateForAction(
				StackActions.pop({ key = "C", prune = false, immediate = true }),
				state
			)

			expect(#poppedState4.routes).to.equal(3)
			expect(poppedState4.index).to.equal(3)
			expect(poppedState4.isTransitioning).to.equal(false)
			expectDeepEqual(poppedState4.routes, {
				{ key = "A", routeName = "foo" },
				{ key = "B", routeName = "bar", params = { bazId = "321" } },
				{ key = "D", routeName = "bar" },
			})

			local poppedState5 = TestRouter.getStateForAction(StackActions.pop({
				n = 2,
				key = "C",
				prune = false,
			}), state)

			expect(#poppedState5.routes).to.equal(2)
			expect(poppedState5.index).to.equal(2)
			expect(poppedState5.isTransitioning).to.equal(true)
			expectDeepEqual(poppedState5.routes, {
				{ key = "A", routeName = "foo" },
				{ key = "D", routeName = "bar" },
			})
		end)

		it("popToTop works as expected", function()
			local TestRouter = StackRouter({
				{ foo = { screen = function() return Roact.createElement("Frame") end } },
				{ bar = { screen = function() return Roact.createElement("Frame") end } },
			})
			local state = {
				index = 2,
				isTransitioning = false,
				routes = {
					{ key = "A", routeName = "foo" },
					{ key = "B", routeName = "bar", params = { bazId = "321" } },
					{ key = "C", routeName = "foo" },
				},
			}
			local poppedState = TestRouter.getStateForAction(StackActions.popToTop(), state)

			expect(#poppedState.routes).to.equal(1)
			expect(poppedState.index).to.equal(1)
			expect(poppedState.isTransitioning).to.equal(true)

			local poppedState2 = TestRouter.getStateForAction(StackActions.popToTop(), poppedState)

			expectDeepEqual(poppedState, poppedState2)

			local poppedImmediatelyState = TestRouter.getStateForAction(
				StackActions.popToTop({ immediate = true }),
				state
			)

			expect(#poppedImmediatelyState.routes).to.equal(1)
			expect(poppedImmediatelyState.index).to.equal(1)
			expect(poppedImmediatelyState.isTransitioning).to.equal(false)
		end)

		it("Navigate does not push duplicate routeName", function()
			local TestRouter = StackRouter({
				{ foo = { screen = function() return Roact.createElement("Frame") end } },
				{ bar = { screen = function() return Roact.createElement("Frame") end } },
			}, {
				initialRouteName = "foo",
			})
			local initState = TestRouter.getStateForAction(NavigationActions.init())
			local barState = TestRouter.getStateForAction(
				NavigationActions.navigate({ routeName = "bar" }),
				initState
			)

			expect(barState.index).to.equal(2)
			expect(barState.routes[2].routeName).to.equal("bar")

			local navigateOnBarState = TestRouter.getStateForAction(
				NavigationActions.navigate({ routeName = "bar" }),
				barState
			)

			expect(navigateOnBarState).to.equal(nil)
		end)

		it("Navigate focuses given routeName if already active in stack", function()
			local TestRouter = StackRouter({
				{ foo = { screen = function() return Roact.createElement("Frame") end } },
				{ bar = { screen = function() return Roact.createElement("Frame") end } },
				{
					baz = {
						screen = function() return Roact.createElement("Frame") end,
					},
				},
			}, {
				initialRouteName = "foo",
			})
			local initialState = TestRouter.getStateForAction(NavigationActions.init())
			local fooBarState = TestRouter.getStateForAction(
				NavigationActions.navigate({ routeName = "bar" }),
				initialState
			)
			local fooBarBazState = TestRouter.getStateForAction(
				NavigationActions.navigate({ routeName = "baz" }),
				fooBarState
			)

			expect(fooBarBazState.index).to.equal(3)
			expect(fooBarBazState.routes[3].routeName).to.equal("baz")

			local fooState = TestRouter.getStateForAction(
				NavigationActions.navigate({ routeName = "foo" }),
				fooBarBazState
			)

			expect(fooState.index).to.equal(1)
			expect(#fooState.routes).to.equal(1)
			expect(fooState.routes[1].routeName).to.equal("foo")
		end)

		it("Navigate pushes duplicate routeName if unique key is provided", function()
			local TestRouter = StackRouter({
				{ foo = { screen = function() return Roact.createElement("Frame") end } },
				{ bar = { screen = function() return Roact.createElement("Frame") end } },
			})
			local initState = TestRouter.getStateForAction(NavigationActions.init())
			local pushedState = TestRouter.getStateForAction(
				NavigationActions.navigate({ routeName = "bar" }),
				initState
			)

			expect(pushedState.index).to.equal(2)
			expect(pushedState.routes[2].routeName).to.equal("bar")

			local pushedTwiceState = TestRouter.getStateForAction(
				NavigationActions.navigate({ routeName = "bar", key = "new-unique-key!" }),
				pushedState
			)

			expect(pushedTwiceState.index).to.equal(3)
			expect(pushedTwiceState.routes[3].routeName).to.equal("bar")
		end)

		it("Navigate from top propagates to any arbitary depth of stacks", function()
			local GrandChildNavigator = Roact.Component:extend("GrandChildNavigator")
			function GrandChildNavigator:render()
				return Roact.createElement("Frame")
			end

			GrandChildNavigator.router = StackRouter({
				{ Quux = { screen = function() return Roact.createElement("Frame") end } },
				{ Corge = { screen = function() return Roact.createElement("Frame") end } },
			})

			local ChildNavigator = Roact.Component:extend("ChildNavigator")
			function ChildNavigator:render()
				return Roact.createElement("Frame")
			end

			ChildNavigator.router = StackRouter({
				{ Baz = { screen = function() return Roact.createElement("Frame") end } },
				{ Woo = { screen = function() return Roact.createElement("Frame") end } },
				{ Qux = { screen = GrandChildNavigator } },
			})
			local Parent = StackRouter({
				{ Foo = { screen = function() return Roact.createElement("Frame") end } },
				{ Bar = { screen = ChildNavigator } },
			})

			local state = Parent.getStateForAction({ type = NavigationActions.Init })
			local state2 = Parent.getStateForAction(
				{ type = NavigationActions.Navigate, routeName = "Corge" },
				state
			)

			expect(state2.isTransitioning).to.equal(true)
			expect(state2.index).to.equal(2)
			expect(state2.routes[2].index).to.equal(2)
			expect(state2.routes[2].routes[2].index).to.equal(2)
			expect(state2.routes[2].routes[2].routes[2].routeName).to.equal("Corge")
		end)

		it("Navigate to initial screen is possible", function()
			local TestRouter = StackRouter({
				{ foo = { screen = function() return Roact.createElement("Frame") end } },
				{ bar = { screen = function() return Roact.createElement("Frame") end } },
			}, {
				initialRouteKey = "foo",
			})
			local initState = TestRouter.getStateForAction(NavigationActions.init())
			local pushedState = TestRouter.getStateForAction(
				NavigationActions.navigate({ routeName = "foo", key = "foo" }),
				initState
			)

			expect(pushedState).to.equal(nil)
		end)

		it("Navigate with key and without it is idempotent", function()
			local TestRouter = StackRouter({
				{ foo = { screen = function() return Roact.createElement("Frame") end } },
				{ bar = { screen = function() return Roact.createElement("Frame") end } },
			})
			local initState = TestRouter.getStateForAction(NavigationActions.init())
			local pushedState = TestRouter.getStateForAction(
				NavigationActions.navigate({ routeName = "bar", key = "a" }),
				initState
			)

			expect(pushedState.index).to.equal(2)
			expect(pushedState.routes[2].routeName).to.equal("bar")

			local pushedTwiceState = TestRouter.getStateForAction(
				NavigationActions.navigate({ routeName = "bar", key = "a" }),
				pushedState
			)

			expect(pushedTwiceState).to.equal(nil)
		end)

		-- https://github.com/react-navigation/react-navigation/issues/4063
		it("Navigate on inactive stackrouter is idempotent", function()
			local FirstChildNavigator = Roact.Component:extend("FirstChildNavigator")
			function FirstChildNavigator:render()
				return Roact.createElement("Frame")
			end

			FirstChildNavigator.router = StackRouter({
				{ First1 = function() return Roact.createElement("Frame") end },
				{ First2 = function() return Roact.createElement("Frame") end },
			})

			local SecondChildNavigator = Roact.Component:extend("SecondChildNavigator")
			function SecondChildNavigator:render()
				return Roact.createElement("Frame")
			end

			SecondChildNavigator.router = StackRouter({
				{ Second1 = function() return Roact.createElement("Frame") end },
				{ Second2 = function() return Roact.createElement("Frame") end },
			})

			local router = StackRouter({
				{ Leaf = function() return Roact.createElement("Frame") end },
				{ First = FirstChildNavigator },
				{ Second = SecondChildNavigator },
			})
			local state = router.getStateForAction({ type = NavigationActions.Init })
			local first = router.getStateForAction(
				NavigationActions.navigate({ routeName = "First2" }),
				state
			)
			local second = router.getStateForAction(
				NavigationActions.navigate({ routeName = "Second2" }),
				first
			)
			local firstAgain = router.getStateForAction(
				NavigationActions.navigate({ routeName = "First2", params = { debug = true } }),
				second
			)

			expect(#first.routes).to.equal(2)
			expect(first.index).to.equal(2)
			expect(#second.routes).to.equal(3)
			expect(second.index).to.equal(3)

			expect(firstAgain.index).to.equal(2)
			expect(#firstAgain.routes).to.equal(2)
		end)

		it("Navigate to current routeName returns null to indicate handled action", function()
			local TestRouter = StackRouter({
				{ foo = { screen = function() return Roact.createElement("Frame") end } },
				{ bar = { screen = function() return Roact.createElement("Frame") end } },
			})
			local initState = TestRouter.getStateForAction(NavigationActions.init())
			local navigatedState = TestRouter.getStateForAction(
				NavigationActions.navigate({ routeName = "foo" }),
				initState
			)

			expect(navigatedState).to.equal(nil)
		end)

		it("Push behaves like navigate, except for key", function()
			local TestRouter = StackRouter({
				{ foo = { screen = function() return Roact.createElement("Frame") end } },
				{ bar = { screen = function() return Roact.createElement("Frame") end } },
			})
			local initState = TestRouter.getStateForAction(NavigationActions.init())
			local pushedState = TestRouter.getStateForAction(
				StackActions.push({ routeName = "bar" }),
				initState
			)

			expect(pushedState.index).to.equal(2)
			expect(pushedState.routes[2].routeName).to.equal("bar")
			expect(function()
				TestRouter.getStateForAction({
					type = StackActions.Push,
					routeName = "bar",
					key = "a",
				}, pushedState)
			end).to.throw("StackRouter does not support key on the push action")
		end)

		it("Push adds new routes every time", function()
			local TestRouter = StackRouter({
				{ foo = { screen = function() return Roact.createElement("Frame") end } },
				{ bar = { screen = function() return Roact.createElement("Frame") end } },
			})
			local initState = TestRouter.getStateForAction(NavigationActions.init())
			local pushedState = TestRouter.getStateForAction(
				StackActions.push({ routeName = "bar" }),
				initState
			)

			expect(pushedState.index).to.equal(2)
			expect(pushedState.routes[2].routeName).to.equal("bar")

			local secondPushedState = TestRouter.getStateForAction(StackActions.push({
				routeName = "bar",
			}), pushedState)

			expect(secondPushedState.index).to.equal(3)
			expect(secondPushedState.routes[3].routeName).to.equal("bar")
		end)

		it("Navigate backwards with key removes leading routes", function()
			local TestRouter = StackRouter({
				{ foo = { screen = function() return Roact.createElement("Frame") end } },
				{ bar = { screen = function() return Roact.createElement("Frame") end } },
			})
			local initState = TestRouter.getStateForAction(NavigationActions.init())
			local pushedState = TestRouter.getStateForAction(
				NavigationActions.navigate({ routeName = "bar", key = "a" }),
				initState
			)
			local pushedTwiceState = TestRouter.getStateForAction(
				NavigationActions.navigate({ routeName = "bar", key = "b`" }),
				pushedState
			)
			local pushedThriceState = TestRouter.getStateForAction(
				NavigationActions.navigate({ routeName = "foo", key = "c`" }),
				pushedTwiceState
			)

			expect(#pushedThriceState.routes).to.equal(4)

			local navigatedBackToFirstRouteState = TestRouter.getStateForAction(NavigationActions.navigate({
				routeName = "foo",
				key = pushedThriceState.routes[1].key,
			}), pushedThriceState)

			expect(navigatedBackToFirstRouteState.index).to.equal(1)
			expect(#navigatedBackToFirstRouteState.routes).to.equal(1)
		end)

		it("Handle basic stack logic for plain components", function()
			local function FooScreen()
				return Roact.createElement("Frame")
			end
			local function BarScreen()
				return Roact.createElement("Frame")
			end
			local router = StackRouter({
				{ Foo = { screen = FooScreen } },
				{ Bar = { screen = BarScreen } },
			})
			local state = router.getStateForAction({ type = NavigationActions.Init })

			expectDeepEqual(state, {
				index = 1,
				isTransitioning = false,
				key = "StackRouterRoot",
				routes = {
					{ key = "id-0", routeName = "Foo" },
				},
			})

			local state2 = router.getStateForAction({
				type = NavigationActions.Navigate,
				routeName = "Bar",
				params = { name = "Zoom" },
				immediate = true,
			}, state)

			expect(state2.index).to.equal(2)
			expect(state2.routes[2].routeName).to.equal("Bar")
			expectDeepEqual(state2.routes[2].params, { name = "Zoom" })
			expect(#state2.routes).to.equal(2)

			local state3 = router.getStateForAction(
				{ type = NavigationActions.Back, immediate = true },
				state2
			)

			expectDeepEqual(state3, {
				index = 1,
				isTransitioning = false,
				key = "StackRouterRoot",
				routes = {
					{ key = "id-0", routeName = "Foo" },
				},
			})
		end)

		it("Replace action works", function()
			local TestRouter = StackRouter({
				{ foo = { screen = function() return Roact.createElement("Frame") end } },
				{ bar = { screen = function() return Roact.createElement("Frame") end } },
			})
			local initState = TestRouter.getStateForAction(
				NavigationActions.navigate({ routeName = "foo" })
			)
			local replacedState = TestRouter.getStateForAction(StackActions.replace({
				routeName = "bar",
				params = { meaning = 42 },
				key = initState.routes[1].key,
			}), initState)

			expect(replacedState.index).to.equal(1)
			expect(#replacedState.routes).to.equal(1)
			expect(replacedState.routes[1].key).never.to.equal(initState.routes[1].key)
			expect(replacedState.routes[1].routeName).to.equal("bar")
			expect(replacedState.routes[1].params.meaning).to.equal(42)

			local replacedState2 = TestRouter.getStateForAction(StackActions.replace({
				routeName = "bar",
				key = initState.routes[1].key,
				newKey = "wow",
			}), initState)

			expect(replacedState2.index).to.equal(1)
			expect(#replacedState2.routes).to.equal(1)
			expect(replacedState2.routes[1].key).to.equal("wow")
			expect(replacedState2.routes[1].routeName).to.equal("bar")
		end)

		it("Replace action returns most recent route if no key is provided", function()
			local GrandChildNavigator = Roact.Component:extend("GrandChildNavigator")
			function GrandChildNavigator:render()
				return Roact.createElement("Frame")
			end

			GrandChildNavigator.router = StackRouter({
				{ Quux = { screen = function() return Roact.createElement("Frame") end } },
				{ Corge = { screen = function() return Roact.createElement("Frame") end } },
				{ Grault = { screen = function() return Roact.createElement("Frame") end } },
			})

			local ChildNavigator = Roact.Component:extend("ChildNavigator")
			function ChildNavigator:render()
				return Roact.createElement("Frame")
			end

			ChildNavigator.router = StackRouter({
				{ Baz = { screen = function() return Roact.createElement("Frame") end } },
				{ Woo = { screen = function() return Roact.createElement("Frame") end } },
				{ Qux = { screen = GrandChildNavigator } },
			})

			local router = StackRouter({
				{ Foo = { screen = function() return Roact.createElement("Frame") end } },
				{ Bar = { screen = ChildNavigator } },
			})
			local state = router.getStateForAction({ type = NavigationActions.Init })
			local state2 = router.getStateForAction(
				{ type = NavigationActions.Navigate, routeName = "Bar" },
				state
			)
			local state3 = router.getStateForAction(
				{ type = NavigationActions.Navigate, routeName = "Qux" },
				state2
			)
			local state4 = router.getStateForAction(
				{ type = NavigationActions.Navigate, routeName = "Corge" },
				state3
			)
			local state5 = router.getStateForAction(
				{ type = NavigationActions.Navigate, routeName = "Grault" },
				state4
			)
			local replacedState = router.getStateForAction(
				StackActions.replace({ routeName = "Woo", params = { meaning = 42 } }),
				state5
			)
			local originalCurrentScreen = state5.routes[2].routes[2].routes[3]
			local replacedCurrentScreen = replacedState.routes[2].routes[2].routes[3]

			expect(replacedState.routes[2].routes[2].index).to.equal(3)
			expect(#replacedState.routes[2].routes[2].routes).to.equal(3)
			expect(replacedCurrentScreen.key).never.to.equal(originalCurrentScreen.key)
			expect(replacedCurrentScreen.routeName).never.to.equal(originalCurrentScreen.routeName)
			expect(replacedCurrentScreen.routeName).to.equal("Woo")
			expect(replacedCurrentScreen.params.meaning).to.equal(42)
		end)

		it("Handles push transition logic with completion action", function()
			local function FooScreen()
				return Roact.createElement("Frame")
			end
			local function BarScreen()
				return Roact.createElement("Frame")
			end
			local router = StackRouter({
				{ Foo = { screen = FooScreen } },
				{ Bar = { screen = BarScreen } },
			})
			local state = router.getStateForAction({ type = NavigationActions.Init })
			local state2 = router.getStateForAction({
				type = NavigationActions.Navigate,
				routeName = "Bar",
				params = { name = "Zoom" },
			}, state)

			expect(state2 and state2.index).to.equal(2)
			expect(state2 and state2.isTransitioning).to.equal(true)

			local state3 = router.getStateForAction({
				type = StackActions.CompleteTransition,
				toChildKey = state2.routes[2].key,
			}, state2)

			expect(state3 and state3.index).to.equal(2)
			expect(state3 and state3.isTransitioning).to.equal(false)
		end)

		it("Completion action does not work with incorrect key", function()
			local function FooScreen()
				return Roact.createElement("Frame")
			end
			local router = StackRouter({
				{ Foo = { screen = FooScreen } },
				{ Bar = { screen = FooScreen } },
			})
			local state = {
				key = "StackKey",
				index = 2,
				isTransitioning = true,
				routes = {
					{ key = "a", routeName = "Foo" },
					{ key = "b", routeName = "Foo" },
				},
			}
			local outputState = router.getStateForAction({
				type = StackActions.CompleteTransition,
				toChildKey = state.routes[state.index].key,
				key = "not StackKey",
			}, state)

			expect(outputState.isTransitioning).to.equal(true)
		end)

		it("Completion action does not work with incorrect toChildKey", function()
			local function FooScreen()
				return Roact.createElement("Frame")
			end
			local router = StackRouter({
				{ Foo = { screen = FooScreen } },
				{ Bar = { screen = FooScreen } },
			})
			local state = {
				key = "StackKey",
				index = 2,
				isTransitioning = true,
				routes = {
					{
						key = "a",
						routeName = "Foo",
					},
					{
						key = "b",
						routeName = "Foo",
					},
				},
			}
			local outputState = router.getStateForAction({
				type = StackActions.CompleteTransition,
				-- for this action to toggle isTransitioning, toChildKey should be state.routes[state.index].key,
				toChildKey = "incorrect",
				key = "StackKey",
			}, state)

			expect(outputState.isTransitioning).to.equal(true)
		end)

		it("Back action parent is prioritized over inactive child routers", function()
			local Bar = Roact.Component:extend("Bar")
			function Bar:render()
				return Roact.createElement("Frame")
			end

			Bar.router = StackRouter({
				{ baz = { screen = function() return Roact.createElement("Frame") end } },
				{ qux = { screen = function() return Roact.createElement("Frame") end } },
			})

			local TestRouter = StackRouter({
				{ foo = { screen = function() return Roact.createElement("Frame") end } },
				{ bar = { screen = Bar } },
				{ boo = { screen = function() return Roact.createElement("Frame") end } },
			})
			local state = {
				key = "top",
				index = 4,
				routes = {
					{ routeName = "foo", key = "f" },
					{
						routeName = "bar",
						key = "b",
						index = 2,
						routes = {
							{ routeName = "baz", key = "bz" },
							{ routeName = "qux", key = "bx" },
						},
					},
					{ routeName = "foo", key = "f1" },
					{ routeName = "boo", key = "z" },
				},
			}
			local testState = TestRouter.getStateForAction({ type = NavigationActions.Back }, state)

			expect(testState.index).to.equal(3)
			expect(testState.routes[2].index).to.equal(2)
		end)

		it("Handle basic stack logic for components with router", function()
			local function FooScreen()
				return Roact.createElement("Frame")
			end
			local BarScreen = Roact.Component:extend("BarScreen")
			function BarScreen:render()
				return Roact.createElement("Frame")
			end

			BarScreen.router = StackRouter({
				{ Xyz = { screen = function() return nil end } },
			})

			local router = StackRouter({
				{ Foo = { screen = FooScreen } },
				{ Bar = { screen = BarScreen } },
			})
			local state = router.getStateForAction({ type = NavigationActions.Init })

			expectDeepEqual(state, {
				index = 1,
				isTransitioning = false,
				key = "StackRouterRoot",
				routes = {
					{ key = "id-0", routeName = "Foo" },
				},
			})

			local state2 = router.getStateForAction({
				type = NavigationActions.Navigate,
				routeName = "Bar",
				params = { name = "Zoom" },
				immediate = true,
			}, state)

			expect(state2 and state2.index).to.equal(2)
			expect(state2 and state2.routes[2].routeName).to.equal("Bar")
			expectDeepEqual(state2 and state2.routes[2].params, { name = "Zoom" })
			expect(state2 and #state2.routes).to.equal(2)

			local state3 = router.getStateForAction(
				{ type = NavigationActions.Back, immediate = true },
				state2
			)

			expectDeepEqual(state3, {
				index = 1,
				isTransitioning = false,
				key = "StackRouterRoot",
				routes = {
					{ key = "id-0", routeName = "Foo" },
				},
			})
		end)

		-- deviation: `getPathAndParamsForState` not implemented
		itSKIP("Gets deep path (stack behavior)", function()
			local ScreenA = Roact.Component:extend("ScreenA")
			function ScreenA:render()
				return Roact.createElement("Frame")
			end
			local function ScreenB()
				return Roact.createElement("Frame")
			end

			ScreenA.router = StackRouter({
				{ Boo = { path = "boo", screen = ScreenB } },
				{ Baz = { path = "baz/:bazId", screen = ScreenB } },
			})
			local router = StackRouter({
				{ Foo = { path = "f/:id", screen = ScreenA } },
				{ Bar = { screen = ScreenB } },
			})

			local state = {
				index = 1,
				isTransitioning = false,
				routes = {
					{
						index = 2,
						key = "Foo",
						routeName = "Foo",
						params = { id = "123" },
						routes = {
							{ key = "Boo", routeName = "Boo" },
							{
								key = "Baz",
								routeName = "Baz",
								params = { bazId = "321" },
							},
						},
					},
					{ key = "Bar", routeName = "Bar" },
				},
			}
			local pathAndParam = router.getPathAndParamsForState(state)
			local path = pathAndParam.path
			local params = pathAndParam.params

			expect(path).to.equal("f/123/baz/321")
			expectDeepEqual(params, {})
		end)

		it("Handle goBack identified by key", function()
			local function FooScreen()
				return Roact.createElement("Frame")
			end
			local function BarScreen()
				return Roact.createElement("Frame")
			end
			local router = StackRouter({
				{ Foo = { screen = FooScreen } },
				{ Bar = { screen = BarScreen } },
			})
			local state = router.getStateForAction({ type = NavigationActions.Init })
			local state2 = router.getStateForAction({
				type = NavigationActions.Navigate,
				routeName = "Bar",
				immediate = true,
				params = { name = "Zoom" },
			}, state)
			local state3 = router.getStateForAction({
				type = NavigationActions.Navigate,
				routeName = "Bar",
				immediate = true,
				params = { name = "Foo" },
			}, state2)
			local state4 = router.getStateForAction({
				type = NavigationActions.Back,
				key = "wrongKey",
			}, state3)

			expectDeepEqual(state3, state4)

			local state5 = router.getStateForAction({
				type = NavigationActions.Back,
				key = state3 and state3.routes[2].key,
				immediate = true,
			}, state4)

			expectDeepEqual(state5, state)
		end)

		it("Handle initial route navigation", function()
			local function FooScreen()
				return Roact.createElement("Frame")
			end
			local function BarScreen()
				return Roact.createElement("Frame")
			end
			local router = StackRouter({
				{ Foo = { screen = FooScreen } },
				{ Bar = { screen = BarScreen } },
			}, {
				initialRouteName = "Bar",
			})
			local state = router.getStateForAction({ type = NavigationActions.Init })

			expectDeepEqual(state, {
				index = 1,
				isTransitioning = false,
				key = "StackRouterRoot",
				routes = {
					{ key = "id-0", routeName = "Bar" },
				},
			})
		end)

		it("Initial route params appear in nav state", function()
			local function FooScreen()
				return Roact.createElement("Frame")
			end
			local router = StackRouter({
				{ Foo = { screen = FooScreen } },
			}, {
				initialRouteName = "Foo",
				initialRouteParams = { foo = "bar" },
			})
			local state = router.getStateForAction({ type = NavigationActions.Init })

			expectDeepEqual(state, {
				index = 1,
				isTransitioning = false,
				key = "StackRouterRoot",
				routes = {
					{
						key = state and state.routes[1].key,
						routeName = "Foo",
						params = { foo = "bar" },
					},
				},
			})
		end)

		it("params in route config are merged with initialRouteParams", function()
			local function FooScreen()
				return Roact.createElement("Frame")
			end
			local router = StackRouter({
				{
					Foo = {
						screen = FooScreen,
						params = { foo = "not-bar", meaning = 42 },
					},
				},
			}, {
				initialRouteName = "Foo",
				initialRouteParams = { foo = "bar" },
			})
			local state = router.getStateForAction({ type = NavigationActions.Init })

			expectDeepEqual(state, {
				index = 1,
				isTransitioning = false,
				key = "StackRouterRoot",
				routes = {
					{
						key = state and state.routes[1].key,
						routeName = "Foo",
						params = { foo = "bar", meaning = 42 },
					},
				},
			})
		end)

		it("Action params appear in nav state", function()
			local function FooScreen()
				return Roact.createElement("Frame")
			end
			local function BarScreen()
				return Roact.createElement("Frame")
			end
			local router = StackRouter({
				{ Foo = { screen = FooScreen } },
				{ Bar = { screen = BarScreen } },
			})
			local state = router.getStateForAction({ type = NavigationActions.Init })
			local state2 = router.getStateForAction({
				type = NavigationActions.Navigate,
				routeName = "Bar",
				params = { bar = "42" },
				immediate = true,
			}, state)

			expect(state2).never.equal(nil)
			expect(state2 and state2.index).to.equal(2)
			expectDeepEqual(state2 and state2.routes[2].params, { bar = "42" })
		end)

		it("Handles the SetParams action", function()
			local router = StackRouter({
				{ Foo = { screen = function() return Roact.createElement("Frame") end } },
				{ Bar = { screen = function() return Roact.createElement("Frame") end } },
			}, {
				initialRouteName = "Bar",
				initialRouteParams = { name = "Zoo" },
			})
			local state = router.getStateForAction({ type = NavigationActions.Init })
			local key = state and state.routes[1].key
			local state2 = key and router.getStateForAction({
				type = NavigationActions.SetParams,
				params = { name = "Qux" },
				key = key,
			}, state)

			expect(state2 and state2.index).to.equal(1)
			expectDeepEqual(state2 and state2.routes[1].params, { name = "Qux" })
		end)

		it("Handles the SetParams action for inactive routes", function()
			local router = StackRouter({
				{ Foo = { screen = function() return Roact.createElement("Frame") end } },
				{ Bar = { screen = function() return Roact.createElement("Frame") end } },
			}, {
				initialRouteName = "Bar",
				initialRouteParams = { name = "Zoo" },
			})
			local initialState = {
				index = 2,
				routes = {
					{
						key = "RouteA",
						routeName = "Foo",
						params = { name = "InitialParam", other = "Unchanged" },
					},
					{ key = "RouteB", routeName = "Bar", params = {} },
				},
			}
			local state = router.getStateForAction({
				type = NavigationActions.SetParams,
				params = {
					name = "NewParam",
				},
				key = "RouteA",
			}, initialState)

			expect(state.index).to.equal(2)
			expect(state.routes[1].params, {
				name = "NewParam",
				other = "Unchanged",
			})
		end)

		it("Handles the setParams action with nested routers", function()
			local ChildNavigator = Roact.Component:extend("ChildNavigator")
			function ChildNavigator:render()
				return Roact.createElement("Frame")
			end

			ChildNavigator.router = StackRouter({
				{ Baz = { screen = function() return Roact.createElement("Frame") end } },
				{ Qux = { screen = function() return Roact.createElement("Frame") end } },
			})

			local router = StackRouter({
				{ Foo = { screen = ChildNavigator } },
				{ Bar = { screen = function() return Roact.createElement("Frame") end } },
			})
			local state = router.getStateForAction({ type = NavigationActions.Init })
			local state2 = router.getStateForAction({
				type = NavigationActions.SetParams,
				params = { name = "foobar" },
				key = "id-0",
			}, state)

			expect(state2 and state2.index).to.equal(1)
			expectDeepEqual(state2 and state2.routes[1].routes, {
				{
					key = "id-0",
					routeName = "Baz",
					params = { name = "foobar" },
				},
			})
		end)

		it("Handles the reset action", function()
			local router = StackRouter({
				{ Foo = { screen = function() return Roact.createElement("Frame") end } },
				{ Bar = { screen = function() return Roact.createElement("Frame") end } },
			})
			local state = router.getStateForAction({ type = NavigationActions.Init })
			local state2 = router.getStateForAction({
				type = StackActions.Reset,
				actions = {
					{
						type = NavigationActions.Navigate,
						routeName = "Foo",
						params = { bar = "42" },
						immediate = true,
					},
					{
						type = NavigationActions.Navigate,
						routeName = "Bar",
						immediate = true,
					},
				},
				index = 2,
			}, state)

			expect(state2 and state2.index).to.equal(2)
			expectDeepEqual(state2 and state2.routes[1].params, { bar = "42" })
			expect(state2 and state2.routes[1].routeName).to.equal("Foo")
			expect(state2 and state2.routes[2].routeName).to.equal("Bar")
		end)

		it("Handles the reset action only with correct key set", function()
			local router = StackRouter({
				{ Foo = { screen = function() return Roact.createElement("Frame") end } },
				{ Bar = { screen = function() return Roact.createElement("Frame") end } },
			})
			local state1 = router.getStateForAction({ type = NavigationActions.Init })
			local resetAction = {
				type = StackActions.Reset,
				key = "Bad Key",
				actions = {
					{
						type = NavigationActions.Navigate,
						routeName = "Foo",
						params = { bar = "42" },
						immediate = true,
					},
					{
						type = NavigationActions.Navigate,
						routeName = "Bar",
						immediate = true,
					},
				},
				index = 2,
			}
			local state2 = router.getStateForAction(resetAction, state1)

			expect(state2).to.equal(state1)

			local state3 = router.getStateForAction(
				Cryo.Dictionary.join(resetAction, { key = state2.key }),
				state2
			)

			expect(state3 and state3.index).to.equal(2)
			expectDeepEqual(state3 and state3.routes[1].params, { bar = "42" })
			expect(state3 and state3.routes[1].routeName).to.equal("Foo")
			expect(state3 and state3.routes[2].routeName).to.equal("Bar")
		end)

		it("Handles the reset action with nested Router", function()
			local ChildRouter = StackRouter({
				{ baz = { screen = function() return Roact.createElement("Frame") end } },
			})
			local ChildNavigator = Roact.Component:extend("ChildNavigator")
			function ChildNavigator:render()
				return Roact.createElement("Frame")
			end

			ChildNavigator.router = ChildRouter

			local router = StackRouter({
				{ Foo = { screen = ChildNavigator } },
				{ Bar = { screen = function() return Roact.createElement("Frame") end } },
			})
			local state = router.getStateForAction({ type = NavigationActions.Init })
			local state2 = router.getStateForAction({
				type = StackActions.Reset,
				key = nil,
				actions = {
					{
						type = NavigationActions.Navigate,
						routeName = "Foo",
						immediate = true,
					},
				},
				index = 1,
			}, state)

			expect(state2 and state2.index).to.equal(1)
			expect(state2 and state2.routes[1].routeName).to.equal("Foo")
			expect(state2 and state2.routes[1].routes[1].routeName).to.equal("baz")
		end)

		it("Handles the reset action with a key", function()
			local ChildRouter = StackRouter({
				{ baz = { screen = function() return Roact.createElement("Frame") end } },
			})
			local ChildNavigator = Roact.Component:extend("ChildNavigator")
			function ChildNavigator:render()
				return Roact.createElement("Frame")
			end

			ChildNavigator.router = ChildRouter

			local router = StackRouter({
				{ Foo = { screen = ChildNavigator } },
				{ Bar = { screen = function() return Roact.createElement("Frame") end } },
			})
			local state = router.getStateForAction({ type = NavigationActions.Init })
			local state2 = router.getStateForAction({
				type = NavigationActions.Navigate,
				routeName = "Foo",
				immediate = true,
				action = {
					type = NavigationActions.Navigate,
					routeName = "baz",
					immediate = true,
				},
			}, state)
			local state3 = router.getStateForAction({
				type = StackActions.Reset,
				key = "Init",
				actions = {
					{
						type = NavigationActions.Navigate,
						routeName = "Foo",
						immediate = true,
					},
				},
				index = 1,
			}, state2)
			local state4 = router.getStateForAction({
				type = StackActions.Reset,
				key = nil,
				actions = {
					{
						type = NavigationActions.Navigate,
						routeName = "Bar",
						immediate = true,
					},
				},
				index = 1,
			}, state3)

			expect(state4 and state4.index).to.equal(1)
			expect(state4 and state4.routes[1].routeName).to.equal("Bar")
		end)

		it("Handles the navigate action with params and nested StackRouter", function()
			local ChildNavigator = Roact.Component:extend("ChildNavigator")
			function ChildNavigator:render()
				return Roact.createElement("Frame")
			end

			ChildNavigator.router = StackRouter({
				{ Baz = { screen = function() return Roact.createElement("Frame") end } },
			})

			local router = StackRouter({
				{ Foo = { screen = function() return Roact.createElement("Frame") end } },
				{ Bar = { screen = ChildNavigator } },
			})
			local state = router.getStateForAction({ type = NavigationActions.Init })
			local state2 = router.getStateForAction(
				{
					type = NavigationActions.Navigate,
					immediate = true,
					routeName = "Bar",
					params = { foo = "42" },
				},
				state
			)

			expectDeepEqual(state2 and state2.routes[2].params, { foo = "42" })
			expect(state2 and state2.routes[2].routes[1]).to.be.ok()
			expect(state2.routes[2].routes[1].routeName).to.equal("Baz")
			expectDeepEqual(state2.routes[2].routes[1].params, { foo = "42" })
		end)

		it("Navigate action to previous nested StackRouter causes isTransitioning start", function()
			local ChildNavigator = Roact.Component:extend("ChildNavigator")
			function ChildNavigator:render()
				return Roact.createElement("Frame")
			end

			ChildNavigator.router = StackRouter({
				{ Baz = { screen = function() return Roact.createElement("Frame") end } },
			})

			local router = StackRouter({
				{ Bar = { screen = ChildNavigator } },
				{ Foo = { screen = function() return Roact.createElement("Frame") end } },
			})
			local state = router.getStateForAction(
				{
					type = NavigationActions.Navigate,
					immediate = true,
					routeName = "Foo",
				},
				router.getStateForAction({ type = NavigationActions.Init })
			)
			local state2 = router.getStateForAction(
				{ type = NavigationActions.Navigate, routeName = "Baz" },
				state
			)

			expect(state2.index).to.equal(1)
			expect(state2.isTransitioning).to.equal(true)
		end)

		it("Handles the navigate action with params and nested StackRouter as a first action", function()
			local state = TestStackRouter.getStateForAction({
				type = NavigationActions.Navigate,
				routeName = "main",
				params = { code = "test", foo = "bar" },
				action = {
					type = NavigationActions.Navigate,
					routeName = "profile",
					params = { id = "4", code = "test", foo = "bar" },
					action = {
						type = NavigationActions.Navigate,
						routeName = "list",
						params = { id = "10259959195", code = "test", foo = "bar" },
					},
				},
			})

			expectDeepEqual(state, {
				index = 1,
				isTransitioning = false,
				key = "StackRouterRoot",
				routes = {
					{
						index = 1,
						isTransitioning = false,
						key = "id-2",
						params = { code = "test", foo = "bar" },
						routeName = "main",
						routes = {
							{
								index = 1,
								isTransitioning = false,
								key = "id-1",
								params = { code = "test", foo = "bar", id = "4" },
								routeName = "profile",
								routes = {
									{
										key = "id-0",
										params = {
											code = "test",
											foo = "bar",
											id = "10259959195",
										},
										routeName = "list",
										type = nil,
									},
								},
							},
						},
					},
				},
			})

			local state2 = TestStackRouter.getStateForAction({
				type = NavigationActions.Navigate,
				routeName = "main",
				params = { code = "", foo = "bar" },
				action = {
					type = NavigationActions.Navigate,
					routeName = "profile",
					params = { id = "4", code = "", foo = "bar" },
					action = {
						type = NavigationActions.Navigate,
						routeName = "list",
						params = { id = "10259959195", code = "", foo = "bar" },
					},
				},
			})

			expectDeepEqual(state2, {
				index = 1,
				isTransitioning = false,
				key = "StackRouterRoot",
				routes = {
					{
						index = 1,
						isTransitioning = false,
						key = "id-5",
						params = { code = "", foo = "bar" },
						routeName = "main",
						routes = {
							{
								index = 1,
								isTransitioning = false,
								key = "id-4",
								params = { code = "", foo = "bar", id = "4" },
								routeName = "profile",
								routes = {
									{
										key = "id-3",
										params = {
											code = "",
											foo = "bar",
											id = "10259959195",
										},
										routeName = "list",
										type = nil,
									},
								},
							},
						},
					},
				},
			})
		end)

		it("Handles deep navigate completion action", function()
			local LeafScreen = function()
				return Roact.createElement("Frame")
			end
			local FooScreen = Roact.Component:extend("FooScreen")
			function FooScreen:render()
				return Roact.createElement("Frame")
			end

			FooScreen.router = StackRouter({
				{ Boo = { path = "boo", screen = LeafScreen } },
				{ Baz = { path = "baz/:bazId", screen = LeafScreen } },
			})

			local router = StackRouter({
				{ Foo = { screen = FooScreen } },
				{ Bar = { screen = LeafScreen } },
			})
			local state = router.getStateForAction({ type = NavigationActions.Init })

			expect(state and state.index).to.equal(1)
			expect(state and state.routes[1].routeName).to.equal("Foo")

			local key = state and state.routes[1].key
			local state2 = router.getStateForAction(
				{ type = NavigationActions.Navigate, routeName = "Baz" },
				state
			)

			expect(state2.index).to.equal(1)
			expect(state2.isTransitioning).to.equal(false)
			expect(state2.routes[1].index).to.equal(2)
			expect(state2.routes[1].isTransitioning).to.equal(true)
			expect(not not key).to.equal(true)

			local state3 = router.getStateForAction({
				type = StackActions.CompleteTransition,
				toChildKey = state2.routes[1].routes[2].key,
			}, state2)

			expect(state3 and state3.index).to.equal(1)
			expect(state3 and state3.isTransitioning).to.equal(false)
			expect(state3 and state3.routes[1].index).to.equal(2)
			expect(state3 and state3.routes[1].isTransitioning).to.equal(false)
		end)

		it("order of handling navigate action is correct for nested stackrouters", function()
			local Screen = function()
				return Roact.createElement("Frame")
			end
			local NestedStack = Roact.Component:extend("NestedStack")
			function NestedStack:render()
				return Roact.createElement("Frame")
			end
			local nestedRouter = StackRouter({
				{ Foo = Screen },
				{ Bar = Screen },
			})

			NestedStack.router = nestedRouter

			local router = StackRouter({
				{ NestedStack = NestedStack },
				{ Bar = Screen },
				{ Baz = Screen },
			}, {
				initialRouteName = "Baz",
			})
			local state = router.getStateForAction({ type = NavigationActions.Init })

			expect(state.routes[state.index].routeName).to.equal("Baz")

			local state2 = router.getStateForAction(
				{ type = NavigationActions.Navigate, routeName = "Bar" },
				state
			)

			expect(state2.routes[state2.index].routeName).to.equal("Bar")

			local state3 = router.getStateForAction({
				type = NavigationActions.Navigate,
				routeName = "Baz",
			}, state2)

			expect(state3.routes[state3.index].routeName).to.equal("Baz")

			local state4 = router.getStateForAction({
				type = NavigationActions.Navigate,
				routeName = "Foo",
			}, state3)
			local activeState4 = state4.routes[state4.index]

			expect(activeState4.routeName).to.equal("NestedStack")
			expect(activeState4.routes[activeState4.index].routeName).to.equal("Foo")

			local state5 = router.getStateForAction(
				{ type = NavigationActions.Navigate, routeName = "Bar" },
				state4
			)
			local activeState5 = state5.routes[state5.index]

			expect(activeState5.routeName).to.equal("NestedStack")
			expect(activeState5.routes[activeState5.index].routeName).to.equal("Bar")
		end)

		it("order of handling navigate action is correct for nested stackrouters 2", function()
			local function Screen()
				return Roact.createElement("Frame")
			end
			local NestedStack = Roact.Component:extend("NestedStack")
			function NestedStack:render()
				return Roact.createElement("Frame")
			end
			local OtherNestedStack = Roact.Component:extend("OtherNestedStack")
			function OtherNestedStack:render()
				return Roact.createElement("Frame")
			end
			local nestedRouter = StackRouter({
				{ Foo = Screen },
				{ Bar = Screen },
			})
			local otherNestedRouter = StackRouter({
				{ Foo = Screen },
			})

			NestedStack.router = nestedRouter
			OtherNestedStack.router = otherNestedRouter

			local router = StackRouter({
				{ NestedStack = NestedStack },
				{ OtherNestedStack = OtherNestedStack },
				{ Bar = Screen },
			}, {
				initialRouteName = "OtherNestedStack",
			})
			local state = router.getStateForAction({ type = NavigationActions.Init })

			expect(state.routes[state.index].routeName).to.equal("OtherNestedStack")

			local state2 = router.getStateForAction(
				{ type = NavigationActions.Navigate, routeName = "Bar" },
				state
			)

			expect(state2.routes[state2.index].routeName).to.equal("Bar")

			local state3 = router.getStateForAction(
				{ type = NavigationActions.Navigate, routeName = "NestedStack" },
				state2
			)
			local state4 = router.getStateForAction(
				{ type = NavigationActions.Navigate, routeName = "Bar" },
				state3
			)
			local activeState4 = state4.routes[state4.index]

			expect(activeState4.routeName).to.equal("NestedStack")
			expect(activeState4.routes[activeState4.index].routeName).to.equal("Bar")
		end)
	end)
end
