game:DefineFastInt("WhitelistVerifiedUserId", -1)

--[=[
	The `WhitelistVerifiedUserId` int controls the whitlisted user which we will
	return true for the verified status.

	By default the value is `-1` as we don't want any userIds whitelisted
	this values will be used for testing.

	@within VerifiedBadges
	@tag Fast
]=]
local function getFIntWhitelistVerifiedUserId()
	return game:GetFastInt("WhitelistVerifiedUserId")
end

return getFIntWhitelistVerifiedUserId
