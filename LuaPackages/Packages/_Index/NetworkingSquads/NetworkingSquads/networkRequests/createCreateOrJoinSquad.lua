--!strict
local SQUAD_URL = require(script.Parent.Parent.SQUAD_URL)
local networkingSquadTypes = require(script.Parent.Parent.networkingSquadTypes)

return function(config: networkingSquadTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	local mockResponse
	local CreateOrJoinSquad = roduxNetworking.POST(
		{ Name = "CreateOrJoinSquad" },
		function(requestBuilder, request: networkingSquadTypes.CreateOrJoinSquadRequest)
			if config.useMockedResponse then
				mockResponse = {
					responseBody = {
						squad = {
							squadId = "20000000-0000-0000-0000-000000000000",
							initiatorId = 3447631062,
							createdUtc = os.clock() * 1000,
							channelId = request.channelId,
							members = {
								{
									userId = 3447631062,
									rank = 0,
								},
								{
									userId = 2591622000,
									rank = 1,
								},
								{
									userId = 3447649029,
									rank = 2,
								},
								{
									userId = 3447641701,
									rank = 3,
								},
								{
									userId = 3447635964,
									rank = 4,
								},
								{
									userId = 3447642362,
									rank = 5,
								},
							},
						},
					},
				}
			end

			return requestBuilder(SQUAD_URL):path("v1"):path("squad"):body({
				channelId = request.channelId,
			})
		end
	)

	if config.useMockedResponse then
		CreateOrJoinSquad.Mock.clear()
		CreateOrJoinSquad.Mock.reply(function()
			return mockResponse
		end)
	end

	return CreateOrJoinSquad
end
