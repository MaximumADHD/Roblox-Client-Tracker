local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

return Rodux.createReducer("", {
	SetMessage = function(state, action)
		return action.message
	end
})