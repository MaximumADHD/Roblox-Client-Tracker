-- Replace invocations of this util with direct call to
-- when FFlag:MaquettesBuildFlags is removed
local VRService = game:GetService("VRService")

return function()
	if game:GetEngineFeature("MaquettesBuildFlagsEnabled") then
		return VRService:IsVRAppBuild()
	else
		return VRService.VREnabled
	end
end
