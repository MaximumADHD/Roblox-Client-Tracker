return function(state: any, action: any)
	state = state or ""

	if action.type == "ToggleIconPicker" and not action.tag then
		return ""
	elseif action.type == "SetIconSearch" then
		assert(typeof(action.text) == "string")
		return action.text
	end

	return state
end
