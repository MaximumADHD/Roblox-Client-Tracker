return function(state: any, action: any)
	state = state or false

	if action.type == "ToggleWorldView" then
		return action.enabled
	end

	return state
end
