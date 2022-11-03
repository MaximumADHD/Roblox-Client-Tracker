--!strict
local SQUAD_URL = require(script.Parent.Parent.SQUAD_URL)
local networkingSquadTypes = require(script.Parent.Parent.networkingSquadTypes)

return function(config: networkingSquadTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	local CreateExperienceInvite = roduxNetworking.POST(
		{ Name = "CreateExperienceInvite" },
		function(requestBuilder, request: networkingSquadTypes.CreateExperienceInviteRequest)
			return requestBuilder(SQUAD_URL):path("v1"):path("squad"):body({
				squadId = request.squadId,
				universeId = request.universeId,
			})
		end
	)

	if config.useMockedResponse then
		CreateExperienceInvite.Mock.clear()
		CreateExperienceInvite.Mock.reply(function()
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

	return CreateExperienceInvite
end
