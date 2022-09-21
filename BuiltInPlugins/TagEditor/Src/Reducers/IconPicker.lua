return function(state, action)

	if action.type == "ToggleIconPicker" then
		return action.tag
	end

	return state
end
