local CorePackages = game:GetService("CorePackages")
local ApolloClientModules = require(CorePackages.Packages.ApolloClient)
local useQuery = ApolloClientModules.useQuery
local UserProfiles = require(CorePackages.Workspace.Packages.UserProfiles)
local UserProfileStore = UserProfiles.Stores.UserProfileStore
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local SignalsReact = require(CorePackages.Packages.SignalsReact)
local GetFFlagUseUserProfileStore = SharedFlags.GetFFlagUseUserProfileStore

local function usePlayerCombinedName(userId: string, fallbackName: string): any
	if GetFFlagUseUserProfileStore() then
		local getResult = UserProfileStore.get().fetchNamesByUserIds({ userId })
		local profile = getResult(false).data[1]
		return SignalsReact.useSignalBinding(profile.names.getInExperienceCombinedName):map(function(combinedName)
			return if string.len(combinedName) == 0 then fallbackName else combinedName
		end)
	else
		local ref = useQuery(UserProfiles.Queries.userProfilesInExperienceNamesByUserIds, {
			variables = {
				userIds = { userId }
			}
		})

		local combinedName: string? = if ref.data
			then UserProfiles.Selectors.getInExperienceCombinedNameFromId(ref.data, userId)
			else nil

		return combinedName or fallbackName
	end
end

return usePlayerCombinedName
