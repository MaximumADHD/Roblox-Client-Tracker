local SquadWidget = script:FindFirstAncestor("SquadWidget")
local dependencies = require(SquadWidget.dependencies)
local enumerate = dependencies.enumerate

local SquadState = enumerate("SquadState", {
	Idle = "Idle",
	GameInvite = "GameInvite",
	GamePending = "GamePending",
	UserJoin = "UserJoin",
})

return SquadState
