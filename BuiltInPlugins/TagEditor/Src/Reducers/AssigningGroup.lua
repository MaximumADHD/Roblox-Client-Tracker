return function(state: any, action: any)

	if action.type == "SetAssigningGroup" then
		return action.group
	elseif action.type ~= "SetTagData" and action.type ~= "SetGroupData" then
		return nil
	end

	return state
end
