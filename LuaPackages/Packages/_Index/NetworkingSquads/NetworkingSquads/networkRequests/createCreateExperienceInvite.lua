--!strict
local SQUAD_URL = require(script.Parent.Parent.SQUAD_URL)
local networkingSquadTypes = require(script.Parent.Parent.networkingSquadTypes)

return function(config: networkingSquadTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	local CreateExperienceInvite = roduxNetworking.POST(
		{ Name = "CreateExperienceInvite" },
		function(requestBuilder, request: networkingSquadTypes.CreateExperienceInviteRequest)
			return requestBuilder(SQUAD_URL):path("squads"):path("v1"):path("invite-squad-to-experience"):body({
				squadId = request.squadId,
				placeId = request.placeId,
			})
		end
	)

	if config.useMockedResponse then
		CreateExperienceInvite.Mock.clear()
		CreateExperienceInvite.Mock.reply(function()
			return {
				responseBody = {
					experienceInvite = {
						createdUtc = os.time() * 1000,
						inviteId = "10000000-0000-0000-0000-000000000000",
						inviteState = "Active",
						responses = {},
						squadId = "00000000-0000-0000-0000-000000000000",
						universeId = "5279877370",
					},
				},
			}
		end)
	end

	return CreateExperienceInvite
end
