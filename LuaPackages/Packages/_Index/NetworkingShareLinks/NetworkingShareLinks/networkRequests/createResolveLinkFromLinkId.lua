--!strict
local SHARELINKS_URL = require(script.Parent.Parent.SHARELINKS_URL)
local networkingShareLinkTypes = require(script.Parent.Parent.networkingShareLinkTypes)

return function(config: networkingShareLinkTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	--! TODO(kkoa): verify that this is the right URL + params when public endpoint is ready
	local request = roduxNetworking.GET(
		{ Name = "ResolveLinkFromLinkId" },
		function(requestBuilder: any, request: networkingShareLinkTypes.ResolveLinkRequest)
			return requestBuilder(SHARELINKS_URL)
				:path("v1")
				:path("linkId")
				:id(request.linkId)
				:path("linkType")
				:id(request.linkType)
		end
	)

	if config.useMockedResponse then
		request.Mock.clear()
		request.Mock.reply(function()
			return {
				responseBody = {
					experienceInviteData = {
						instanceId = "ABCDEF",
						inviterId = 46430379,
						placeId = 1818,
						status = "Valid",
						universeId = 13058,
					},
				},
			}
		end)
	end

	return request
end
