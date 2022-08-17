local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

return Rodux.createReducer(nil, {
	SetAnimationData = function(state, action)
		return action.animationData
	end,})
