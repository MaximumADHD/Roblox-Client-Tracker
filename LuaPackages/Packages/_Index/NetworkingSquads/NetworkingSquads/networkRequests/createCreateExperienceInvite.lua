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
				mockResponse = {
					responseBody = {
						experienceInvite = {
							experienceInviteId = "10000000-0000-0000-0000-000000000000",
							version = 1,
							inviterId = 3447649029,
							membershipEntityType = "GroupUp",
							membershipEntityId = request.membershipEntityId,
							createdUtcMs = os.time() * 1000,
							experienceDetail = {
								placeId = request.placeId,
								experienceResultStatus = "Undecided",
							},
							totalSpots = 6,
							state = "Active",
							votes = {
								[1] = { userId = request.userId, voteType = "Accept" },
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
