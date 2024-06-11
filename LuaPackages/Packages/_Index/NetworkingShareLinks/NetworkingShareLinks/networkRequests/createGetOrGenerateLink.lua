--!strict
local SHARELINKS_URL = require(script.Parent.Parent.SHARELINKS_URL)
local networkingShareLinkTypes = require(script.Parent.Parent.networkingShareLinkTypes)
local Packages = script:FindFirstAncestor("Packages") :: any
local tutils = require(Packages.tutils) :: any

local HttpService = game:GetService("HttpService")

return function(config: networkingShareLinkTypes.Config)
	local roduxNetworking: any = config.roduxNetworking
	local name = "get-or-create-link"
	local request = roduxNetworking.POST(
		{ Name = name },
		function(requestBuilder: any, request: networkingShareLinkTypes.GenerateLinkRequest)
			local data = tutils.deepCopy(request)
			data.linkType = nil

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
