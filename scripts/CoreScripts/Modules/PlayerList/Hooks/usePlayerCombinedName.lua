local CorePackages = game:GetService("CorePackages")
local ApolloClientModules = require(CorePackages.Packages.ApolloClient)
local useQuery = ApolloClientModules.useQuery
local UserProfiles = require(CorePackages.Workspace.Packages.UserProfiles)
local FFlagInExperienceNameQueryEnabled = require(CorePackages.Workspace.Packages.SharedFlags).FFlagInExperienceNameQueryEnabled

local function usePlayerCombinedName(userId: string, fallbackName: string)
	local ref = useQuery(if FFlagInExperienceNameQueryEnabled then UserProfiles.Queries.userProfilesInExperienceNamesByUserIds else UserProfiles.Queries.userProfilesCombinedNameByUserIds, {
		variables = {
			userIds = { userId }
		}
	})

	local combinedName: string? = if ref.data
		then if FFlagInExperienceNameQueryEnabled then UserProfiles.Selectors.getInExperienceCombinedNameFromId(ref.data, userId) else UserProfiles.Selectors.getCombinedNameFromId(ref.data, userId)
		else nil

	return combinedName or fallbackName
end

return usePlayerCombinedName
