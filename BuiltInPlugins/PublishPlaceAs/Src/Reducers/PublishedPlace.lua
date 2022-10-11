local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local initial = {
	isPublishing = false,
	publishInfo = { id = 0, name = "", parentGameName = "", parentGameId = 0, settings = {}, publishParameters = {} },
}

return Rodux.createReducer(initial, {
	SetIsPublishing = function(state, action)
		return Cryo.Dictionary.join(state, {
			isPublishing = action.isPublishing,
		})
	end,

	SetPublishInfo = function(state, action)
		return Cryo.Dictionary.join(state, {
			publishInfo = Cryo.Dictionary.join(state.publishInfo, action.publishInfo),
		})
	end,

	ResetInfo = function(state, action)
		return Cryo.Dictionary.join(state, {
			publishInfo = Cryo.Dictionary.join(state.publishInfo, action.publishInfo),
			isPublishing = action.isPublishing,
		})
	end,
})
