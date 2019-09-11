local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Cryo = require(Packages.Cryo)
local Rodux = require(Packages.Rodux)
local NetworkError = require(Plugin.Src.Actions.NetworkError)

local initial = {
	networkError = nil,
	networkErrorAction = nil
}

return Rodux.createReducer(initial, {
	[NetworkError.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			networkError = action.response,
			networkErrorAction = action.networkErrorAction
		})
	end
})