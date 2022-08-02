--!strict
return function(bindableEvent: BindableEvent)
	local function createEvent(actionCreator)
		return function(...)
			local action = actionCreator(...)
			bindableEvent:Fire(action)
		end
	end

	return createEvent
end
