local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local LuaSocialLibrariesDeps = require(Packages.LuaSocialLibrariesDeps)
local RODUX_KEY = require(ProfileQRCode.Common.Constants).RODUX_KEY

return LuaSocialLibrariesDeps.RoduxUsers_v13.config({
	keyPath = RODUX_KEY .. ".Users",
})
