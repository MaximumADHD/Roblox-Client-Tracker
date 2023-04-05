local AppStorageService = game:GetService("AppStorageService")

game:DefineFastInt("Roact17Rollout11", 100)
game:DefineFastFlag("Roact17RolloutEnabledForAll11", false)

-- Helper function to throttle based on a unique id:
return function()
	local rolloutEnabledForAll = game:GetFastFlag("Roact17RolloutEnabledForAll11")
	if rolloutEnabledForAll then
		return true
	end

	local rolloutPercent = game:GetFastInt("Roact17Rollout11")
	local installationId = AppStorageService:GetItem("AppInstallationId")

	local installationIdType = typeof(installationId)

	if installationIdType == "number" then
		-- Determine userRollout using last two digits of user ID:
		-- (+1 to change range from 0-99 to 1-100 as 0 is off, 100 is full on):
		local userRollout = (installationId % 100) + 1
		return userRollout <= rolloutPercent
	end

	if installationIdType == "string" then
		if string.len(installationId) <= 0 then
			return 100 <= rolloutPercent
		end

		local userRollout = tonumber(string.sub(installationId, -2))

		-- tonumber returns nil if conversion fails
		if userRollout == nil then
			return 100 <= rolloutPercent
		end

		-- (+1 to change range from 0-99 to 1-100 as 0 is off, 100 is full on):
		userRollout += 1
		return userRollout <= rolloutPercent
	end

	-- If the AppInstallationID is not a number or string, only return true
	-- if the rolloutPercentage is at least 100
	return 100 <= rolloutPercent
end
