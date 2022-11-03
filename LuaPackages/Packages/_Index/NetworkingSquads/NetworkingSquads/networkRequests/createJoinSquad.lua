--!strict
local SQUAD_URL = require(script.Parent.Parent.SQUAD_URL)
local networkingSquadTypes = require(script.Parent.Parent.networkingSquadTypes)

return function(config: networkingSquadTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	local JoinSquad = roduxNetworking.POST(
		{ Name = "JoinSquad" },
		function(requestBuilder, request: networkingSquadTypes.JoinSquadRequest)
			return requestBuilder(SQUAD_URL):path("v1"):path("squad"):body({
				squadId = request.squadId,
			})
		end
	)

	if config.useMockedResponse then
		JoinSquad.Mock.clear()
		JoinSquad.Mock.reply(function()
			return {
				responseBody = {
					squad = {
						squadId = "12345",
						members = { 3447635964, 3447649029 },
					},
				},
			}
		end)
	end

	return JoinSquad
end
