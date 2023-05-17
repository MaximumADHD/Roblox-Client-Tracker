local UserProfiles = script:FindFirstAncestor("UserProfiles")
local Packages = UserProfiles.Parent
local ApolloLocalState = require(Packages.ApolloLocalState)
local queries = ApolloLocalState.queries

return {
	userProfilesCombinedNameByUserIds = queries.userProfilesCombinedNameByUserIds,
	userProfilesCombinedNameAndUsernameByUserIds = queries.userProfilesCombinedNameAndUsernameByUserIds,
	userProfilesAllNamesByUserIds = queries.userProfilesAllNamesByUserIds,
}
