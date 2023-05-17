local UserProfiles = script:FindFirstAncestor("UserProfiles")
local Packages = UserProfiles.Parent

local ApolloClient = require(Packages.ApolloClient)
local useQuery = ApolloClient.useQuery

--! TODO FSYS-508 add tests

local useUserProfilesFetch = function(options: { userIds: { string }, query: ApolloClient.DocumentNode })
	local ref = useQuery(options.query, {
		errorPolicy = "all",
		variables = {
			userIds = options.userIds,
		},
	})

	return ref
end

return useUserProfilesFetch
