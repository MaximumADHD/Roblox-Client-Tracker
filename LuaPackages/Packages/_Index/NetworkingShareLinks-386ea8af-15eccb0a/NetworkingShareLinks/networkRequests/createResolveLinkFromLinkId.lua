--!strict
local SHARELINKS_URL = require(script.Parent.Parent.SHARELINKS_URL)
local networkingShareLinkTypes = require(script.Parent.Parent.networkingShareLinkTypes)

return function(config: networkingShareLinkTypes.Config)
	local roduxNetworking: any = config.roduxNetworking
	local name = "resolve-link"
	local request = roduxNetworking.POST(
		{ Name = name },
		function(requestBuilder: any, request: networkingShareLinkTypes.ResolveLinkRequest)
		return requestBuilder(SHARELINKS_URL):path("v1"):path(name):body({
			linkType = request.linkType,
			linkId = request.linkId,
		})
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
