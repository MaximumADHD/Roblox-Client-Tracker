local RobloxAppHooks = script:FindFirstAncestor("RobloxAppHooks")
local Packages = RobloxAppHooks.Parent
local RoactUtils = require(Packages.RoactUtils)
local useSelector = RoactUtils.Hooks.RoactRodux.useSelector

return function()
	return useSelector(function(state)
		return state.ScreenSize
	end)
end
