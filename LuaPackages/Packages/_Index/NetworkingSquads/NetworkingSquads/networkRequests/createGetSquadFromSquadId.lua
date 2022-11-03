--!strict
local SQUAD_URL = require(script.Parent.Parent.SQUAD_URL)
local networkingSquadTypes = require(script.Parent.Parent.networkingSquadTypes)

return function(config: networkingSquadTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	local GetSquadFromSquadId = roduxNetworking.GET(
		{ Name = "GetSquadFromSquadId" },
		function(requestBuilder, request: networkingSquadTypes.GetSquadFromSquadIdRequest)
			return requestBuilder(SQUAD_URL):path("v1"):path("squad"):id(request.squadId)
		end
	)

	if config.useMockedResponse then
		GetSquadFromSquadId.Mock.clear()
		GetSquadFromSquadId.Mock.reply(function()
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

	return GetSquadFromSquadId
end
