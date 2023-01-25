local RoduxSquad = script:FindFirstAncestor("RoduxSquads")
local Packages = RoduxSquad.Parent
local Rodux = require(Packages.Rodux)

return Rodux.makeActionCreator(script.Name, function(notificationId: number)
	return {
		payload = {
			notificationId = notificationId,
		},
	}
end)
