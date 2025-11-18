local CorePackages = game:GetService("CorePackages")
local UserProfiles = require(CorePackages.Workspace.Packages.UserProfiles)
local UserProfileStore = UserProfiles.Stores.UserProfileStore
local SignalsReact = require(CorePackages.Packages.SignalsReact)

local function usePlayerCombinedName(userId: string, fallbackName: string): any
	local getResult = UserProfileStore.get().fetchNamesByUserIds({ userId })
	local profile = getResult(false).data[1]
	return SignalsReact.useSignalBinding(profile.names.getInExperienceCombinedName):map(function(combinedName)
		return if string.len(combinedName) == 0 then fallbackName else combinedName
	end)
end

return usePlayerCombinedName
