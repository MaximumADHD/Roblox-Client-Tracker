--!strict
local SQUAD_URL = require(script.Parent.Parent.SQUAD_URL)
local networkingSquadTypes = require(script.Parent.Parent.networkingSquadTypes)

return function(config: networkingSquadTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	local mockResponse
	local RespondExperienceInvite = roduxNetworking.POST(
		{ Name = "RespondExperienceInvite" },
		function(requestBuilder, request: networkingSquadTypes.RespondExperienceInviteRequest)
			if config.useMockedResponse then
				mockResponse = {
					responseBody = {
						experienceInvite = {
							createdUtc = os.time() * 1000,
							inviteId = "10000000-0000-0000-0000-000000000000",
							inviteState = "Active",
							responses = { [tostring(request.userId)] = request.response },
							squadId = "00000000-0000-0000-0000-000000000000",
							universeId = "5279877370",
						},
					},
				}
			end

			return requestBuilder(SQUAD_URL):path("v1"):path("squad"):body({
				inviteId = request.inviteId,
				response = request.response,
			})
		end
	)

	if config.useMockedResponse then
		RespondExperienceInvite.Mock.clear()
		RespondExperienceInvite.Mock.reply(function()
			return mockResponse
		end)
	end

	return RespondExperienceInvite
end
