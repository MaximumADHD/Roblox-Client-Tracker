local FormFactor = require(script.Parent.FormFactor)
local SetFormFactor = require(script.Parent.SetFormFactor)

return function(state, action)
	state = state or FormFactor.UNKNOWN

	if action.type == SetFormFactor.name then
		return action.formFactor
	end

	return state
end
