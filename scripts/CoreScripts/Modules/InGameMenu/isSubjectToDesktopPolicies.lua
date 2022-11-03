local UserInputService = game:GetService("UserInputService")
local platform = UserInputService:GetPlatform()

local CorePackages = game:GetService("CorePackages")
local SharedFlags = CorePackages.Workspace.Packages.SharedFlags
local FFlagCleanUpIsSubjectToDesktopPolicies = require(SharedFlags).GetFFlagCleanUpIsSubjectToDesktopPolicies

return function()
	if FFlagCleanUpIsSubjectToDesktopPolicies() then
		local isDesktopClient = (platform == Enum.Platform.Windows)
			or (platform == Enum.Platform.OSX)
			or (platform == Enum.Platform.UWP)
		return isDesktopClient
	else
		return game:GetEngineFeature("UniversalAppOnWindows")
			or game:GetEngineFeature("UniversalAppOnMac")
			or game:GetEngineFeature("UniversalAppOnUWP")
	end
end
