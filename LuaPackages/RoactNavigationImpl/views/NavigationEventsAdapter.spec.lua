return function()
	local CoreGui = game:GetService("CoreGui")
	local Roact = require(CoreGui.RobloxGui.Modules.Common.Roact)
	local NavigationEvents = require(script.Parent.Parent.NavigationEvents)
	local NavigationEventsAdapter = require(script.Parent.NavigationEventsAdapter)

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

		function mockNavContext:addListener(symbol, callback)
			self.subscribedHandlers[symbol] = callback
			return {
				disconnect = function()
					self.subscribedHandlers[symbol] = nil
				end
			}
		end

		local adapter = Roact.createElement(NavigationEventsAdapter, {
			navigation = mockNavContext,
			onWillFocus = mockNavContext:makeHandler(NavigationEvents.WillFocus),
			onDidFocus = mockNavContext:makeHandler(NavigationEvents.DidFocus),
			onWillBlur = mockNavContext:makeHandler(NavigationEvents.WillBlur),
			onDidBlur = mockNavContext:makeHandler(NavigationEvents.DidBlur),
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
