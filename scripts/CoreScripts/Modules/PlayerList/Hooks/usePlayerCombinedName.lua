local CorePackages = game:GetService("CorePackages")
local ApolloClientModules = require(CorePackages.Packages.ApolloClient)
local useQuery = ApolloClientModules.useQuery
local UserProfiles = require(CorePackages.Workspace.Packages.UserProfiles)

local function usePlayerCombinedName(userId: string, fallbackName: string)
  local ref = useQuery(UserProfiles.Queries.userProfilesCombinedNameByUserIds, {
		variables = {
			userIds = { userId }
		}
	})

	local combinedName: string? = if ref.data
		then UserProfiles.Selectors.getCombinedNameFromId(ref.data, userId)
		else nil

	return combinedName or fallbackName
end

return usePlayerCombinedName
