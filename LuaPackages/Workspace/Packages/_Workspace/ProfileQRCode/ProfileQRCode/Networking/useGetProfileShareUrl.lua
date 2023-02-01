local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local createOrGetProfileShareUrl = require(ProfileQRCode.Networking.createOrGetProfileShareUrl)
local RoactUtils = require(Packages.RoactUtils)
local useDispatch = RoactUtils.Hooks.RoactRodux.useDispatch

return function()
	local dispatch = useDispatch()

	return function()
		return dispatch(createOrGetProfileShareUrl.API()):catch(function() end)
	end
end
