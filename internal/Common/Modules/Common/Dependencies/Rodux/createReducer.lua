return function(initialState, handlers)
	return function(state, action)
		if state == nil then
			return initialState
		end

		local handler = handlers[action.type]

		if handler then
			return handler(state, action)
		end

		return state
	end
end
