--!strict
local networkingSquadTypes = require(script.Parent.networkingSquadTypes)

local networkRequests: any = script.Parent.networkRequests
local createCreateSquad: (networkingSquadTypes.Config) -> any = require(networkRequests.createCreateSquad)
local createGetSquadActive: (networkingSquadTypes.Config) -> any = require(networkRequests.createGetSquadActive)
local createGetSquadFromSquadId: (networkingSquadTypes.Config) -> any =
	require(networkRequests.createGetSquadFromSquadId)
local createJoinSquad: (networkingSquadTypes.Config) -> any = require(networkRequests.createJoinSquad)
local createLeaveSquad: (networkingSquadTypes.Config) -> any = require(networkRequests.createLeaveSquad)
local createSquadInvite: (networkingSquadTypes.Config) -> any = require(networkRequests.createSquadInvite)
local createSquadRemove: (networkingSquadTypes.Config) -> any = require(networkRequests.createSquadRemove)
local createCreateExperienceInvite: (networkingSquadTypes.Config) -> any =
	require(networkRequests.createCreateExperienceInvite)
local createGetExperienceInvite: (networkingSquadTypes.Config) -> any =
	require(networkRequests.createGetExperienceInvite)
local createRespondExperienceInvite: (networkingSquadTypes.Config) -> any =
	require(networkRequests.createRespondExperienceInvite)

return function(config: networkingSquadTypes.Config): networkingSquadTypes.RequestThunks
	return {
		CreateSquad = createCreateSquad(config),
		GetSquadActive = createGetSquadActive(config),
		GetSquadFromSquadId = createGetSquadFromSquadId(config),
		JoinSquad = createJoinSquad(config),
		LeaveSquad = createLeaveSquad(config),
		SquadInvite = createSquadInvite(config),
		SquadRemove = createSquadRemove(config),
		CreateExperienceInvite = createCreateExperienceInvite(config),
		GetExperienceInvite = createGetExperienceInvite(config),
		RespondExperienceInvite = createRespondExperienceInvite(config),
	}
end
