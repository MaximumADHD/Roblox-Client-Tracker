return function(state, action)

	if action.type == "OpenGroupMenu" then
		return action.group
	elseif action.type == "OpenTagMenu" then
		return nil
	elseif action.type == "MoveTagSelectionUpOrDown" then
		return nil
	end

	return state
end
