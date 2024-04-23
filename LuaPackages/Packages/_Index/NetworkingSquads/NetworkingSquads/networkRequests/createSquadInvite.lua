--!strict
local SQUAD_URL = require(script.Parent.Parent.SQUAD_URL)
local networkingSquadTypes = require(script.Parent.Parent.networkingSquadTypes)

return function(config: networkingSquadTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	local mockResponse
	local SquadInvite = roduxNetworking.POST(
		{ Name = "SquadInvite" },
		function(requestBuilder, request: networkingSquadTypes.SquadInviteRequest)
			if config.useMockedResponse then
				mockResponse = {
					responseBody = {
						channelId = request.channelId,
					},
				}
			end

			return requestBuilder(SQUAD_URL):path("v1"):path("squad"):body({
				squadId = request.squadId,
				inviteeUserIds = request.inviteeUserIds,
			})
		end
	)

	if config.useMockedResponse then
		SquadInvite.Mock.clear()
		SquadInvite.Mock.reply(function()
			return mockResponse
		end)
	end

	return SquadInvite
end
