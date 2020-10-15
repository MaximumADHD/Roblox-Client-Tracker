return function()
	local Roact = require(script.Parent.Parent.Parent.Parent.Roact)
	local AppNavigationContext = require(script.Parent.Parent.AppNavigationContext)
	local NavigationEvents = require(script.Parent.Parent.Parent.NavigationEvents)
	local withNavigationFocus = require(script.Parent.Parent.withNavigationFocus)

	it("should pass focused=true when initially focused", function()
		local testNavigation, testFocused
		local component = function()
			return withNavigationFocus(function(navigation, focused)
				testNavigation = navigation
				testFocused = focused
				return nil
			end)
		end

		local navigationProp = {
			isFocused = function()
				return true
			end,
			addListener = function()
				return {
					disconnect = function() end
				}
			end
		}

		local rootElement = Roact.createElement(AppNavigationContext.Provider, {
			navigation = navigationProp,
		}, {
			child = Roact.createElement(component)
		})

		local instance = Roact.mount(rootElement)
		expect(testNavigation).to.equal(navigationProp)
		expect(testFocused).to.equal(true)

		Roact.unmount(instance)
	end)

	it("should pass focused=false when initially unfocused", function()
		local testNavigation, testFocused
		local component = function()
			return withNavigationFocus(function(navigation, focused)
				testNavigation = navigation
				testFocused = focused
				return nil
			end)
		end

		local navigationProp = {
			isFocused = function()
				return false
			end,
			addListener = function()
				return {
					disconnect = function() end
				}
			end
		}

		local rootElement = Roact.createElement(AppNavigationContext.Provider, {
			navigation = navigationProp,
		}, {
			child = Roact.createElement(component)
		})

		local instance = Roact.mount(rootElement)
		expect(testNavigation).to.equal(navigationProp)
		expect(testFocused).to.equal(false)

		Roact.unmount(instance)
	end)

	it("should re-render and set focused status for events", function()
		local testListeners = {}
		local testFocused = false
		local component = function()
			return withNavigationFocus(function(navigation, focused)
				testFocused = focused
				return nil
			end)
		end

		local navigationProp = {
			isFocused = function()
				return false
			end,
			addListener = function(event, listener)
				testListeners[event] = listener
				return {
					disconnect = function()
						testListeners[event] = nil
					end
				}
			end
		}

		local rootElement = Roact.createElement(AppNavigationContext.Provider, {
			navigation = navigationProp,
		}, {
			child = Roact.createElement(component)
		})

		local instance = Roact.mount(rootElement)
		expect(testFocused).to.equal(false)
		expect(type(testListeners[NavigationEvents.DidFocus])).to.equal("function")
		expect(type(testListeners[NavigationEvents.WillBlur])).to.equal("function")

		testListeners[NavigationEvents.DidFocus]()
		expect(testFocused).to.equal(true)

		testListeners[NavigationEvents.WillBlur]()
		expect(testFocused).to.equal(false)

		Roact.unmount(instance)
		expect(testListeners[NavigationEvents.DidFocus]).to.equal(nil)
		expect(testListeners[NavigationEvents.WillBlur]).to.equal(nil)
	end)

	it("should throw when renderProp is not provided", function()
		local success, err = pcall(function()
			withNavigationFocus(nil)
		end)

		expect(success).to.equal(false)
		expect(string.find(err,
			"withNavigationFocus must be passed a render prop")).to.never.equal(nil)
	end)

	it("should throw when used outside of a navigation provider", function()
		local component = function()
			return withNavigationFocus(function(navigation, focused)

			end)
		end

		local element = Roact.createElement(component)

		local success, _ = pcall(function()
			Roact.unmount(Roact.mount(element))
		end)

		expect(success).to.equal(false)
		-- We do not test the message because NavigationConsumer gets in the way here.
	end)
end
