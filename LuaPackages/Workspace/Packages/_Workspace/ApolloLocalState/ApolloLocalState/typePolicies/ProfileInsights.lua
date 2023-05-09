local Packages = script:FindFirstAncestor("ApolloLocalState").Parent
local getFFlagProfileMutualFriendsListFetch = require(Packages.SharedFlags).getFFlagProfileMutualFriendsListFetch

return {
	keyFields = if getFFlagProfileMutualFriendsListFetch() then { "targetUserId" } else nil,
}
