-- upstream https://github.com/react-navigation/react-navigation/blob/9b55493e7662f4d54c21f75e53eb3911675f61bc/packages/core/src/__tests__/NavigationFocusEvents.test.js
local RunService = game:GetService("RunService")

return function()
	local root = script.Parent.Parent
	local Packages = root.Parent

	local TabRouter = require(root.routers.TabRouter)
	local createAppContainer = require(root.createAppContainer)
	local createNavigator = require(root.navigators.createNavigator)
	local Events = require(root.Events)
	local NavigationActions = require(root.NavigationActions)
	local createSpy = require(root.utils.createSpy)

	local Cryo = require(Packages.Cryo)
	local Roact = require(Packages.Roact)

	-- deviation: utility function moved out of test scope because
	-- it is shared across both tests
	local function createTestNavigator(routeConfigMap, config)
		config = config or {}
		local router = TabRouter(routeConfigMap, config)

		return createNavigator(
			function(props)
				local navigation = props.navigation
				local descriptors = props.descriptors

				local children = Cryo.List.foldLeft(navigation.state.routes, function(acc, route)
					local Comp = descriptors[route.key].getComponent()
					acc[route.key] = Roact.createElement(Comp, {
						key = route.key,
						navigation = descriptors[route.key].navigation
					})
					return acc
				end, {})

				return Roact.createFragment(children)
			end,
			router,
			config
		)
	end

	local function waitUntil(predicate, timeout)
		timeout = timeout or 1
		local waitedTime = 0
		while waitedTime < timeout and not predicate() do
			waitedTime = waitedTime + RunService.Heartbeat:Wait()
		end
	end

	-- deviation: utility function moved out of test scope because
	-- it is shared across both tests
	local function createComponent(focusCallback, blurCallback)
		local TestComponent = Roact.Component:extend("TestComponent")

		function TestComponent:didMount()
			local navigation = self.props.navigation

			self.focusSub = navigation.addListener(Events.WillFocus, focusCallback)
			self.blurSub = navigation.addListener(Events.WillBlur, blurCallback)
		end

		function TestComponent:willUnmount()
			self.focusSub.remove()
			self.blurSub.remove()
		end

		function TestComponent:render()
			return nil
		end

		return TestComponent
	end

	it("fires focus and blur events in root navigator", function()
		local firstFocusCallback = createSpy()
		local firstBlurCallback = createSpy()

		local secondFocusCallback = createSpy()
		local secondBlurCallback = createSpy()

		local thirdFocusCallback = createSpy()
		local thirdBlurCallback = createSpy()

		local fourthFocusCallback = createSpy()
		local fourthBlurCallback = createSpy()

		local Navigator = createAppContainer(
			createTestNavigator({
				{ first = createComponent(firstFocusCallback.value, firstBlurCallback.value) },
				{ second = createComponent(secondFocusCallback.value, secondBlurCallback.value) },
				{ third = createComponent(thirdFocusCallback.value, thirdBlurCallback.value) },
				{ fourth = createComponent(fourthFocusCallback.value, fourthBlurCallback.value) },
			})
		)

		local dispatch
		local element = Roact.createElement(Navigator, {
			externalDispatchConnector = function(currentDispatch)
				dispatch = currentDispatch
				return function ()
					dispatch = nil
				end
			end
		})

		Roact.mount(element)

		waitUntil(function()
			return firstFocusCallback.callCount > 0
		end)

		expect(firstFocusCallback.callCount).to.equal(1)
		expect(firstBlurCallback.callCount).to.equal(0)
		expect(secondFocusCallback.callCount).to.equal(0)
		expect(secondBlurCallback.callCount).to.equal(0)
		expect(thirdFocusCallback.callCount).to.equal(0)
		expect(thirdBlurCallback.callCount).to.equal(0)
		expect(fourthFocusCallback.callCount).to.equal(0)
		expect(fourthBlurCallback.callCount).to.equal(0)

		dispatch(NavigationActions.navigate({ routeName = 'second' }))

		waitUntil(function()
			return firstBlurCallback.callCount > 0
		end)

		expect(firstBlurCallback.callCount).to.equal(1)
		expect(secondFocusCallback.callCount).to.equal(1)

		dispatch(NavigationActions.navigate({ routeName = 'fourth' }))

		waitUntil(function()
			return secondBlurCallback.callCount > 0
		end)

		expect(firstFocusCallback.callCount).to.equal(1)
		expect(firstBlurCallback.callCount).to.equal(1)
		expect(secondFocusCallback.callCount).to.equal(1)
		expect(secondBlurCallback.callCount).to.equal(1)
		expect(thirdFocusCallback.callCount).to.equal(0)
		expect(thirdBlurCallback.callCount).to.equal(0)
		expect(fourthFocusCallback.callCount).to.equal(1)
		expect(fourthBlurCallback.callCount).to.equal(0)
	end)

	it('fires focus and blur events in nested navigator', function()
		local firstFocusCallback = createSpy()
		local firstBlurCallback = createSpy()

		local secondFocusCallback = createSpy()
		local secondBlurCallback = createSpy()

		local thirdFocusCallback = createSpy()
		local thirdBlurCallback = createSpy()

		local fourthFocusCallback = createSpy()
		local fourthBlurCallback = createSpy()

		local Navigator = createAppContainer(
			createTestNavigator({
				{ first = createComponent(firstFocusCallback.value, firstBlurCallback.value) },
				{ second = createComponent(secondFocusCallback.value, secondBlurCallback.value) },
				{
					nested = createTestNavigator({
						{ third = createComponent(thirdFocusCallback.value, thirdBlurCallback.value) },
						{ fourth = createComponent(fourthFocusCallback.value, fourthBlurCallback.value) },
					})
				},
			})
		)

		local dispatch
		local element = Roact.createElement(Navigator, {
			externalDispatchConnector = function(currentDispatch)
				dispatch = currentDispatch
				return function ()
					dispatch = nil
				end
			end
		})

		Roact.mount(element)

		waitUntil(function()
			return firstFocusCallback.callCount > 0
		end)

		expect(thirdFocusCallback.callCount).to.equal(0)
		expect(firstFocusCallback.callCount).to.equal(1)

		dispatch(NavigationActions.navigate({ routeName = 'nested' }))

		waitUntil(function()
			return thirdFocusCallback.callCount > 0
		end)

		expect(firstFocusCallback.callCount).to.equal(1)
		expect(fourthFocusCallback.callCount).to.equal(0)
		expect(thirdFocusCallback.callCount).to.equal(1)

		dispatch(NavigationActions.navigate({ routeName = 'second' }))

		waitUntil(function()
			return secondFocusCallback.callCount > 0
		end)

		expect(thirdFocusCallback.callCount).to.equal(1)
		expect(secondFocusCallback.callCount).to.equal(1)
		expect(fourthBlurCallback.callCount).to.equal(0)

		dispatch(NavigationActions.navigate({ routeName = 'nested' }))

		waitUntil(function()
			return thirdFocusCallback.callCount > 1
		end)

		expect(firstBlurCallback.callCount).to.equal(1)
		expect(secondBlurCallback.callCount).to.equal(1)
		expect(thirdFocusCallback.callCount).to.equal(2)
		expect(fourthFocusCallback.callCount).to.equal(0)

		dispatch(NavigationActions.navigate({ routeName = 'third' }))

		expect(fourthBlurCallback.callCount).to.equal(0)
		expect(thirdFocusCallback.callCount).to.equal(2)

		dispatch(NavigationActions.navigate({ routeName = 'first' }))

		waitUntil(function()
			return firstFocusCallback.callCount > 1
		end)

		expect(firstFocusCallback.callCount).to.equal(2)
		expect(thirdBlurCallback.callCount).to.equal(2)

		dispatch(NavigationActions.navigate({ routeName = 'fourth' }))

		waitUntil(function()
			return fourthFocusCallback.callCount > 0
		end)

		expect(fourthFocusCallback.callCount).to.equal(1)
		expect(thirdBlurCallback.callCount).to.equal(2)
		expect(firstBlurCallback.callCount).to.equal(2)

		dispatch(NavigationActions.navigate({ routeName = 'third' }))

		waitUntil(function()
			return thirdFocusCallback.callCount > 2
		end)

		expect(thirdFocusCallback.callCount).to.equal(3)
		expect(fourthBlurCallback.callCount).to.equal(1)

		-- Make sure nothing else has changed
		expect(firstFocusCallback.callCount).to.equal(2)
		expect(firstBlurCallback.callCount).to.equal(2)

		expect(secondFocusCallback.callCount).to.equal(1)
		expect(secondBlurCallback.callCount).to.equal(1)

		expect(thirdFocusCallback.callCount).to.equal(3)
		expect(thirdBlurCallback.callCount).to.equal(2)

		expect(fourthFocusCallback.callCount).to.equal(1)
		expect(fourthBlurCallback.callCount).to.equal(1)
	end)
end
