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

	return GetExperienceInvite
end
