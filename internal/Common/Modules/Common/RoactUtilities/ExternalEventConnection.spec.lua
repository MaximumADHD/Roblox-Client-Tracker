return function ()
	local Roact = require(script.Parent.Parent.Roact)
	local ExternalEventConnection = require(script.Parent.ExternalEventConnection)

	it("if mounted, should call the callback when the event is triggered", function()
		local event = Instance.new("BindableEvent")
		local count = 0

		local element = Roact.createElement(ExternalEventConnection, {
			event = event.Event,
			callback = function()
				count = count + 1
			end,
		})

		local RoactInstance = Roact.reify(element)
		event:Fire()

		expect(count).to.equal(1)

		Roact.teardown(RoactInstance)
		event:Fire()

		expect(count).to.equal(1)

		event:Destroy()
	end)

	it("should handle updating the callback or event", function()
		local firstEvent = Instance.new("BindableEvent")
		local secondEvent = Instance.new("BindableEvent")
		local count = 0
		local changeState

		local EventContainer = Roact.Component:extend("EventContainer")

		function EventContainer:init()
			self.state = {
				event = firstEvent.Event,
				callback = function()
					count = count + 1
				end,
			}
		end

		function EventContainer:render()
			return Roact.createElement(ExternalEventConnection, {
				event = self.state.event,
				callback = self.state.callback,
			})
		end

		function EventContainer:didMount()
			changeState = function(newState)
				self:setState(newState)
			end
		end

		function EventContainer:willUnmount()
			changeState = nil
		end

		Roact.reify(Roact.createElement(EventContainer))
		firstEvent:Fire()

		expect(count).to.equal(1)

		changeState({
			event = secondEvent.Event,
		})
		firstEvent:Fire()

		expect(count).to.equal(1)

		secondEvent:Fire()

		expect(count).to.equal(2)

		changeState({
			callback = function()
				-- this is intentionally blank
			end,
		})
		secondEvent:Fire()

		expect(count).to.equal(2)
		firstEvent:Destroy()
		secondEvent:Destroy()
	end)
end