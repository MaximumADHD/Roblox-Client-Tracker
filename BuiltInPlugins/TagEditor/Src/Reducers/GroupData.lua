return function(state: any, action: any)
	state = state or {}

	if action.type == "SetGroupData" then
		return action.data
	end

	return state
end
