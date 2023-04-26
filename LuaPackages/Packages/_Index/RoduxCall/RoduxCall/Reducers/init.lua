local RoduxCall = script:FindFirstAncestor("RoduxCall")
local Packages = RoduxCall.Parent
local Rodux = require(Packages.Rodux) :: any

local callHistory = require(script.callHistory)

return function(config)
	return Rodux.combineReducers({
		callHistory = callHistory(config),
	})
end
