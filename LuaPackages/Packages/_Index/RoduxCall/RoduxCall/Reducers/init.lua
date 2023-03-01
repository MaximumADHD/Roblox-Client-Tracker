local RoduxCall = script:FindFirstAncestor("RoduxCall")
local Packages = RoduxCall.Parent
local Rodux = require(Packages.Rodux)

local callList = require(script.callList)

return function(config)
	return Rodux.combineReducers({
		callList = callList(config),
	})
end
