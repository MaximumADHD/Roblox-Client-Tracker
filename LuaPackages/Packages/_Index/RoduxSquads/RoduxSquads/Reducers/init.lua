local Root = script:FindFirstAncestor("RoduxSquads")
local Packages = Root.Parent
local Rodux = require(Packages.Rodux)

local experienceInviteByCreated = require(script.experienceInviteByCreated)
local squadInviteByCreated = require(script.squadInviteByCreated)
local currentSquad = require(script.currentSquad)

return function(config)
	return Rodux.combineReducers({
		experienceInviteByCreated = experienceInviteByCreated(config),
		squadInviteByCreated = squadInviteByCreated(),
		currentSquad = currentSquad(config),
	})
end
