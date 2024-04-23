--!strict
local SQUAD_URL = require(script.Parent.Parent.SQUAD_URL)
local networkingSquadTypes = require(script.Parent.Parent.networkingSquadTypes)

return function(config: networkingSquadTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	local mockResponse
	local RespondExperienceInvite = roduxNetworking.POST(
		{ Name = "RespondExperienceInvite" },
		function(requestBuilder, request: networkingSquadTypes.RespondExperienceInviteRequest)
			if config.useMockedResponse then
				local mockedExperienceInvite = request.mockedExperienceInvite

				local response
				for i = 1, #mockedExperienceInvite.responses do
					if mockedExperienceInvite.responses[i].userId == request.userId then
						response = mockedExperienceInvite.responses[i]
						break
					end
				end

				if response then
					response.response = request.response
				else
					mockedExperienceInvite.responses[#mockedExperienceInvite.responses + 1] = {
						userId = request.userId,
						response = request.response,
					}
				end

				mockResponse = {
					responseBody = {
						experienceInvite = mockedExperienceInvite,
					},
				}
			end

			return requestBuilder(SQUAD_URL):path("v1"):path("squad"):body({
				inviteId = request.inviteId,
				response = request.response,
			})
		end
	)

	if config.useMockedResponse then
		RespondExperienceInvite.Mock.clear()
		RespondExperienceInvite.Mock.reply(function()
			return mockResponse
		end)
	end

	return RespondExperienceInvite
end
