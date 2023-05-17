local Packages = script:FindFirstAncestor("ApolloLocalState").Parent

local ApolloClient = require(Packages.ApolloClient)
local gql = ApolloClient.gql

local userProfilesCombinedNameAndUsernameByUserIds = gql([[
	query UserProfiles($userIds: [String]!) {
		userProfiles(userIds: $userIds) {
			id
			names {
				combinedName
				username
			}
		}
	}
]])

return userProfilesCombinedNameAndUsernameByUserIds
