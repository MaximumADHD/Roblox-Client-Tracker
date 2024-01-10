local RoduxCall = script:FindFirstAncestor("RoduxCall")
local Packages = RoduxCall.Parent
local Rodux = require(Packages.Rodux) :: any

return Rodux.makeActionCreator(script.Name, function(call)
	return {
		payload = {
			call = call,
		},
	}
end)
