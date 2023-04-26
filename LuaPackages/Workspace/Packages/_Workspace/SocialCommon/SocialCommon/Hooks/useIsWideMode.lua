local SocialCommon = script:FindFirstAncestor("SocialCommon")
local Packages = SocialCommon.Parent
local FormFactor = require(Packages.FormFactor)
local RoactUtils = require(Packages.RoactUtils)
local useSelector = RoactUtils.Hooks.RoactRodux.useSelector

return function()
	return useSelector(function(state)
		return state.FormFactor == FormFactor.Enums.FormFactor.WIDE
	end)
end
