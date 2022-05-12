local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)

local UserModel = dependencies.UserModel

local presenceWeights = {
	[UserModel.PresenceType.IN_GAME] = 3,
	[UserModel.PresenceType.ONLINE] = 2,
	[UserModel.PresenceType.IN_STUDIO] = 1,
	[UserModel.PresenceType.OFFLINE] = 0,
}

return function(entryA, entryB)
	entryA = entryA or {}
	entryB = entryB or {}

	local presenceA = entryA.presence
	local presenceB = entryB.presence

	--sorts by presence first, and then alphabetically as a fallback
	if presenceA and presenceB then
		if presenceWeights[presenceA] ~= presenceWeights[presenceB] then
			return presenceWeights[presenceA] > presenceWeights[presenceB]
		end
	end

	return entryA.displayName < entryB.displayName
end
