local ContactImporter = script.Parent.Parent
local dependencies = require(ContactImporter.dependencies)

local ContactImporterAndPYMKIXP = require(ContactImporter.Flags.ContactImporterAndPYMKIXP)
local OffPlatformFriendRequestsIXP = require(ContactImporter.Flags.OffPlatformFriendRequestsIXP)
local useSelector = dependencies.useSelector
local getFStringSocialFriendsLayer = dependencies.getFStringSocialFriendsLayer
local useUserExperiment = dependencies.useUserExperiment
local getContactImporterParams = require(script.Parent.getContactImporterParams)

return function(config: { policyIsEnabled: boolean? })
	local isLocalUserSoothsayer = useSelector(function(state)
		return state.IsLocalUserSoothsayer
	end)
	local contactImporterInfo = useSelector(getContactImporterParams)

	local isContactImporterExperimentEnabled = useUserExperiment({
		getFStringSocialFriendsLayer(),
	}, ContactImporterAndPYMKIXP.experimentOrRolloutEnabled)
	local isOffPlatformFriendRequestEnabled = OffPlatformFriendRequestsIXP.useOffPlatformFriendRequestsEnabled()

	local contactImporterExperimentOrReleaseEnabled = isOffPlatformFriendRequestEnabled
		or isContactImporterExperimentEnabled

	local shouldShowContactImporterFeature = contactImporterInfo.shouldShowContactImporterFeature
		or isLocalUserSoothsayer
	local shouldShowContactImporterUpsellModal = contactImporterInfo.shouldShowContactImporterUpsellModal
	local shouldFetchContactImporterData = (contactImporterExperimentOrReleaseEnabled and config.policyIsEnabled)
		or isLocalUserSoothsayer

	return {
		shouldFetchContactImporterData = shouldFetchContactImporterData or false,
		shouldShowContactImporter = if shouldFetchContactImporterData and shouldShowContactImporterFeature
			then true
			else false,
		shouldShowContactImporterModal = if shouldFetchContactImporterData
				and shouldShowContactImporterFeature
				and shouldShowContactImporterUpsellModal
			then true
			else false,
	}
end
