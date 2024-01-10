local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Modules = RobloxGui.Modules 

local IXPServiceWrapper = require(Modules.Common.IXPServiceWrapper)

local FFlagEnableCaptures13Experiment = game:DefineFastFlag("EnableCaptures13Experiment", false)
local FStringScreenshotSharingIXPLayer = game:DefineFastString("ScreenshotSharingIXPLayer", "Experience.Menu")
local FStringScreenshotSharingIXPTreatmentKey = game:DefineFastString("ScreenshotSharingIXPTreatmentKey", "ScreenshotSharingEnabled")
local FStringCapturesU13IXPTreatmentKey = game:DefineFastString("CapturesU13IXPTreatmentKey", "CapturesEnabledU13")

-- TODO(SACQ-1024): Write tests for GetShowCapturesTab
local GetShowCapturesTab = function()
	local localPlayer = Players.LocalPlayer
	if not localPlayer then
		return false
	end

	assert(localPlayer ~= nil, "localPlayer must not be nil")

	local localPlayerUserId = localPlayer.UserId
	IXPServiceWrapper:InitializeAsync(
		localPlayerUserId,
		FStringScreenshotSharingIXPLayer
	)
	local layerData = IXPServiceWrapper:GetLayerData(FStringScreenshotSharingIXPLayer)

	if not layerData then
		return false
	end

	assert(layerData ~= nil, "layerData must not be nil")

	return layerData[FStringScreenshotSharingIXPTreatmentKey] or (FFlagEnableCaptures13Experiment and layerData[FStringCapturesU13IXPTreatmentKey])
end

return GetShowCapturesTab