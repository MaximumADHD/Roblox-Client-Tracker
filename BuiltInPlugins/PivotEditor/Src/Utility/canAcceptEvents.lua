-- Can the edit pivot session accept events given the current state?
return function(state)
	return state.targetObject ~= nil
end