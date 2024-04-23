--!strict
local SQUAD_URL = require(script.Parent.Parent.SQUAD_URL)
local networkingSquadTypes = require(script.Parent.Parent.networkingSquadTypes)

return function(config: networkingSquadTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	local mockResponse
	local GetExperienceInvite = roduxNetworking.GET(
		{ Name = "GetExperienceInvite" },
		function(requestBuilder, request: networkingSquadTypes.GetExperienceInviteRequest)
			if config.useMockedResponse then
				mockResponse = {
					responseBody = {
						experienceInvite = request.mockedExperienceInvite,
					},
				}
			end

			return requestBuilder(SQUAD_URL):path("v1"):path("squad"):id(request.inviteId)
		end
	)

	if config.useMockedResponse then
		GetExperienceInvite.Mock.clear()
		GetExperienceInvite.Mock.reply(function()
			return mockResponse
		end)
	end

	return GetExperienceInvite
end
