local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local initial = {
	groupInfo = { groups = {} },
}

return Rodux.createReducer(initial, {
	SetGroupInfo = function(state, action)
		return Cryo.Dictionary.join(state, {
			groupInfo = Cryo.Dictionary.join(state.groupInfo, action.groupInfo)
		})
	end,

	ResetInfo = function(state, action)
		return Cryo.Dictionary.join(state, {
			groupInfo = Cryo.Dictionary.join(state.groupInfo, action.groupInfo)
		})
	end,
})