return function(state: any, action: any)

	if action.type == "SetRenaming" then
		if action.renaming then
			return action.tag
		else
			return nil
		end
	-- only rename one thing at a time
	elseif action.type == "SetRenamingGroup" then
		return nil
	end

	return state
end
