--!nonstrict
local AppStorageService = game:GetService("AppStorageService")
--
game:DefineFastFlag("EnableContactInvitesForNonPhoneVerifiedForAll_v2", false)
game:DefineFastInt("EnableContactInvitesForNonPhoneVerifiedRollout_v2", 0)

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
	local rolloutPercent = game:GetFastInt("EnableContactInvitesForNonPhoneVerifiedRollout_v2")
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
	local FFlagEnableContactInvitesForNonPhoneVerifiedForAll =
		game:GetFastFlag("EnableContactInvitesForNonPhoneVerifiedForAll_v2")

	-- Return true now if the main flag and the "ForAll" flag are both on
	if FFlagEnableContactInvitesForNonPhoneVerifiedForAll then
		return true
	end

	-- Deteremine if the feature is enabled based on the Fast Int flag
	-- percentage.
	if IsUserEnrolled == nil then
		IsUserEnrolled = getRolloutEnabledForUser()
	end

	return IsUserEnrolled
end
