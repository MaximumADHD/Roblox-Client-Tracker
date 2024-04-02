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
						squadId = "00000000-0000-0000-0000-000000000000",
						createdUtc = 1672531200000,
						updatedUtc = os.clock() * 1000,
						members = {
							{
								userId = 3447631062,
								status = "Creator",
							},
							{
								userId = 2591622000,
								status = "Member",
							},
							{
								userId = 3447649029,
								status = "Member",
							},
							{
								userId = 3447641701,
								status = "Member",
							},
							{
								userId = 3447635964,
								status = "Member",
							},
							{
								userId = 3447642362,
								status = "Member",
							},
						},
					},
				},
			}
		end)
	end

	return JoinSquad
end
