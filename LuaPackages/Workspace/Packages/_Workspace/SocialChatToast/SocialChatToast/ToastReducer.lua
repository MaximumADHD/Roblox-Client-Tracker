--!nonstrict
local ShowToast = require(script.Parent.Actions.ShowToast)
local ToastComplete = require(script.Parent.Actions.ToastComplete)

return function(state, action)
	state = state or nil

	if action.type == ShowToast.name then
		state = action.toast
	elseif action.type == ToastComplete.name then
		state = nil
	end

	return state
end
