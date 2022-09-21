return function(state: any, action: any)
	state = state or ""

	if action.type == "SetSearch" then
		assert(typeof(action.text) == "string")
		return action.text
	end

	return state
end
