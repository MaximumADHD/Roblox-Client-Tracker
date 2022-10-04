return function(state: any, action: any)

	if action.type == "SetMinimizedSettingsPane" then
		return action.minimized
	-- minimize the settings pane when entering group assignment mode
	elseif action.type == "SetAssigningGroup" and action.group ~= nil then
		return true
	end


	return state
end
