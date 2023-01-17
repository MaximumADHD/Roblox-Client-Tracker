local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local RoactUtils = require(Packages.RoactUtils)
local useSelector = RoactUtils.Hooks.RoactRodux.useSelector

local useScreenSize = function()
	return useSelector(function(state)
		return state.ScreenSize
	end)
end

return useScreenSize
