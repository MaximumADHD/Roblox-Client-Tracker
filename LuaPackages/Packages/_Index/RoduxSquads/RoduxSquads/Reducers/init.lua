local Root = script:FindFirstAncestor("RoduxSquads")
local Packages = Root.Parent
local Rodux = require(Packages.Rodux)

local currentSquad = require(script.currentSquad)
local experienceInviteByCreated = require(script.experienceInviteByCreated)
local notificationToast = require(script.notificationToast)
local squadInviteByCreated = require(script.squadInviteByCreated)

return function(config)
	return Rodux.combineReducers({
		currentSquad = currentSquad(config),
		experienceInviteByCreated = experienceInviteByCreated(config),
		notificationToast = notificationToast(),
		squadInviteByCreated = squadInviteByCreated(),
	})
end
