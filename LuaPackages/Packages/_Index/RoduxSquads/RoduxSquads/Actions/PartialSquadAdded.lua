local RoduxSquad = script:FindFirstAncestor("RoduxSquads")
local Packages = RoduxSquad.Parent
local Rodux = require(Packages.Rodux)

return Rodux.makeActionCreator(script.Name, function(partialSquad)
	return {
		payload = {
			partialSquad = partialSquad,
		},
	}
end)
