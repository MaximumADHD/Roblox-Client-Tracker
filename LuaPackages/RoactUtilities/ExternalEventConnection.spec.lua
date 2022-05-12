return function ()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local ExternalEventConnection = require(script.Parent.ExternalEventConnection)
	local act = Roact.act :: (any) -> ()

	local JestGlobals = require(CorePackages.JestGlobals)
	local jestExpect = JestGlobals.expect

	it("if mounted, should call the callback when the event is triggered", function()
		local event = Instance.new("BindableEvent")
		local count = 0

		local element = Roact.createElement(ExternalEventConnection, {
			event = event.Event,
			callback = function()
				count = count + 1
			end,
		})

		local RoactInstance = Roact.mount(element)
		event:Fire()

		jestExpect(count).toBe(1)

		Roact.unmount(RoactInstance)
		event:Fire()

		jestExpect(count).toBe(1)

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

		Roact.mount(Roact.createElement(EventContainer))
		firstEvent:Fire()

		jestExpect(count).toBe(1)

		act(function()
			changeState({
				event = secondEvent.Event,
			})
		end)
		firstEvent:Fire()

		jestExpect(count).toBe(1)

		secondEvent:Fire()

		jestExpect(count).toBe(2)

		act(function()
			changeState({
				callback = function()
					-- this is intentionally blank
				end,
			})
		end)
		secondEvent:Fire()

		jestExpect(count).toBe(2)
		firstEvent:Destroy()
		secondEvent:Destroy()
	end)
end
