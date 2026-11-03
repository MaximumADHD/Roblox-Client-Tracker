-- SafeFlags, because DefineFastFlag throws outside a RobloxScript, and the
-- Studio preview is a LocalScript. There this flag reads as on.
local MomentScenes = script:FindFirstAncestor("MomentScenes")
local Packages = MomentScenes.Parent
local SafeFlags = require(Packages.SafeFlags)

return {
	MomentScenesAvatarMomentUserId = SafeFlags.createGetFFlag("MomentScenesAvatarMomentUserId")(),
}
