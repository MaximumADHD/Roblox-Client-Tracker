local CALL_URL = require(script.Parent.Parent.CALL_URL)
local networkingCallTypes = require(script.Parent.Parent.networkingCallTypes)

-- CALL_URL/call/v1/get-call-history?universeId=UNIVERSEID&limit=LIMIT&cursor=CURSOR
return function(config: networkingCallTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	local GetCallHistory = roduxNetworking.GET(
		{ Name = "GetCallHistory" },
		function(requestBuilder: any, queryArgs: networkingCallTypes.QueryArgs)
			return requestBuilder(CALL_URL):path("call"):path("v1"):path("get-call-history"):queryArgs({
				universeId = if queryArgs then queryArgs.universeId else nil,
				limit = if queryArgs then queryArgs.limit else nil,
				cursor = if queryArgs then queryArgs.cursor else nil,
			})
		end
	)

	return GetCallHistory
end
