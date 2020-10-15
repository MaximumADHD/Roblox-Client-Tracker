-- upstream https://github.com/react-navigation/react-navigation/blob/fcd7d83c4c33ad1fa508c8cfe687d2fa259bfc2c/packages/core/src/routers/__tests__/SwitchRouter.test.js

return function()
	local Root = script.Parent.Parent.Parent
	local Packages = Root.Parent
	local Roact = require(Packages.Roact)
	local Cryo = require(Packages.Cryo)
	local StackRouter = require(script.Parent.Parent.StackRouter)
	local SwitchRouter = require(script.Parent.Parent.SwitchRouter)
	local NavigationActions = require(Root.NavigationActions)
	local BackBehavior = require(Root.BackBehavior)
	local expectDeepEqual = require(Root.utils.expectDeepEqual)
	local getRouterTestHelper = require(script.Parent.routerTestHelper)

	local function getExampleRouter(config)
		config = config or {}

		local function PlainScreen()
			return Roact.createElement("Frame")
		end
		local StackA = Roact.Component:extend("StackA")
		function StackA:render()
			return Roact.createElement("Frame")
		end
		local StackB = Roact.Component:extend("StackB")
		function StackB:render()
			return Roact.createElement("Frame")
		end
		local StackC = Roact.Component:extend("StackC")
		function StackC:render()
			return Roact.createElement("Frame")
		end

		StackA.router = StackRouter({
			{A1 = PlainScreen},
			{A2 = PlainScreen}
		})
		StackB.router = StackRouter({
			{B1 = PlainScreen},
			{B2 = PlainScreen}
		})
		StackC.router = StackRouter({
			{C1 = PlainScreen},
			{C2 = PlainScreen}
		})

		local router = SwitchRouter({
			{A = {screen = StackA, path = ""}},
			{B = {screen = StackB, path = "great/path"}},
			{C = {screen = StackC, path = "pathC"}}
		}, Cryo.Dictionary.join(
			{initialRouteName = "A"},
			config
		))

		return router
	end

	describe("SwitchRouter", function()
		it("resets the route when unfocusing a tab by default", function()
			local helper = getRouterTestHelper(getExampleRouter())
			local navigateTo = helper.navigateTo
			local getState = helper.getState

			navigateTo("A2")
			expect(getState().routes[1].index).to.equal(2)
			expect(#getState().routes[1].routes).to.equal(2)

			navigateTo("B")
			expect(getState().routes[1].index).to.equal(1)
			expect(#getState().routes[1].routes).to.equal(1)
		end)

		it("does not reset the route on unfocus if resetOnBlur is false", function()
			local helper = getRouterTestHelper(getExampleRouter({resetOnBlur = false}))
			local navigateTo = helper.navigateTo
			local getState = helper.getState

			navigateTo("A2")
			expect(getState().routes[1].index).to.equal(2)
			expect(#getState().routes[1].routes).to.equal(2)
			navigateTo("B")
			expect(getState().routes[1].index).to.equal(2)
			expect(#getState().routes[1].routes).to.equal(2)
		end)

		it("ignores back by default", function()
			local helper = getRouterTestHelper(getExampleRouter())
			local jumpTo = helper.jumpTo
			local back = helper.back
			local getState = helper.getState

			jumpTo("B")
			expect(getState().index).to.equal(2)

			back()
			expect(getState().index).to.equal(2)
		end)

		it("handles initialRoute backBehavior", function()
			local helper = getRouterTestHelper(getExampleRouter({
				backBehavior = BackBehavior.InitialRoute,
				initialRouteName = "B",
			}))
			local jumpTo = helper.jumpTo
			local back = helper.back
			local getState = helper.getState

			expect(getState().routeKeyHistory).to.equal(nil)
			expect(getState().index).to.equal(2)

			jumpTo("C")
			expect(getState().index).to.equal(3)

			jumpTo("A")
			expect(getState().index).to.equal(1)

			back()
			expect(getState().index).to.equal(2)

			back()
			expect(getState().index).to.equal(2)
		end)

		it("handles order backBehavior", function()
			local helper = getRouterTestHelper(getExampleRouter({
				backBehavior = BackBehavior.Order,
			}))
			local navigateTo = helper.navigateTo
			local back = helper.back
			local getState = helper.getState

			expect(getState().routeKeyHistory).to.equal(nil)

			navigateTo("C")
			expect(getState().index).to.equal(3)

			back()
			expect(getState().index).to.equal(2)

			back()
			expect(getState().index).to.equal(1)

			back()
			expect(getState().index).to.equal(1)
		end)

		it("handles history backBehavior", function()
			local helper = getRouterTestHelper(getExampleRouter({
				backBehavior = BackBehavior.History,
			}))
			local navigateTo = helper.navigateTo
			local back = helper.back
			local getState = helper.getState

			expectDeepEqual(getState().routeKeyHistory, {"A"})

			navigateTo("B")
			expect(getState().index).to.equal(2)
			expectDeepEqual(getState().routeKeyHistory, {"A", "B"})

			navigateTo("A")
			expect(getState().index).to.equal(1)
			expectDeepEqual(getState().routeKeyHistory, {"B", "A"})

			navigateTo("C")
			expect(getState().index).to.equal(3)
			expectDeepEqual(getState().routeKeyHistory, {"B", "A", "C"})

			navigateTo("A")
			expect(getState().index).to.equal(1)
			expectDeepEqual(getState().routeKeyHistory, {"B", "C", "A"})

			back()
			expect(getState().index).to.equal(3)
			expectDeepEqual(getState().routeKeyHistory, {"B", "C"})

			back()
			expect(getState().index).to.equal(2)
			expectDeepEqual(getState().routeKeyHistory, {"B"})

			back()
			expect(getState().index).to.equal(2)
			expectDeepEqual(getState().routeKeyHistory, {"B"})
		end)

		it("handles history backBehavior without popping routeKeyHistory when child handles action", function()
			local helper = getRouterTestHelper(getExampleRouter({
				backBehavior = BackBehavior.History,
			}))
			local navigateTo = helper.navigateTo
			local back = helper.back
			local getState = helper.getState
			local getSubState = helper.getSubState

			expectDeepEqual(getState().routeKeyHistory, {
				"A",
			})

			navigateTo("B")
			expect(getState().index).to.equal(2)
			expectDeepEqual(getState().routeKeyHistory, {
				"A",
				"B",
			})

			navigateTo("B2")
			expect(getState().index).to.equal(2)
			expectDeepEqual(getState().routeKeyHistory, {
				"A",
				"B",
			})
			expect(getSubState(2).routeName).to.equal("B2")

			back()
			expect(getState().index).to.equal(2)
			-- "B" should not be popped when the child handles the back action
			expectDeepEqual(getState().routeKeyHistory, {
				"A",
				"B",
			})
			expect(getSubState(2).routeName).to.equal("B1")
		end)

		it("handles back and does not apply back action to inactive child", function()
			local helper = getRouterTestHelper(getExampleRouter({
				backBehavior = "initialRoute",
				resetOnBlur = false, -- Don't erase the state of substack B when we switch back to A
			}))
			local navigateTo = helper.navigateTo
			local back = helper.back
			local getSubState = helper.getSubState

			expect(getSubState(1).routeName).to.equal("A")

			navigateTo("B")
			navigateTo("B2")
			expect(getSubState(1).routeName).to.equal("B")
			expect(getSubState(2).routeName).to.equal("B2")

			navigateTo("A")
			expect(getSubState(1).routeName).to.equal("A")

			-- The back action should not switch to B. It should stay on A
			back(nil)
			expect(getSubState(1).routeName).to.equal("A")
		end)

		it("handles pop and does not apply pop action to inactive child", function()
			local helper = getRouterTestHelper(getExampleRouter({
				backBehavior = "initialRoute",
				resetOnBlur = false, -- Don't erase the state of substack B when we switch back to A
			}))
			local navigateTo = helper.navigateTo
			local pop = helper.pop
			local getSubState = helper.getSubState

			expect(getSubState(1).routeName).to.equal("A")

			navigateTo("B")
			navigateTo("B2")
			expect(getSubState(1).routeName).to.equal("B")
			expect(getSubState(2).routeName).to.equal("B2")

			navigateTo("A")
			expect(getSubState(1).routeName).to.equal("A")

			-- The pop action should not switch to B. It should stay on A
			pop()
			expect(getSubState(1).routeName).to.equal("A")
		end)

		it("handles popToTop and does not apply popToTop action to inactive child", function()
			local helper = getRouterTestHelper(getExampleRouter({
				backBehavior = "initialRoute",
				resetOnBlur = false, -- Don't erase the state of substack B when we switch back to A
			}))
			local navigateTo = helper.navigateTo
			local popToTop = helper.popToTop
			local getSubState = helper.getSubState

			expect(getSubState(1).routeName).to.equal("A")

			navigateTo("B")
			navigateTo("B2")
			expect(getSubState(1).routeName).to.equal("B")
			expect(getSubState(2).routeName).to.equal("B2")

			navigateTo("A")
			expect(getSubState(1).routeName).to.equal("A")

			-- The popToTop action should not switch to B. It should stay on A
			popToTop()
			expect(getSubState(1).routeName).to.equal("A")
		end)

		it("handles back and does switch to inactive child with matching key", function()
			local helper = getRouterTestHelper(getExampleRouter({
				backBehavior = "initialRoute",
				resetOnBlur = false, -- Don't erase the state of substack B when we switch back to A
			}))
			local navigateTo = helper.navigateTo
			local back = helper.back
			local getSubState = helper.getSubState

			expect(getSubState(1).routeName).to.equal("A")

			navigateTo("B")
			navigateTo("B2")
			expect(getSubState(1).routeName).to.equal("B")
			expect(getSubState(2).routeName).to.equal("B2")

			local b2Key = getSubState(2).key

			navigateTo("A")
			expect(getSubState(1).routeName).to.equal("A")

			-- The back action should switch to B and go back from B2 to B1
			back(b2Key)
			expect(getSubState(1).routeName).to.equal("B")
			expect(getSubState(2).routeName).to.equal("B1")
		end)

		it("handles nested actions", function()
			local helper = getRouterTestHelper(getExampleRouter())
			local navigateTo = helper.navigateTo
			local getSubState = helper.getSubState

			navigateTo("B", {
				action = {
					type = NavigationActions.Navigate,
					routeName = "B2",
				},
			})
			expect(getSubState(1).routeName).to.equal("B")
			expect(getSubState(2).routeName).to.equal("B2")
		end)

		it("handles nested actions and params simultaneously", function()
			local helper = getRouterTestHelper(getExampleRouter())
			local navigateTo = helper.navigateTo
			local getSubState = helper.getSubState

			local params1 = { foo = "bar" }
			local params2 = { bar = "baz" }

			navigateTo("B", {
				params = params1,
				action = {
					type = NavigationActions.Navigate,
					routeName = "B2",
					params = params2,
				},
			})
			expect(getSubState(1).routeName).to.equal("B")
			expectDeepEqual(getSubState(1).params, params1)
			expect(getSubState(2).routeName).to.equal("B2")
			expectDeepEqual(getSubState(2).params, params2)
		end)

		it("order of handling navigate action is correct for nested switchrouters", function()
			-- router = switch({ Nested: switch({ Foo, Bar }), Other: switch({ Foo }), Bar })
			-- if we are focused on Other and navigate to Bar, what should happen?

			local function Screen()
				return Roact.createElement("Frame")
			end
			local NestedSwitch = Roact.Component:extend("NestedSwitch")
			function NestedSwitch:render()
				return Roact.createElement("Frame")
			end
			local OtherNestedSwitch = Roact.Component:extend("OtherNestedSwitch")
			function OtherNestedSwitch:render()
				return Roact.createElement("Frame")
			end

			local nestedRouter = SwitchRouter({
				{Foo = Screen},
				{Bar = Screen},
			})
			local otherNestedRouter = SwitchRouter({
				{Foo = Screen},
			})

			NestedSwitch.router = nestedRouter
			OtherNestedSwitch.router = otherNestedRouter

			local router = SwitchRouter({
				{NestedSwitch = NestedSwitch},
				{OtherNestedSwitch = OtherNestedSwitch},
				{Bar = Screen}
			}, { initialRouteName = "OtherNestedSwitch" })

			local helper = getRouterTestHelper(router)
			local navigateTo = helper.navigateTo
			local getSubState = helper.getSubState

			expect(getSubState(1).routeName).to.equal("OtherNestedSwitch")

			navigateTo("Bar")
			expect(getSubState(1).routeName).to.equal("Bar")

			navigateTo("NestedSwitch")
			navigateTo("Bar")

			expect(getSubState(1).routeName).to.equal("NestedSwitch")
			expect(getSubState(2).routeName).to.equal("Bar")
		end)

		-- https://github.com/react-navigation/react-navigation.github.io/issues/117#issuecomment-385597628
		it("order of handling navigate action is correct for nested stackrouters", function()
			local function Screen()
				return Roact.createElement("Frame")
			end
			local MainStack = Roact.Component:extend("MainStack")
			function MainStack:render()
				return Roact.createElement("Frame")
			end
			local LoginStack = Roact.Component:extend("LoginStack")
			function LoginStack:render()
				return Roact.createElement("Frame")
			end

			MainStack.router = StackRouter({
				{Home = Screen},
				{Profile = Screen}
			})
			LoginStack.router = StackRouter({
				{Form = Screen},
				{ForgotPassword = Screen}
			})

			local router = SwitchRouter({
				{Home = Screen},
				{Login = LoginStack},
				{Main = MainStack}
			},{ initialRouteName = "Login" })

			local helper = getRouterTestHelper(router)
			local navigateTo = helper.navigateTo
			local getSubState = helper.getSubState

			expect(getSubState(1).routeName).to.equal("Login")

			navigateTo("Home")
			expect(getSubState(1).routeName).to.equal("Home")
		end)

		it("does not error for a nested navigate action in an uninitialized history router", function()
			local helper = getRouterTestHelper(getExampleRouter({
				backBehavior = "history",
			}), {skipInitializeState = true})
			local navigateTo = helper.navigateTo
			local getSubState = helper.getSubState

			navigateTo("B", {
				action = NavigationActions.navigate({ routeName = "B2" }),
			})
			expect(getSubState(1).routeName).to.equal("B")
			expect(getSubState(2).routeName).to.equal("B2")
		end)
	end)
end
