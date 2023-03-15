game:DefineFastInt("OffPlatformFriendRequestsRolloutEnabled", 0)

local ContactImporter = script:FindFirstAncestor("ContactImporter")
local dependencies = require(ContactImporter.dependencies)

local ReleaseHelpers = dependencies.SocialLibraries.ReleaseHelpers
local setupIsRolloutEnabledForUser = ReleaseHelpers.setupIsRolloutEnabledForUser
local getFStringSocialFriendsLayer = dependencies.getFStringSocialFriendsLayer
local getFStringContactImporterVariantForDev = require(script.Parent.getFStringContactImporterVariantForDev)
local useUserExperiment = dependencies.useUserExperiment
local getFStringOffPlatformIXPName = require(script.Parent.getFStringOffPlatformIXPName)

local IXPVariants = require(ContactImporter.Common.IXPVariants)
local VARIANT_NAME = getFStringOffPlatformIXPName()
local getRolloutPercentage = function()
	return game:GetFastInt("OffPlatformFriendRequestsRolloutEnabled")
end

local getExperimentVariantFromSocialLayer = function(layer): string?
	local devFlagVariant = getFStringContactImporterVariantForDev()
	if devFlagVariant and #devFlagVariant > 0 then
		return devFlagVariant
	else
		local layerVariant
		if layer then
			layerVariant = layer[VARIANT_NAME]
		end

		return layerVariant
	end
end

local getExperimentVariant = function(layers: any?): string?
	return getExperimentVariantFromSocialLayer(if layers then layers[getFStringSocialFriendsLayer()] else nil)
end

local rolloutFeatureToUser = setupIsRolloutEnabledForUser(getRolloutPercentage)

local experimentOrRolloutEnabled = function(layers)
	local contactImporterExperimentVariant = getExperimentVariant(layers)
	local contactImporterExperimentVariantEnabled = false
	if contactImporterExperimentVariant then
		contactImporterExperimentVariantEnabled = contactImporterExperimentVariant == IXPVariants.INVITES_ONLY
			or contactImporterExperimentVariant == IXPVariants.BLENDED
	end

	return contactImporterExperimentVariantEnabled or rolloutFeatureToUser()
end

local useOffPlatformFriendRequestsVariant = function()
	return useUserExperiment({
		getFStringSocialFriendsLayer(),
	}, getExperimentVariant)
end

local useOffPlatformFriendRequestsEnabled = function()
	return useUserExperiment({
		getFStringSocialFriendsLayer(),
	}, experimentOrRolloutEnabled)
end

return {
	experimentOrRolloutEnabled = experimentOrRolloutEnabled,
	-- above lies existing experiment, below is new experiment with 2+ variants
	IXPVariants = IXPVariants,
	useOffPlatformFriendRequestsVariant = useOffPlatformFriendRequestsVariant,
	useOffPlatformFriendRequestsEnabled = useOffPlatformFriendRequestsEnabled,
	getExperimentVariant = getExperimentVariant,
	isRolloutEnabled = function(layers)
		-- used for final stage rollout, subject to change
		if experimentOrRolloutEnabled(layers) then
			return IXPVariants.BLENDED
		else
			return IXPVariants.CONTROL
		end
	end,
}
