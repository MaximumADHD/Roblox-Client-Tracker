-- upstream: https://github.com/react-navigation/react-navigation/blob/a57e47786c5654a3803582b2c4953547164f26a0/packages/core/src/routers/__tests__/Routers.test.js

return function()
	local Root = script.Parent.Parent.Parent
	local Packages = Root.Parent

	local Cryo = require(Packages.Cryo)
	local Roact = require(Packages.Roact)
	local StackRouter = require(script.Parent.Parent.StackRouter)
	local TabRouter = require(script.Parent.Parent.TabRouter)
	local SwitchRouter = require(script.Parent.Parent.SwitchRouter)
	local NavigationActions = require(Root.NavigationActions)
	local StackActions = require(Root.routers.StackActions)
	local KeyGenerator = require(Root.utils.KeyGenerator)
	local expectDeepEqual = require(Root.utils.expectDeepEqual)

	beforeEach(function()
		KeyGenerator._TESTING_ONLY_normalize_keys()
	end)

	local ROUTERS = {
		TabRouter = TabRouter,
		StackRouter = StackRouter,
		SwitchRouter = SwitchRouter,
	}

	local function dummyEventSubscriber()
		return { remove = function() end }
	end

	for routerName in pairs(ROUTERS) do
		local Router = ROUTERS[routerName]

		describe(("General router features - %s"):format(routerName), function()
			it(("title is configurable using navigationOptions and getScreenOptions - %s"):format(routerName), function()
				local FooView = Roact.Component:extend("FooView")
				function FooView:render()
					return Roact.createElement("Frame")
				end

				local BarView = Roact.Component:extend("BarView")
				function BarView:render()
					return Roact.createElement("Frame")
				end
				BarView.navigationOptions = {
					title = "BarTitle",
				}

				local BazView = Roact.Component:extend("BazView")
				function BazView:render()
					return Roact.createElement("Frame")
				end
				BazView.navigationOptions = function(options)
					local navigation = options.navigation

					return { title = ("Baz-%s"):format(navigation.state.params.id) }
				end

				local router = Router({
					{ Foo = { screen = FooView } },
					{ Bar = { screen = BarView } },
					{ Baz = { screen = BazView } },
				})
				local routes = {
					{ key = "A", routeName = "Foo" },
					{ key = "B", routeName = "Bar" },
					{ key = "A", routeName = "Baz", params = { id = "123" } },
				}

				expect(
					router.getScreenOptions(
						{
							state = routes[1],
							dispatch = function() return false end,
							addListener = dummyEventSubscriber,
						},
						{}
					).title
				).to.equal(nil)
				expect(
					router.getScreenOptions(
						{
							state = routes[2],
							dispatch = function() return false end,
							addListener = dummyEventSubscriber,
						},
						{}
					).title
				).to.equal("BarTitle")
				expect(
					router.getScreenOptions(
						{
							state = routes[3],
							dispatch = function() return false end,
							addListener = dummyEventSubscriber,
						},
						{}
					).title
				).to.equal("Baz-123")
			end)

			it(("set params works in %s"):format(routerName), function()
				local FooView = Roact.Component:extend("FooView")

				function FooView:render()
					return Roact.createElement("Frame")
				end

				local router = Router({
					{ Foo = { screen = FooView } },
					{ Bar = { screen = FooView } },
				})
				local initState = router.getStateForAction(NavigationActions.init())
				local initRoute = initState.routes[initState.index]

				expect(initRoute.params).to.equal(nil)

				local state0 = router.getStateForAction(
					NavigationActions.setParams({ params = {foo = 42}, key = initRoute.key }),
					initState
				)

				expect(state0.routes[state0.index].params.foo).to.equal(42)
			end)

			it("merges existing params when set params on existing state", function()
				local function Screen()
					return Roact.createElement("Frame")
				end
				local router = Router({
					{ Foo = { screen = Screen, params = { a = 1 } } },
				})
				local key = "Foo"
				local state = router.getStateForAction({
					type = NavigationActions.Init,
					key = key,
				})

				expect(state.index).to.equal(1)
				expect(state.routes[1].key).to.equal(key)
				expectDeepEqual(state.routes[1].params, { a = 1 })

				local newState = router.getStateForAction(
					NavigationActions.setParams({ key = key, params = { b = 2 } }),
					state
				)

				expectDeepEqual(newState.routes[newState.index].params, { a = 1, b = 2 })
			end)

			it("merges params when setting params during init", function()
				local function Screen()
					return Roact.createElement("Frame")
				end
				local router = Router({
					{ Foo = { screen = Screen, params = { a = 1 } } },
				})
				local newState = router.getStateForAction(
					NavigationActions.setParams({ key = "Foo", params = { b = 2 } })
				)

				expectDeepEqual(
					newState.routes[newState.index].params,
					{ a = 1, b = 2 }
				)
			end)
		end)
	end

	it("Nested navigate behavior test", function()
		local function Leaf()
			return Roact.createElement("Frame")
		end
		local First = Roact.Component:extend("First")
		function First:render()
			return Roact.createElement("Frame")
		end

		First.router = StackRouter({
			{ First1 = Leaf },
			{ First2 = Leaf },
		})

		local Second = Roact.Component:extend("Second")
		function Second:render()
			return Roact.createElement("Frame")
		end

		Second.router = StackRouter({
			{ Second1 = Leaf },
			{ Second2 = Leaf },
		})

		local Main = Roact.Component:extend("Main")
		function Main:render()
			return Roact.createElement("Frame")
		end

		Main.router = StackRouter({
			{ First = First },
			{ Second = Second },
		})

		local TestRouter = SwitchRouter({
			{ Login = Leaf },
			{ Main = Main },
		})
		local state1 = TestRouter.getStateForAction({ type = NavigationActions.Init })
		local state2 = TestRouter.getStateForAction(
			{ type = NavigationActions.Navigate, routeName = "First" },
			state1
		)

		expect(state2.index).to.equal(2)
		expect(state2.routes[2].index).to.equal(1)
		expect(state2.routes[2].routes[1].index).to.equal(1)

		local state3 = TestRouter.getStateForAction(
			{ type = NavigationActions.Navigate, routeName = "Second2" },
			state2
		)

		expect(state3.index).to.equal(2)
		expect(state3.routes[2].index).to.equal(2) -- second
		expect(state3.routes[2].routes[2].index).to.equal(2) -- second.second2

		local state4 = TestRouter.getStateForAction(
			{
				type = NavigationActions.Navigate,
				routeName = "First",
				action = { type = NavigationActions.Navigate, routeName = "First2" },
			},
			state3,
			true
		)

		expect(state4.index).to.equal(2) -- main
		expect(state4.routes[2].index).to.equal(1) -- first
		expect(state4.routes[2].routes[1].index).to.equal(2) -- first2

		local state5 = TestRouter.getStateForAction(
			{
				type = NavigationActions.Navigate,
				routeName = "First",
				action = { type = NavigationActions.Navigate, routeName = "First1" },
			},
			state3 -- second.second2 is active on state3
		)

		expect(state5.index).to.equal(2) -- main
		expect(state5.routes[2].index).to.equal(1) -- first
		expect(state5.routes[2].routes[1].index).to.equal(1) -- first.first1
	end)

	it("Handles no-op actions with tabs within stack router", function()
		local function BarView()
			return Roact.createElement("Frame")
		end
		local FooTabNavigator = Roact.Component:extend("FooTabNavigator")

		function FooTabNavigator:render()
			return Roact.createElement("Frame")
		end

		FooTabNavigator.router = TabRouter({
			{ Zap = { screen = BarView } },
			{ Zoo = { screen = BarView } },
		})

		local TestRouter = StackRouter({
			{ Foo = {screen = FooTabNavigator } },
			{ Bar = {screen = BarView } },
		})
		local state1 = TestRouter.getStateForAction({ type = NavigationActions.Init })
		local state2 = TestRouter.getStateForAction(
			{ type = NavigationActions.Navigate, routeName = "Qux"}
		)

		expect(state1.routes[1].key).to.equal("id-0")
		expect(state2.routes[1].key).to.equal("id-1")

		state1.routes[1].key = state2.routes[1].key

		expectDeepEqual(state1, state2)

		local state3 = TestRouter.getStateForAction(
			{ type = NavigationActions.Navigate, routeName = "Zap" },
			state2
		)

		expect(state2, state3)
	end)

	it("Handles deep action", function()
		local function BarView()
			return Roact.createElement("Frame")
		end

		local FooTabNavigator = Roact.Component:extend("FooTabNavigator")
		function FooTabNavigator:render()
			return Roact.createElement("Frame")
		end

		FooTabNavigator.router = TabRouter({
			{ Zap = {screen = BarView } },
			{ Zoo = {screen = BarView } },
		})

		local TestRouter = StackRouter({
			{ Bar = {screen = BarView} },
			{ Foo = {screen = FooTabNavigator} },
		})
		local state1 = TestRouter.getStateForAction({ type = NavigationActions.Init })
		local expectedState = {
			index = 1,
			isTransitioning = false,
			key = "StackRouterRoot",
			routes = {
				{ key = "id-0", routeName = "Bar" },
			},
		}

		expectDeepEqual(state1, expectedState)

		local state2 = TestRouter.getStateForAction(
			{
				type = NavigationActions.Navigate,
				routeName = "Foo",
				immediate = true,
				action = { type = NavigationActions.Navigate, routeName = "Zoo" },
			},
			state1
		)

		expect(state2 and state2.index).to.equal(2)
		expect(state2 and state2.routes[2].index).to.equal(2)
	end)

	it("Handles the navigate action with params", function()
		local FooTabNavigator = Roact.Component:extend("FooTabNavigator")
		function FooTabNavigator:render()
			return Roact.createElement("Frame")
		end

		FooTabNavigator.router = TabRouter({
			{ Baz = { screen = function() return Roact.createElement("Frame") end } },
			{ Boo = { screen = function() return Roact.createElement("Frame") end } },
		})

		local TestRouter = StackRouter({
			{ Foo = { screen = function() return Roact.createElement("Frame") end } },
			{ Bar = { screen = FooTabNavigator } },
		})
		local state = TestRouter.getStateForAction({ type = NavigationActions.Init })
		local state2 = TestRouter.getStateForAction(
			{
				type = NavigationActions.Navigate,
				immediate = true,
				routeName = "Bar",
				params = { foo = "42" },
			},
			state
		)

		expectDeepEqual(state2 and state2.routes[2].params, { foo = "42" })
		expectDeepEqual(state2 and state2.routes[2].routes, {
			{
				key = "Baz",
				routeName = "Baz",
				params = { foo = "42" },
			},
			{
				key = "Boo",
				routeName = "Boo",
				params = { foo = "42" },
			},
		})
	end)

	it("Handles the setParams action", function()
		local FooTabNavigator = Roact.Component:extend("FooTabNavigator")
		function FooTabNavigator:render()
			return Roact.createElement("Frame")
		end

		FooTabNavigator.router = TabRouter({
			{ Baz = { screen = function() return Roact.createElement("Frame") end } },
		})

		local TestRouter = StackRouter({
			{ Foo = { screen = FooTabNavigator } },
			{ Bar = { screen = function() return Roact.createElement("Frame") end } },
		})
		local state = TestRouter.getStateForAction({ type = NavigationActions.Init })
		local state2 = TestRouter.getStateForAction(
			{
				type = NavigationActions.SetParams,
				params = { name = "foobar" },
				key = "Baz",
			},
			state
		)

		expect(state2 and state2.index).to.equal(1)
		expectDeepEqual(state2 and state2.routes[1].routes, {
			{
				key = "Baz",
				routeName = "Baz",
				params = { name = "foobar" },
			},
		})
	end)

	it("Supports lazily-evaluated getScreen", function()
		local function BarView()
			return Roact.createElement("Frame")
		end
		local FooTabNavigator = Roact.Component:extend("FooTabNavigator")
		function FooTabNavigator:render()
			return Roact.createElement("Frame")
		end

		FooTabNavigator.router = TabRouter({
			{ Zap = { screen = BarView } },
			{ Zoo = { screen = BarView } },
		})

		local TestRouter = StackRouter({
			{ Foo = { screen = FooTabNavigator } },
			{ Bar = { getScreen = function() return BarView end } },
		})
		local state1 = TestRouter.getStateForAction({ type = NavigationActions.Init })
		local state2 = TestRouter.getStateForAction(
			{ type = NavigationActions.Navigate, immediate = true, routeName = "Qux" }
		)

		expect(state1.routes[1].key).to.equal("id-0")
		expect(state2.routes[1].key).to.equal("id-1")

		state1.routes[1].key = state2.routes[1].key

		expectDeepEqual(state1, state2)

		local state3 = TestRouter.getStateForAction(
			{ type = NavigationActions.Navigate, immediate = true, routeName = "Zap" },
			state2
		)

		expectDeepEqual(state2, state3)
	end)

	it("Does not switch tab index when TabRouter child handles COMPLETE_NAVIGATION or SET_PARAMS", function()
		local FooStackNavigator = Roact.Component:extend("FooStackNavigator")
		function FooStackNavigator:render()
			return Roact.createElement("Frame")
		end
		local function BarView()
			return Roact.createElement("Frame")
		end

		FooStackNavigator.router = StackRouter({
			{ Foo = { screen = BarView } },
			{ Bar = { screen = BarView } },
		})

		local TestRouter = TabRouter({
			{ Zap = { screen = FooStackNavigator } },
			{ Zoo = { screen = FooStackNavigator } },
		})

		local state1 = TestRouter.getStateForAction({ type = NavigationActions.Init })

		-- Navigate to the second screen in the first tab
		local state2 = TestRouter.getStateForAction(
			{ type = NavigationActions.Navigate, routeName = "Bar" },
			state1
		)

		-- Switch tabs
		local state3 = TestRouter.getStateForAction(
			{ type = NavigationActions.Navigate, routeName = "Zoo" },
			state2
		)

		local stateAfterCompleteTransition = TestRouter.getStateForAction(
			{
				type = StackActions.CompleteTransition,
				preserveFocus = true,
				key = state2.routes[1].key,
			},
			state3
		)
		local stateAfterSetParams = TestRouter.getStateForAction(
			{
				type = NavigationActions.SetParams,
				preserveFocus = true,
				key = state1.routes[1].routes[1].key,
				params = { key = "value" },
			},
			state3
		)

		expect(stateAfterCompleteTransition.index).to.equal(2)
		expect(stateAfterSetParams.index).to.equal(2)
	end)

	it("Inner actions are only unpacked if the current tab matches", function()
		local function PlainScreen()
			return Roact.createElement("Frame")
		end
		local ScreenA = Roact.Component:extend("ScreenA")
		function ScreenA:render()
			return Roact.createElement("Frame")
		end
		local ScreenB = Roact.Component:extend("ScreenB")
		function ScreenB:render()
			return Roact.createElement("Frame")
		end

		ScreenB.router = StackRouter({
			{ Baz = { screen = PlainScreen } },
			{ Zoo = { screen = PlainScreen } },
		})
		ScreenA.router = StackRouter({
			{ Bar = { screen = PlainScreen } },
			{ Boo = { screen = ScreenB } },
		})

		local TestRouter = TabRouter({
			{ Foo = { screen = ScreenA } },
		})
		local screenApreState = {
			index = 1,
			key = "Init",
			isTransitioning = false,
			routeName = "Foo",
			routes = {
				{ key = "Init", routeName = "Bar" },
			},
		}
		local preState = {
			index = 1,
			isTransitioning = false,
			routes = { screenApreState },
		}

		local function comparable(state)
			local result = {}

			if typeof(state.routeName) == "string" then
				result = Cryo.Dictionary.join(result, {
					routeName = state.routeName
				})
			end

			if typeof(state.routes) == "table" then
				result = Cryo.Dictionary.join(result, {
					routes = Cryo.List.map(state.routes, comparable)
				})
			end

			return result
		end

		local action = NavigationActions.navigate({
			routeName = "Boo",
			action = NavigationActions.navigate({ routeName = "Zoo" }),
		})

		local expectedState = ScreenA.router.getStateForAction(action, screenApreState)
		local state = TestRouter.getStateForAction(action, preState)

		local innerState = state and state.routes[1] or state

		expectDeepEqual(
			expectedState and comparable(expectedState),
			innerState and comparable(innerState)
		)
	end)
end
