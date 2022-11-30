local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local RoduxNetworking = dependencies.RoduxNetworking

local Url = dependencies.Url

return RoduxNetworking.GET(script, function(requestBuilder)
	return requestBuilder(Url.CHAT_URL):path("get-unread-conversation-count")
end)
