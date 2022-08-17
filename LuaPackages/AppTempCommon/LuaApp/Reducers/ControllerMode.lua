local SetIsControllerMode = require(script.Parent.Parent.Actions.SetIsControllerMode)

return function(state: boolean?, action): boolean
	if state == nil then
		state = false
	end
	assert(state ~= nil, "")

	if action.type == SetIsControllerMode.name then
		state = action.isControllerMode
	end

	return state
end
