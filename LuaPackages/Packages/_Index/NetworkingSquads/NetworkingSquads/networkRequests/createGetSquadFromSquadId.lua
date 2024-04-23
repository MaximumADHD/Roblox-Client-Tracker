--!strict
local SQUAD_URL = require(script.Parent.Parent.SQUAD_URL)
local networkingSquadTypes = require(script.Parent.Parent.networkingSquadTypes)

return function(config: networkingSquadTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	local mockResponse
	local GetSquadFromSquadId = roduxNetworking.GET(
		{ Name = "GetSquadFromSquadId" },
		function(requestBuilder, request: networkingSquadTypes.GetSquadFromSquadIdRequest)
			if config.useMockedResponse then
				mockResponse = {
					responseBody = {
						squad = request.mockedSquad,
					},
				}
			end

			return requestBuilder(SQUAD_URL):path("v1"):path("squad"):id(request.squadId)
		end
	)

	if config.useMockedResponse then
		GetSquadFromSquadId.Mock.clear()
		GetSquadFromSquadId.Mock.reply(function()
			return mockResponse
		end)
	end

	return GetSquadFromSquadId
end
