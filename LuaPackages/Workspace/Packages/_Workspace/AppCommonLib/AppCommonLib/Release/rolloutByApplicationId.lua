local getNumericalApplicationId = require(script.Parent.getNumericalApplicationId)

--! NOTE right now the appInstallationId is the same on the device, so this function will always rollout to the same devices.
-- TODO SAC-503 make a randomiser function so different users get different rollouts.

--[[ Determine if a user should have this feature enabled based on their
	application installation ID. ]]
--
local function getRolloutEnabledForUser(
	rolloutPercentage: () -> number,
	appStorageService: getNumericalApplicationId.AppStorageService?
)
	local rolloutPercent = rolloutPercentage()
	local appInstallationId = getNumericalApplicationId(appStorageService)

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

return function(rolloutPercentage: () -> number, appStorageService: getNumericalApplicationId.AppStorageService?)
	-- Using a local variable so that getRolloutEnabledForUser() is called
	-- only once. This is in case there is any non-deterministic behavior
	-- when getting the app installation ID.
	local IsUserEnrolled = getRolloutEnabledForUser(rolloutPercentage, appStorageService)

	return function()
		return IsUserEnrolled
	end
end
