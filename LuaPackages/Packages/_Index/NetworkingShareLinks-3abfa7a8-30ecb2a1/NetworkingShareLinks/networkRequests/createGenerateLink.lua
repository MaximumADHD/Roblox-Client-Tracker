--!strict
local SHARELINKS_URL = require(script.Parent.Parent.SHARELINKS_URL)
local networkingShareLinkTypes = require(script.Parent.Parent.networkingShareLinkTypes)

local HttpService = game:GetService("HttpService")

return function(config: networkingShareLinkTypes.Config)
	local roduxNetworking: any = config.roduxNetworking
	local name = "create-link"
	local request = roduxNetworking.POST(
		{ Name = name },
		function(requestBuilder: any, request: networkingShareLinkTypes.GenerateLinkRequest)
			local data = {
				instanceId = request.instanceId,
				launchData = request.launchData,
				placeId = request.placeId,
			}

			return requestBuilder(SHARELINKS_URL):path("v1"):path(name):body({
				linkType = request.linkType,
				data = if next(data) ~= nil then HttpService:JSONEncode(data) else nil,
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
