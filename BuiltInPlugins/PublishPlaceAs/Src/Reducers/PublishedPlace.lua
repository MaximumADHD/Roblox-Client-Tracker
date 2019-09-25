local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local initial = {
	publishInfo = { id = 0, name = "", parentGameName = "", parentGameId = 0, settings = {}, },
}


return Rodux.createReducer(initial, {
	SetPublishInfo = function(state, action)
		return Cryo.Dictionary.join(state, {
			publishInfo = Cryo.Dictionary.join(state.publishInfo, action.publishInfo)
		})
	end,
})