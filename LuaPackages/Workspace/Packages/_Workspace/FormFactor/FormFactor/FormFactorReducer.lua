local FormFactor = require(script.Parent.FormFactor)
local SetFormFactor = require(script.Parent.SetFormFactor)

export type State = typeof(FormFactor.UNKNOWN)

return function(state: State?, action: any): State
	state = state or FormFactor.UNKNOWN

	if action.type == SetFormFactor.name then
		return action.formFactor
	end

	return state :: State
end
