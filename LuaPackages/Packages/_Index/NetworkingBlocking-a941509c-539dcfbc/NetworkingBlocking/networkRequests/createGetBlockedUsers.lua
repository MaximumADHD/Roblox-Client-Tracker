--[[
	GetBlockedUsers API

	Query path: /userblock/getblockedusers?userId=...&page=1
]]
local API_URL = require(script.Parent.Parent.API_URL)

type Params = {
	userId: string?,
	page: number?
}

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.GET({ Name = "GetBlockedUsers" }, function(requestBuilder, params: Params)
		params = params or {}
		return requestBuilder(API_URL):path("userblock"):path("getblockedusers"):queryArgs({
			userId = params.userId or nil,
			page = params.page or 1,
		})
	end)
end
