game:DefineFastString("DiscoverabilityUpsellNonPrefillDiscoverableUserIdsWhitelist", "")

--[[
    The `DiscoverabilityUpsellNonPrefillDiscoverableUserIdsWhitelist` string
    contains a comma-separated list of userIds who will have their
    prefillDiscoverabilitySetting set to false. This will be used for testing.
--]]
return {
	isWhitelistedUserId = function(userId)
		local whitelistString = game:GetFastString("DiscoverabilityUpsellNonPrefillDiscoverableUserIdsWhitelist")
		for whitelistUserId in string.gmatch(whitelistString, "[^,]+") do
			if tostring(userId) == whitelistUserId then
				return true
			end
		end
		return false
	end,
}
