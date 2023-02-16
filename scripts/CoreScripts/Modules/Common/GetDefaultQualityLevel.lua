local CorePackages = game:GetService("CorePackages")
local IsVRAppBuild = require(CorePackages.Workspace.Packages.AppCommonLib).IsVRAppBuild
local GetFFlagActivateShadowsInWorldspace = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagActivateShadowsInWorldspace
local UserInputService = game:GetService("UserInputService")

return function()
	if Enum.Platform.XBoxOne == UserInputService:GetPlatform() then
		return Enum.QualityLevel.Level21
	elseif IsVRAppBuild() then
		if GetFFlagActivateShadowsInWorldspace() then
			return Enum.QualityLevel.Level07 -- This is when shadows kick-in on the Quest's FRM
		else
			return Enum.QualityLevel.Level03
		end
	else
		return Enum.QualityLevel.Automatic
	end
end
