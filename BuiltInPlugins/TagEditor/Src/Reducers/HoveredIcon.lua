return function(state, action)

	if action.type == "SetHoveredIcon" then
		return action.icon
	end

	return state
end
