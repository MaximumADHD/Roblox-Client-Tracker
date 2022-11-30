local SocialTab = script:FindFirstAncestor("SocialTab")
local Requests = require(SocialTab.Requests)
local FetchChatSettings = Requests.FetchChatSettings

return function(state, props)
	return {
		retrievalStatus = FetchChatSettings.getStatus(state),
	}
end
