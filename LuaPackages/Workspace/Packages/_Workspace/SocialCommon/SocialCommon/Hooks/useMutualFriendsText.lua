--[[
	Returns localized "1 mutual friend" or "{x} mutual friends"
]]
local SocialCommon = script:FindFirstAncestor("SocialCommon")
local Packages = SocialCommon.Parent

local RoactUtils = require(Packages.RoactUtils)
local useLocalization = RoactUtils.Hooks.useLocalization

local getMutualFriendsText = require(SocialCommon.Utils.getMutualFriendsText)

return function(mutualFriendsCount: number): string
	local localized = useLocalization({
		singularMutualFriend = "Feature.Friends.Label.SingularMutualFriend",
		mutualFriends = "Feature.Friends.Label.MutualFriends",
	})

	return getMutualFriendsText({ mutualFriendsCount = mutualFriendsCount, localized = localized })
end
