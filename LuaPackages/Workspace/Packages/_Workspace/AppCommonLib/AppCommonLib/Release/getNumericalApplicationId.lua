local AppStorageService = game:GetService("AppStorageService")
game:DefineFastFlag("EnableContactInvitesForNonPhoneVerifiedForAll", false)
game:DefineFastInt("EnableContactInvitesForNonPhoneVerifiedRollout", 0)

export type AppStorageService = { GetItem: (any, string) -> any }

return function(appStorageService: AppStorageService?)
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
