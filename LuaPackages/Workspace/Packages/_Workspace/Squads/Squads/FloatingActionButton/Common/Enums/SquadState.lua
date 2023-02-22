local Squads = script:FindFirstAncestor("Squads")
local dependencies = require(Squads.dependencies)
local enumerate = dependencies.enumerate

local SquadState = enumerate("SquadState", {
	Idle = "Idle",
	GameInvite = "GameInvite",
	GamePending = "GamePending",
	UserJoin = "UserJoin",
})

return SquadState
