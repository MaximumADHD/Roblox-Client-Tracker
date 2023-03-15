local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local configureRoduxUsers = require(ProfileQRCode.Networking.configureRoduxUsers)
local RoactUtils = require(Packages.RoactUtils)
local useDispatch = RoactUtils.Hooks.RoactRodux.useDispatch

return function()
	local dispatch = useDispatch()

	return function(userId: string)
		return dispatch(configureRoduxUsers.GetUserV2FromUserId.API(userId))
	end
end
