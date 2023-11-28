local CorePackages = game:GetService("CorePackages")
local IsVRAppBuild = require(CorePackages.Workspace.Packages.AppCommonLib).IsVRAppBuild
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

return function()
	if IsVRAppBuild() then
		return Enum.QualityLevel.Level07 -- This is when shadows kick-in on the Quest's FRM
	else
		return Enum.QualityLevel.Automatic
	end
end
