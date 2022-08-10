local SetIsControllerMode = require(script.Parent.Parent.Actions.SetIsControllerMode)

return function(state, action)
	if state == nil then
		state = false
	end

	if action.type == SetIsControllerMode.name then
		state = action.isControllerMode
	end

	return state
end
