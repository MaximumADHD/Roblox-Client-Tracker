local CHAT_URL = require(script.Parent.Parent.CHAT_URL)

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.GET({ Name = "GetRolloutSettings" }, function(requestBuilder, featureNames)
		return requestBuilder(CHAT_URL):path("v2"):path("get-rollout-settings"):expandedQueryArgsWithIds("featureNames", featureNames)
	end)
end
