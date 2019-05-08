local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Rodux)
local InspectAndBuyFolder = script.Parent.Parent
local SetPlayerName = require(InspectAndBuyFolder.Actions.SetPlayerName)

return Rodux.createReducer(
	""
, {
	[SetPlayerName.name] = function(state, action)
		return action.playerName
	end,
})