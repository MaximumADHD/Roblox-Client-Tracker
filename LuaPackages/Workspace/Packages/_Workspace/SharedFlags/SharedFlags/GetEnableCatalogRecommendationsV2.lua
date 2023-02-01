--!nonstrict
local AppStorageService = game:GetService("AppStorageService")

--[[ FFlag used to enable/disable the use of Catalog Api v2 recommendations at
	the highest level. ]]
--
local GetFFlagEnableCatalogRecommendationsV2 = require(script.Parent.GetFFlagEnableCatalogRecommendationsV2)

--[[ FFlag used to enable the use of the Catalog Api v2 recommendations for all
	users. ]]
--
local FFlagCatalogRecommendationsV2RolloutEnabledForAll =
	require(script.Parent.FFlagCatalogRecommendationsV2RolloutEnabledForAll)

--[[ Using a Fast Int to rollout the Catalog Api v2 recommendations for a certain
	percentage of users [0, 100]. ]]
--
game:DefineFastInt("AvatarExperienceCatalogRecommendationsV2Rollout", 0)

local function getAppInstallationId()
	local installationId = AppStorageService:GetItem("AppInstallationId")

	local installationIdType = typeof(installationId)

	if installationIdType == "number" then
		return installationId
	end

	if installationIdType == "string" then
		if string.len(installationId) <= 0 then
			return nil
		end

		-- tonumber returns nil if conversion fails
		local lastTwoDigits = tonumber(string.sub(installationId, -2))

		return lastTwoDigits
	end

	return nil
end

--[[ Determine if a user should have this feature enabled based on their
	application installation ID. ]]
--
local function getRolloutEnabledForUser()
	local rolloutPercent = game:GetFastInt("AvatarExperienceCatalogRecommendationsV2Rollout")
	local appInstallationId = getAppInstallationId()

	-- If the AppInstallationID is not a number, then only return true if the
	-- rolloutPercent is at least 100.
	if appInstallationId == nil then
		return 100 <= rolloutPercent
	end

	-- Determine userRollout using last two digits of appInstallationId:
	-- (+1 to change range from 0-99 to 1-100 as 0 is off, 100 is full on)
	local userRollout = (appInstallationId % 100) + 1
	return userRollout <= rolloutPercent
end

-- Using a local variable so that getRolloutEnabledForUser() is called
-- only once. This is in case there is any non-deterministic behavior
-- when getting the app installation ID.
local IsUserEnrolled = nil

return function()
	-- Check the main flag and return false if it is not on
	if not GetFFlagEnableCatalogRecommendationsV2() then
		return false
	end

	-- Return true now if the main flag and the "ForAll" flag are both on
	if FFlagCatalogRecommendationsV2RolloutEnabledForAll then
		return true
	end

	-- Deteremine if the feature is enabled based on the Fast Int flag
	-- percentage.
	if IsUserEnrolled == nil then
		IsUserEnrolled = getRolloutEnabledForUser()
	end

	return IsUserEnrolled
end
