local RoduxSquad = script:FindFirstAncestor("RoduxSquads")
local Packages = RoduxSquad.Parent
local Rodux = require(Packages.Rodux)

return Rodux.makeActionCreator(script.Name, function(inviteId: string, userId: number, response: boolean)
	return {
		payload = {
			inviteId = inviteId,
			userId = userId,
			response = response,
		},
	}
end)
