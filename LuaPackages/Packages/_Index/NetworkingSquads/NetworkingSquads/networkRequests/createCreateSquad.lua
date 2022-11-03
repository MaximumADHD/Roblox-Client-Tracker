--!strict
local SQUAD_URL = require(script.Parent.Parent.SQUAD_URL)
local networkingSquadTypes = require(script.Parent.Parent.networkingSquadTypes)

return function(config: networkingSquadTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	local CreateSquad = roduxNetworking.POST(
		{ Name = "CreateSquad" },
		function(requestBuilder, request: networkingSquadTypes.CreateSquadRequest)
			return requestBuilder(SQUAD_URL):path("v1"):path("squad"):body({
				userIds = request.userIds,
			})
		end
	)

	if config.useMockedResponse then
		CreateSquad.Mock.clear()
		CreateSquad.Mock.reply(function()
			return {
				responseBody = {
					squad = {
						squadId = "12345",
						members = CreateSquad.userIds,
					},
				},
			}
		end)
	end

	return CreateSquad
end
