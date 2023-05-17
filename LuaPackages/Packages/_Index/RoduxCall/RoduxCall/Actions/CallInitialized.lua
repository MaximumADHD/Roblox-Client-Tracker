local RoduxCall = script:FindFirstAncestor("RoduxCall")
local Packages = RoduxCall.Parent
local Rodux = require(Packages.Rodux) :: any

return Rodux.makeActionCreator(script.Name, function(callInfo)
	return {
		payload = {
			callInfo = callInfo,
		},
	}
end)
