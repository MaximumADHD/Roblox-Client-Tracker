--!strict
local SQUAD_URL = require(script.Parent.Parent.SQUAD_URL)
local networkingSquadTypes = require(script.Parent.Parent.networkingSquadTypes)

return function(config: networkingSquadTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	local mockResponse
	local CreateExperienceInvite = roduxNetworking.POST(
		{ Name = "CreateExperienceInvite" },
		function(requestBuilder, request: networkingSquadTypes.CreateExperienceInviteRequest)
			if config.useMockedResponse then
				local timestamp = os.time() * 1000

				mockResponse = {
					responseBody = {
						experienceInvite = {
							experienceInviteId = "10000000-0000-0000-0000-000000000000",
							version = 1,
							inviterId = 3447649029,
							membershipEntityType = "group-up",
							membershipEntityId = request.membershipEntityId,
							createdTimestamp = timestamp,
							decisionTimestamp = timestamp + 12000,
							universeId = 5279877370,
							placeId = 15308759682,
							totalSpots = 6,
							inviteState = "Active",
							responses = {
								userId = 3447649029,
								response = "Accepted",
							},
						},
					},
				}
			end

			return requestBuilder(SQUAD_URL):path("squads"):path("v1"):path("invite-squad-to-experience"):body({
				squadId = request.squadId,
				placeId = request.placeId,
			})
		end
	)

	if config.useMockedResponse then
		CreateExperienceInvite.Mock.clear()
		CreateExperienceInvite.Mock.reply(function()
			return mockResponse
		end)
	end

	return CreateExperienceInvite
end
