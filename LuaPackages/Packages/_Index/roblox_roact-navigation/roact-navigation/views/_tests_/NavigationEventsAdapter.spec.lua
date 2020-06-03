return function()
	local Roact = require(script.Parent.Parent.Parent.Parent.Roact)
	local NavigationEvents = require(script.Parent.Parent.Parent.NavigationEvents)
	local NavigationEventsAdapter = require(script.Parent.Parent.NavigationEventsAdapter)

	it("should subscribe to events for each registered handler", function()
		local mockNavContext = {
			subscribedHandlers = {},
			calledHandlers = {},
		}

		function mockNavContext:makeHandler(symbol)
			return function()
				self.calledHandlers[symbol] = true
			end
		end

		function mockNavContext.addListener(symbol, callback)
			mockNavContext.subscribedHandlers[symbol] = callback
			return {
				disconnect = function()
					mockNavContext.subscribedHandlers[symbol] = nil
				end
			}
		end

		local adapter = Roact.createElement(NavigationEventsAdapter, {
			navigation = mockNavContext,
			[NavigationEvents.WillFocus] = mockNavContext:makeHandler(NavigationEvents.WillFocus),
			[NavigationEvents.DidFocus] = mockNavContext:makeHandler(NavigationEvents.DidFocus),
			[NavigationEvents.WillBlur] = mockNavContext:makeHandler(NavigationEvents.WillBlur),
			[NavigationEvents.DidBlur] = mockNavContext:makeHandler(NavigationEvents.DidBlur),
		})

		local instance = Roact.mount(adapter)

		expect(type(mockNavContext.subscribedHandlers[NavigationEvents.WillFocus])).to.equal("function")
		expect(type(mockNavContext.subscribedHandlers[NavigationEvents.DidFocus])).to.equal("function")
		expect(type(mockNavContext.subscribedHandlers[NavigationEvents.WillBlur])).to.equal("function")
		expect(type(mockNavContext.subscribedHandlers[NavigationEvents.DidBlur])).to.equal("function")

		mockNavContext.subscribedHandlers[NavigationEvents.WillFocus]()
		expect(mockNavContext.calledHandlers[NavigationEvents.WillFocus]).to.equal(true)

		mockNavContext.subscribedHandlers[NavigationEvents.DidFocus]()
		expect(mockNavContext.calledHandlers[NavigationEvents.DidFocus]).to.equal(true)

		mockNavContext.subscribedHandlers[NavigationEvents.WillBlur]()
		expect(mockNavContext.calledHandlers[NavigationEvents.WillBlur]).to.equal(true)

		mockNavContext.subscribedHandlers[NavigationEvents.DidBlur]()
		expect(mockNavContext.calledHandlers[NavigationEvents.DidBlur]).to.equal(true)

		Roact.unmount(instance)

		expect(mockNavContext.subscribedHandlers[NavigationEvents.WillFocus]).to.equal(nil)
		expect(mockNavContext.subscribedHandlers[NavigationEvents.DidFocus]).to.equal(nil)
		expect(mockNavContext.subscribedHandlers[NavigationEvents.WillBlur]).to.equal(nil)
		expect(mockNavContext.subscribedHandlers[NavigationEvents.DidBlur]).to.equal(nil)
	end)
end
