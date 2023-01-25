local CorePackages = game:GetService("CorePackages")
local IsVRAppBuild = require(CorePackages.Workspace.Packages.AppCommonLib).IsVRAppBuild
local UserInputService = game:GetService("UserInputService")

return function()
	if Enum.Platform.XBoxOne == UserInputService:GetPlatform() then
		return Enum.QualityLevel.Level21
	elseif IsVRAppBuild() then
		return Enum.QualityLevel.Level03
	else
		return Enum.QualityLevel.Automatic
	end
end
