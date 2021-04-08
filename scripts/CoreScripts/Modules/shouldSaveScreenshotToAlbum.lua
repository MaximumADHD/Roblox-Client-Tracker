local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local PolicyService = require(RobloxGui.Modules.Common.PolicyService)
local GetFFlagEnableCaptureMode = require(RobloxGui.Modules.Flags.GetFFlagEnableCaptureMode)


return function()
	local platform = UserInputService:GetPlatform()
	local shouldSaveScreenshotToAlbum = false

	if GetFFlagEnableCaptureMode() and not PolicyService:IsSubjectToChinaPolicies() and
		(platform == Enum.Platform.IOS or platform == Enum.Platform.Android) then
		shouldSaveScreenshotToAlbum = true
	end

	return shouldSaveScreenshotToAlbum
end
