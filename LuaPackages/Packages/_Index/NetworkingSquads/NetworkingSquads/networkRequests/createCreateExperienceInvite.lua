--!strict
local SQUAD_URL = require(script.Parent.Parent.SQUAD_URL)
local networkingSquadTypes = require(script.Parent.Parent.networkingSquadTypes)

return function(config: networkingSquadTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	return roduxNetworking.POST(
		{ Name = "CreateExperienceInvite" },
		function(requestBuilder, request: networkingSquadTypes.CreateExperienceInviteRequest)
			return requestBuilder(SQUAD_URL):path("squads"):path("v1"):path("invite-squad-to-experience"):body({
				squadId = request.squadId,
				placeId = request.placeId,
			})
		end
	)
end
