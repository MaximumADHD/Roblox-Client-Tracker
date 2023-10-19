local AppStorageService = game:GetService("AppStorageService")

game:DefineFastInt("ExperienceChatUserProfileApiRollout_v1", 0)
game:DefineFastFlag("ExperienceChatUserProfileApiEnabledForAll_v1", false)

export type AppStorageService = { GetItem: (any, string) -> any }

local getNumericalApplicationId = function(appStorageService: AppStorageService?)
	local appStorageServiceWithDefault: any = AppStorageService
	if appStorageService then
		appStorageServiceWithDefault = appStorageService
	end
	local installationId = appStorageServiceWithDefault:GetItem("AppInstallationId")

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

local getRolloutEnabledForUser = function(rolloutPercentage: () -> number, appStorageService: AppStorageService?)
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

local rolloutByApplicationId = function(rolloutPercentage: () -> number, appStorageService: AppStorageService?)
	-- Using a local variable so that getRolloutEnabledForUser() is called
	-- only once. This is in case there is any non-deterministic behavior
	-- when getting the app installation ID.
	local IsUserEnrolled = getRolloutEnabledForUser(rolloutPercentage, appStorageService)

	return function()
		return IsUserEnrolled
	end
end

local experienceChatUserProfileApiRollout = function()
	return game:GetFastInt("ExperienceChatUserProfileApiRollout_v1")
end

local experienceChatUserProfileApiEnabledForAll = function()
	return game:GetFastFlag("ExperienceChatUserProfileApiEnabledForAll_v1")
end

local rollout = rolloutByApplicationId(experienceChatUserProfileApiRollout)

return function()
	return experienceChatUserProfileApiEnabledForAll() or rollout()
end
