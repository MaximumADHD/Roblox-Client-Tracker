local UserInputService = game:GetService("UserInputService")
local platform = UserInputService:GetPlatform()

local GetFFlagCleanUpIsSubjectToDesktopPolicies = require(script.Parent.GetFFlagCleanUpIsSubjectToDesktopPolicies)

return function()
	if GetFFlagCleanUpIsSubjectToDesktopPolicies() then
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
