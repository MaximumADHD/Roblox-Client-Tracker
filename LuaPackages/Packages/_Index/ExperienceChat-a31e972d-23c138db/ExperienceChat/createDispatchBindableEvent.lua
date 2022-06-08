local bindableEvent = require(script.Parent.DispatchBindableEvent)

local function createDispatchBindableEvent(store)
	bindableEvent.Event:Connect(function(action)
		store:dispatch(action)
	end)

	return bindableEvent
end

return createDispatchBindableEvent
