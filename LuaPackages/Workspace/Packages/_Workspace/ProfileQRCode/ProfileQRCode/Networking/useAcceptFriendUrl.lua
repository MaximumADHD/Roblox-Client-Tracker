local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local configureRoduxFriends = require(ProfileQRCode.Networking.configureRoduxFriends)
local RoactUtils = require(Packages.RoactUtils)
local useDispatch = RoactUtils.Hooks.RoactRodux.useDispatch

return function()
	local dispatch = useDispatch()

	return function(currentUser: string, targetUser: string)
		return dispatch(configureRoduxFriends.AcceptFriendRequestFromUserId.API({
			currentUserId = currentUser,
			targetUserId = targetUser,
		}))
	end
end
