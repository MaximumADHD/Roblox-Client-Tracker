local RoduxSquad = script:FindFirstAncestor("RoduxSquads")
local Packages = RoduxSquad.Parent
local Rodux = require(Packages.Rodux)

return Rodux.makeActionCreator(script.Name, function(squadInvite)
	return {
		payload = {
			squadInvite = squadInvite,
		},
	}
end)
