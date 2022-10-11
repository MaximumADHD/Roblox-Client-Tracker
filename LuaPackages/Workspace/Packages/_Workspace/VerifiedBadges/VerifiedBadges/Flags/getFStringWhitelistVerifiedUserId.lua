game:DefineFastString("WhitelistVerifiedUserId", "")

--[=[
	The `WhitelistVerifiedUserId` string controls the whitlisted user which we will
	return true for the verified status.

	By default the value is `` as we don't want any userIds whitelisted
	this values will be used for testing.

	@within VerifiedBadges
	@tag Fast
]=]
local function getFStringWhitelistVerifiedUserId()
	return game:GetFastString("WhitelistVerifiedUserId")
end

return getFStringWhitelistVerifiedUserId
