return function(state: any, action: any)

	if action.type == "ToggleColorPicker" then
		return action.tag
	end

	return state
end
