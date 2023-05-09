local Packages = script:FindFirstAncestor("ApolloLocalState").Parent

local ApolloClient = require(Packages.ApolloClient)
local gql = ApolloClient.gql

local profilesInsightsByUserIdsQuery = gql([[
	query ProfilesInsights($userIds: [String]!, $count: Int) {
		profilesInsightsByUserIds(userIds: $userIds, count: $count) {
			targetUserId
			isOfflineFrequents
			mutualFriends {
				id
				username
				displayName
			}
		}
	}
]])

return profilesInsightsByUserIdsQuery
