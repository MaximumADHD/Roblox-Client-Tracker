local bindableEventQueue = require(script.Parent.bindableEventQueue)

return function(bindableEvent: BindableEvent)
	local function createEvent(actionCreator)
		return function(...)
			local action = actionCreator(...)
			if bindableEvent:GetAttribute("isConnected") ~= true then
				bindableEventQueue:add(action)
			else
				bindableEvent:Fire(action)
			end
		end
	end

	return createEvent
end
