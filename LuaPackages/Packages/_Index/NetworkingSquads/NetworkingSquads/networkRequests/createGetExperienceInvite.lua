--!strict
local SQUAD_URL = require(script.Parent.Parent.SQUAD_URL)
local networkingSquadTypes = require(script.Parent.Parent.networkingSquadTypes)

return function(config: networkingSquadTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	local GetExperienceInvite = roduxNetworking.GET(
		{ Name = "GetExperienceInvite" },
		function(requestBuilder, request: networkingSquadTypes.GetExperienceInviteRequest)
			return requestBuilder(SQUAD_URL):path("v1"):path("squad"):id(request.inviteId)
		end
	)

	if config.useMockedResponse then
		GetExperienceInvite.Mock.clear()
		GetExperienceInvite.Mock.reply(function()
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

	return GetExperienceInvite
end
