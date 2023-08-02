game:DefineFastString("WhitelistVerifiedUserId", "")

--[=[
    The `WhitelistVerifiedUserId` string controls the whitelisted user which we will
    return true for the verified status.

    By default the value is `` as we don't want any userIds whitelisted
    this values will be used for testing.
    
    This is a duplicate FFlag to the one with the same name in the Verified Badges
    module in the `lua-apps` repo.
    
    @tag Fast
]=]

local function getFStringWhitelistVerifiedUserId()
	return game:GetFastString("WhitelistVerifiedUserId")
end

return getFStringWhitelistVerifiedUserId
