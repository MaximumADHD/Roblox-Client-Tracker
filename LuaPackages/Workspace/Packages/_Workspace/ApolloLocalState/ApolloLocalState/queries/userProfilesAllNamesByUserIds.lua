local Packages = script:FindFirstAncestor("ApolloLocalState").Parent

local ApolloClient = require(Packages.ApolloClient)
local gql = ApolloClient.gql

local userProfilesAllNamesByUserIds = gql([[
	query UserProfiles($userIds: [String]!) {
		userProfiles(userIds: $userIds) {
			id
			names {
				combinedName
				username
				alias
				displayName
				contactName
			}
		}
	}
]])

return userProfilesAllNamesByUserIds
