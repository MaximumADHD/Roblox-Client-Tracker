local getFFlagAddFriendsImproveAnalytics = require(script.Parent.getFFlagAddFriendsImproveAnalytics)
local getFFlagAddFriendsPYMKExperimentEnabled = require(script.Parent.getFFlagAddFriendsPYMKExperimentEnabled)

game:DefineFastFlag("AddFriendsPYMKAnalytics", false)

return function()
	return getFFlagAddFriendsPYMKExperimentEnabled()
		and getFFlagAddFriendsImproveAnalytics()
		and game:GetFastFlag("AddFriendsPYMKAnalytics")
end
