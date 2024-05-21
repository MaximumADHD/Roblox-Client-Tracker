--!strict
local SQUAD_URL = require(script.Parent.Parent.SQUAD_URL)
local networkingSquadTypes = require(script.Parent.Parent.networkingSquadTypes)

local function deepCopy(t)
	if type(t) ~= "table" then
		return t
	end

	local result = {}
	for key, value in pairs(t) do
		result[key] = deepCopy(value)
	end
	return result
end

return function(config: networkingSquadTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	local mockResponse
	local VoteForExperienceInvite = roduxNetworking.POST(
		{ Name = "VoteForExperienceInvite" },
		function(requestBuilder, request: networkingSquadTypes.VoteForExperienceInviteRequest)
			if config.useMockedResponse then
				local mockedExperienceInvite = deepCopy(request.mockedExperienceInvite) :: any

				local vote
				for i = 1, #mockedExperienceInvite.votes do
					if mockedExperienceInvite.votes[i].userId == request.userId then
						vote = mockedExperienceInvite.votes[i]
						break
					end
				end

				if vote then
					vote.voteType = request.voteType
				else
					mockedExperienceInvite.votes[#mockedExperienceInvite.votes + 1] = {
						userId = request.userId,
						voteType = request.voteType,
					}
				end

				-- increment version so Rodux performs update
				mockedExperienceInvite.version = mockedExperienceInvite.version + 1

				mockResponse = {
					responseBody = {
						experienceInvite = mockedExperienceInvite,
					},
				}
			end

			return requestBuilder(SQUAD_URL):path("v1"):path("squad"):body({
				experienceInviteId = request.experienceInviteId,
				voteType = request.voteType,
			})
		end
	)

	if config.useMockedResponse then
		VoteForExperienceInvite.Mock.clear()
		VoteForExperienceInvite.Mock.reply(function()
			return mockResponse
		end)
	end

	return VoteForExperienceInvite
end
