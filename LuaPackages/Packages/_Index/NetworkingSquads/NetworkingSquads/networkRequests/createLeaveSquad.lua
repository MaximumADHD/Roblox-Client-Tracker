--!strict
local SQUAD_URL = require(script.Parent.Parent.SQUAD_URL)
local networkingSquadTypes = require(script.Parent.Parent.networkingSquadTypes)

return function(config: networkingSquadTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	local LeaveSquad = roduxNetworking.POST(
		{ Name = "LeaveSquad" },
		function(requestBuilder, request: networkingSquadTypes.LeaveSquadRequest)
			return requestBuilder(SQUAD_URL):path("v1"):path("squad"):id(request.squadId):body({})
		end
	)

	if config.useMockedResponse then
		LeaveSquad.Mock.clear()
		LeaveSquad.Mock.reply(function()
			return {
				responseBody = {},
			}
		end)
	end

	return LeaveSquad
end
