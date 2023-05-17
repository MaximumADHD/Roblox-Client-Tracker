local Packages = script:FindFirstAncestor("ApolloLocalState").Parent

local ApolloClient = require(Packages.ApolloClient)
local gql = ApolloClient.gql

local userProfilesCombinedNameByUserIds = gql([[
	query UserProfiles($userIds: [String]!) {
		userProfiles(userIds: $userIds) {
			id
			names {
				combinedName
			}
		}
	}
]])

return userProfilesCombinedNameByUserIds
