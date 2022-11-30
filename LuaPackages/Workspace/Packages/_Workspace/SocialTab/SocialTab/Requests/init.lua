local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local NetworkingUsers = dependencies.NetworkingUsers

return {
	FetchChatSettings = require(script.FetchChatSettings),
	GetUserV2FromUserId = NetworkingUsers.GetUserV2FromUserId,
}
