--!strict
local SQUAD_URL = require(script.Parent.Parent.SQUAD_URL)
local networkingSquadTypes = require(script.Parent.Parent.networkingSquadTypes)

return function(config: networkingSquadTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	local SquadRemove = roduxNetworking.POST(
		{ Name = "SquadRemove" },
		function(requestBuilder, request: networkingSquadTypes.SquadRemoveRequest)
			return requestBuilder(SQUAD_URL):path("v1"):path("squad"):body({
				squadId = request.squadId,
				userIdToRemove = request.userIdToRemove,
			})
		end
	)

	if config.useMockedResponse then
		SquadRemove.Mock.clear()
		SquadRemove.Mock.reply(function()
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

	return SquadRemove
end
