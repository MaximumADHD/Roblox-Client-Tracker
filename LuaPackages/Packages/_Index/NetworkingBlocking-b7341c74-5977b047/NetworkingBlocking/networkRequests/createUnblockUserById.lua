--[[
	UnblockUserById API

	Query path: /userblock/unblock
	TODO: replace api proxy with account settings (SOCCONN-1093)
]]
local API_URL = require(script.Parent.Parent.API_URL)

type Params = {
	userId: string
}

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.POST({ Name = "UnblockUserById" }, function(requestBuilder, params: Params)
		return requestBuilder(API_URL):path("userblock"):path("unblock"):body({
			userId = params.userId,
		})
	end)
end
