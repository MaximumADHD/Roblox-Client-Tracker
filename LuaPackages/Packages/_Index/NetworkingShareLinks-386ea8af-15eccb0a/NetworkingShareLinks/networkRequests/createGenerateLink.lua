--!strict
local SHARELINKS_URL = require(script.Parent.Parent.SHARELINKS_URL)
local networkingShareLinkTypes = require(script.Parent.Parent.networkingShareLinkTypes)

return function(config: networkingShareLinkTypes.Config)
	local roduxNetworking: any = config.roduxNetworking
	local name = "create-link"
	local request = roduxNetworking.POST(
		{ Name = name },
		function(requestBuilder: any, request: networkingShareLinkTypes.GenerateLinkRequest)
			return requestBuilder(SHARELINKS_URL):path("v1"):path(name):body({
				linkType = request.linkType,
			})
		end
	)

	if config.useMockedResponse then
		request.Mock.clear()
		request.Mock.reply(function()
			return { responseBody = { linkId = "42685" } }
		end)
	end

	return request
end
