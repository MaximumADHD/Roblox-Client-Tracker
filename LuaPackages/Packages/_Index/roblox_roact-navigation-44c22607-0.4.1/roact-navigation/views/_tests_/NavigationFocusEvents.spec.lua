-- upstream https://github.com/react-navigation/react-navigation/blob/9b55493e7662f4d54c21f75e53eb3911675f61bc/packages/core/src/views/__tests__/NavigationFocusEvents.test.js

return function()
	local root = script.Parent.Parent.Parent
	local Packages = root.Parent
	local Cryo = require(Packages.Cryo)
	local Roact = require(Packages.Roact)
	local NavigationFocusEvents = require(script.Parent.Parent.NavigationFocusEvents)
	local getEventManager = require(root.getEventManager)
	local NavigationActions = require(root.NavigationActions)
	local StackActions = require(root.routers.StackActions)
	local Events = require(root.Events)
	local createSpy = require(root.utils.createSpy)
	local expectDeepEqual = require(root.utils.expectDeepEqual)

	local function getNavigationMock(mock)
	  local eventManager = getEventManager("target")

	  local default = {
		state = {
			routes = {
				{ key = "a", routeName = "foo" },
				{ key = "b", routeName = "bar" },
			},
			index = 1,
		},
		isFocused = function()
			return true
		end,
		addListener = createSpy(eventManager.addListener),
		emit = eventManager.emit,
		_dangerouslyGetParent = function()
			return nil
		end,
		}

		if mock then
			return Cryo.Dictionary.join(default, mock)
		end

		return default
	end

	it("emits refocus event with current route key on refocus", function()
		local navigation = getNavigationMock()
		local onEvent = createSpy()

		Roact.mount(Roact.createElement(NavigationFocusEvents, {
			navigation = navigation,
			onEvent = onEvent.value,
		}))

		navigation.emit(Events.Refocus)

		expect(onEvent.callCount).to.equal(1)
		local key = navigation.state.routes[navigation.state.index].key
		onEvent:assertCalledWith(key, Events.Refocus)
	end)

	describe("on navigation action emitted", function()
		it("does not emit if navigation is not focused", function()
			local navigation = getNavigationMock({
				isFocused = function()
					return false
				end,
			})
			local onEvent = createSpy()

			Roact.mount(Roact.createElement(NavigationFocusEvents, {
				navigation = navigation,
				onEvent = onEvent.value,
			}))

			navigation.emit(Events.Action, {
				state = navigation.state,
				action = NavigationActions.init(),
				type = Events.Action,
			})

			expect(onEvent.callCount).to.equal(0)
		end)

		it("emits only willFocus and willBlur if state is transitioning", function()
			local state = {
				routes = {
					{ key = "First", routeName = "First" },
					{ key = "Second", routeName = "Second" },
				},
				index = 2,
				routeKeyHistory = { "First", "Second" },
				isTransitioning = true,
			}
			local action = NavigationActions.init()

			local navigation = getNavigationMock({
				state = state,
			})
			local onEvent = createSpy()

			Roact.mount(Roact.createElement(NavigationFocusEvents, {
				navigation = navigation,
				onEvent = onEvent.value,
			}))

			local lastState = {
				routes = {
					{ key = "First", routeName = "First" },
					{ key = "Second", routeName = "Second" },
				},
				index = 1,
				routeKeyHistory = { "First" },
			}
			navigation.emit(Events.Action, {
				state = state,
				lastState = lastState,
				action = action,
				type = Events.Action,
			})

			local expectedPayload = {
				action = action,
				state = { key = "Second", routeName = "Second" },
				lastState = { key = "First", routeName = "First" },
				context = "Second:INIT_Root",
				type = Events.Action,
			}

			expectDeepEqual(onEvent.calls, {
				{"Second", Events.WillFocus, expectedPayload},
				{"First", Events.WillBlur, expectedPayload},
				{"Second", Events.Action, expectedPayload},
			})
		end)

		it("emits didFocus after willFocus and didBlur after willBlur if no transitions", function()
			local state = {
				routes = {
					{ key = "First", routeName = "First" },
					{ key = "Second", routeName = "Second" },
				},
				index = 2,
				routeKeyHistory = { "First", "Second" },
			}
			local action = NavigationActions.navigate({ routeName = "Second" })

			local navigation = getNavigationMock({ state = state })
			local onEvent = createSpy()

			Roact.mount(Roact.createElement(NavigationFocusEvents, {
				navigation = navigation,
				onEvent = onEvent.value,
			}))

			local lastState = {
				routes = {
					{ key = "First", routeName = "First" },
					{ key = "Second", routeName = "Second" },
				},
				index = 1,
				routeKeyHistory = { "First" },
			}
			navigation.emit(Events.Action, {
				state = state,
				lastState = lastState,
				action = action,
				type = Events.Action,
			})

			local expectedPayload = {
				action = action,
				state = { key = "Second", routeName = "Second" },
				lastState = { key = "First", routeName = "First" },
				context = "Second:NAVIGATE_Root",
				type = Events.Action,
			}

			expectDeepEqual(onEvent.calls, {
				{"Second", Events.WillFocus, expectedPayload},
				{"Second", Events.DidFocus, expectedPayload},
				{"First", Events.WillBlur, expectedPayload},
				{"First", Events.DidBlur, expectedPayload},
				{"Second", Events.Action, expectedPayload},
			})
		end)

		it("emits didBlur and didFocus when transition ends", function()
			local initialState = {
				routes = {
					{ key = "First", routeName = "First" },
					{ key = "Second", routeName = "Second" },
				},
				index = 1,
				routeKeyHistory = { "First" },
				isTransitioning = true,
			}
			local intermediateState = {
			routes = {
				{ key = "First", routeName = "First" },
				{ key = "Second", routeName = "Second" },
			},
			index = 2,
			routeKeyHistory = { "First", "Second" },
			isTransitioning = true,
			}
			local finalState = {
				routes = {
					{ key = "First", routeName = "First" },
					{ key = "Second", routeName = "Second" },
				},
				index = 2,
				routeKeyHistory = { "First", "Second" },
				isTransitioning = false,
			}
			local actionNavigate = NavigationActions.navigate({ routeName = "Second" })
			local actionEndTransition = StackActions.completeTransition({ key = "Second" })

			local navigation = getNavigationMock({
				state = intermediateState,
			})
			local onEvent = createSpy()

			Roact.mount(Roact.createElement(NavigationFocusEvents, {
				navigation = navigation,
				onEvent = onEvent.value,
			}))

			navigation.emit(Events.Action, {
				state = intermediateState,
				lastState = initialState,
				action = actionNavigate,
				type = Events.Action,
			})

			local expectedPayloadNavigate = {
				action = actionNavigate,
				state = { key = "Second", routeName = "Second" },
				lastState = { key = "First", routeName = "First" },
				context = "Second:NAVIGATE_Root",
				type = Events.Action,
			}

			expectDeepEqual(onEvent.calls, {
				{"Second", Events.WillFocus, expectedPayloadNavigate},
				{"First", Events.WillBlur, expectedPayloadNavigate},
				{"Second", Events.Action, expectedPayloadNavigate},
			})
			onEvent:mockClear()

			navigation.emit(Events.Action, {
				state = finalState,
				lastState = intermediateState,
				action = actionEndTransition,
				type = Events.Action,
			})

			local expectedPayloadEndTransition = {
				action = actionEndTransition,
				state = { key = "Second", routeName = "Second" },
				lastState = { key = "Second", routeName = "Second" },
				context = "Second:COMPLETE_TRANSITION_Root",
				type = Events.Action,
			}

			expectDeepEqual(onEvent.calls, {
				{"First", Events.DidBlur, expectedPayloadEndTransition},
				{"Second", Events.DidFocus, expectedPayloadEndTransition},
				{"Second", Events.Action, expectedPayloadEndTransition},
			})
		end)
	end)

	describe("on willFocus emitted", function()
		it("emits didFocus after willFocus if no transition", function()
			local navigation = getNavigationMock({
				state = {
					routes = {
						{ key = "FirstLanding", routeName = "FirstLanding" },
						{ key = "Second", routeName = "Second" },
					},
					index = 1,
					key = "First",
					routeName = "First",
				},
			})
			local onEvent = createSpy()

			Roact.mount(Roact.createElement(NavigationFocusEvents, {
				navigation = navigation,
				onEvent = onEvent.value,
			}))

			local lastState = { key = "Third", routeName = "Third" }
			local action = NavigationActions.navigate({ routeName = "First" })

			navigation.emit(Events.WillFocus, {
				lastState = lastState,
				action = action,
				context = "First:NAVIGATE_Root",
				type = Events.Action,
			})

			local expectedPayload = {
				action = action,
				state = { key = "FirstLanding", routeName = "FirstLanding" },
				context =
					"FirstLanding:NAVIGATE_First:NAVIGATE_Root",
				type = Events.Action,
			}

			expectDeepEqual(onEvent.calls, {
				{"FirstLanding", Events.WillFocus, expectedPayload},
				{"FirstLanding", Events.DidFocus, expectedPayload},
			})

			onEvent:mockClear()

			-- the nested navigator might emit a didFocus that should be ignored
			navigation.emit(Events.DidFocus, {
				lastState = lastState,
				action = action,
				context = "First:NAVIGATE_Root",
				type = Events.Action,
			})

			expect(onEvent.callCount).to.equal(0)
		end)
	end)
end
