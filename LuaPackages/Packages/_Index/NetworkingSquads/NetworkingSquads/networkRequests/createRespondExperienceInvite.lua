--!strict
local SQUAD_URL = require(script.Parent.Parent.SQUAD_URL)
local networkingSquadTypes = require(script.Parent.Parent.networkingSquadTypes)

return function(config: networkingSquadTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	local RespondExperienceInvite = roduxNetworking.POST(
		{ Name = "RespondExperienceInvite" },
		function(requestBuilder, request: networkingSquadTypes.RespondExperienceInviteRequest)
			return requestBuilder(SQUAD_URL):path("v1"):path("squad"):body({
				inviteId = request.inviteId,
				response = request.response,
			})
		end
	)

	if config.useMockedResponse then
		RespondExperienceInvite.Mock.clear()
		RespondExperienceInvite.Mock.reply(function()
			return {
				responseBody = {
					experienceInvite = {
						created = 1666384726,
						inviteId = 123,
						squadId = "12345",
						universeId = "1663370770",
					},
				},
			}
		end)
	end

	return RespondExperienceInvite
end
