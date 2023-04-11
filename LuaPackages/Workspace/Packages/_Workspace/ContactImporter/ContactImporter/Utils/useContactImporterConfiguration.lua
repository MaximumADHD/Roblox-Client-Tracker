local ContactImporter = script.Parent.Parent
local dependencies = require(ContactImporter.dependencies)

local OffPlatformFriendRequestsIXP = require(ContactImporter.Flags.OffPlatformFriendRequestsIXP)
local useSelector = dependencies.useSelector
local getContactImporterParams = require(script.Parent.getContactImporterParams)

return function(config: { policyIsEnabled: boolean? })
	local isLocalUserSoothsayer = useSelector(function(state)
		return state.IsLocalUserSoothsayer
	end)
	local contactImporterInfo = useSelector(getContactImporterParams)

	local isOffPlatformFriendRequestEnabled = OffPlatformFriendRequestsIXP.useOffPlatformFriendRequestsEnabled()

	local contactImporterExperimentOrReleaseEnabled = isOffPlatformFriendRequestEnabled

	local shouldShowFeature
	local shouldFetchData

	if isLocalUserSoothsayer then
		shouldFetchData = true
		shouldShowFeature = true
	else
		shouldFetchData = contactImporterExperimentOrReleaseEnabled and config.policyIsEnabled
		shouldShowFeature = contactImporterInfo.shouldShowContactImporterFeature
	end

	local shouldShowEntry = shouldFetchData and shouldShowFeature
	local shouldShowModal = shouldShowEntry and contactImporterInfo.shouldShowContactImporterUpsellModal

	return {
		shouldFetchContactImporterData = shouldFetchData or false,
		shouldShowContactImporter = shouldShowEntry or false,
		shouldShowContactImporterModal = shouldShowModal or false,
	}
end
