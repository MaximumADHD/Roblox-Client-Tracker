local CALL_URL = require(script.Parent.Parent.CALL_URL)
local networkingCallTypes = require(script.Parent.Parent.networkingCallTypes)

-- CALL_URL/call/v1/get-suggested-callees
return function(config: networkingCallTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	local GetSuggestedCallees = roduxNetworking.GET({ Name = "GetSuggestedCallees" }, function(requestBuilder: any)
		return requestBuilder(CALL_URL):path("call"):path("v1"):path("get-suggested-callees")
	end)

	return GetSuggestedCallees
end
