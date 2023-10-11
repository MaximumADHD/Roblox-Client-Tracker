local RoduxCall = script:FindFirstAncestor("RoduxCall")
local Packages = RoduxCall.Parent
local Rodux = require(Packages.Rodux) :: any

local callHistory = require(script.callHistory)
local currentCall = require(script.currentCall)
local suggestedCallees = require(script.suggestedCallees)

return function(config)
	return Rodux.combineReducers({
		callHistory = callHistory(config),
		currentCall = currentCall(),
		suggestedCallees = suggestedCallees(config),
	})
end
