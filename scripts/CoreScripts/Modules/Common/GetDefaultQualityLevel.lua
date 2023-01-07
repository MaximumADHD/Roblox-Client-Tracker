local CorePackages = game:GetService("CorePackages")
local IsVRAppBuild = require(CorePackages.Workspace.Packages.AppCommonLib).IsVRAppBuild
local UserInputService = game:GetService("UserInputService")
local GetFFlagFixedVRAppQualityLevel = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagFixedVRAppQualityLevel

return function()
	if GetFFlagFixedVRAppQualityLevel() then
		if Enum.Platform.XBoxOne == UserInputService:GetPlatform() then
			return Enum.QualityLevel.Level21
		elseif IsVRAppBuild() then
			return Enum.QualityLevel.Level03
		else
			return Enum.QualityLevel.Automatic
		end
	else
		return Enum.Platform.XBoxOne == UserInputService:GetPlatform() and Enum.QualityLevel.Level21 or Enum.QualityLevel.Automatic
	end
end
