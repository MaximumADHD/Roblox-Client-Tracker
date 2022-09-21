return function(state: any, action: any)

	if action.type == "SetRenamingGroup" then
		if action.renaming then
			return action.group
		else
			return nil
		end
	-- only rename one thing at a time
	elseif action.type == "SetRenaming" then
		return nil
	end

	return state
end
