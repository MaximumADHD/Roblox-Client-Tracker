local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local RoactUtils = require(Packages.RoactUtils)
local useSelector = RoactUtils.Hooks.RoactRodux.useSelector

return function()
	return useSelector(function(state)
		return state.LocalUserId
	end)
end
