local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Rodux)
local InspectAndBuyFolder = script.Parent.Parent
local SetPlayerId = require(InspectAndBuyFolder.Actions.SetPlayerId)

return Rodux.createReducer(
	""
, {
	[SetPlayerId.name] = function(state, action)
		return action.playerId
	end,
})