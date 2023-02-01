local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local LuaSocialLibrariesDeps = require(Packages.LuaSocialLibrariesDeps)
local getDeepValue = LuaSocialLibrariesDeps.SocialLibraries.config({}).Dictionary.getDeepValue
local RoactUtils = require(Packages.RoactUtils)
local useSelector = RoactUtils.Hooks.RoactRodux.useSelector
local Constants = require(ProfileQRCode.Common.Constants)

return function()
	return useSelector(function(state)
		return getDeepValue(state, Constants.RODUX_KEY .. ".ShareUrl.linkId")
	end)
end
