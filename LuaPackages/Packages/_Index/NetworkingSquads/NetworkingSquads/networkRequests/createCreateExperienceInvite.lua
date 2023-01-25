--!strict
local SQUAD_URL_INTERNAL = require(script.Parent.Parent.SQUAD_URL_INTERNAL)
local networkingSquadTypes = require(script.Parent.Parent.networkingSquadTypes)

return function(config: networkingSquadTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	return roduxNetworking.POST(
		{ Name = "CreateExperienceInvite" },
		function(requestBuilder, request: networkingSquadTypes.CreateExperienceInviteRequest)
			return requestBuilder(SQUAD_URL_INTERNAL)
				:path("squads-api")
				:path("v1")
				:path("squads")
				:path("invite-squad-to-experience")
				:body({
					squadId = request.squadId,
					gameId = request.gameId,
				})
		end
	)
end
