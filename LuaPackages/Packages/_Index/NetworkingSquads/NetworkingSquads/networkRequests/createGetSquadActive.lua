--!strict
local SQUAD_URL = require(script.Parent.Parent.SQUAD_URL)
local networkingSquadTypes = require(script.Parent.Parent.networkingSquadTypes)

return function(config: networkingSquadTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	local mockResponse
	local GetSquadActive = roduxNetworking.GET(
		{ Name = "GetSquadActive" },
		function(requestBuilder, request: networkingSquadTypes.GetSquadActiveRequest)
			if config.useMockedResponse then
				mockResponse = {
					responseBody = {
						squad = request.mockedSquad,
					},
				}
			end

			return requestBuilder(SQUAD_URL):path("squads"):path("v1"):path("get-active-squad")
		end
	)

	if config.useMockedResponse then
		GetSquadActive.Mock.clear()
		GetSquadActive.Mock.reply(function()
			return mockResponse
		end)
	end

	return GetSquadActive
end
