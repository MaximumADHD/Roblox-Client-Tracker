local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Modules = RobloxGui.Modules
local IXPServiceWrapper = require(Modules.Common.IXPServiceWrapper)

local GetFFlagEnableReportAbuseMenuRoactABTest = require(script.Parent.Parent.Flags.GetFFlagEnableReportAbuseMenuRoactABTest)
local GetFStringLuaAppExperienceMenuLayer = require(script.Parent.Parent.Flags.GetFStringLuaAppExperienceMenuLayer)
local FFlagEnableReportAbuseMenuRoact2 = game:DefineFastFlag("EnableReportAbuseMenuRoact2", false)
local FStringReportAbuseMenuRoactForcedUserIds = game:DefineFastString("ReportAbuseMenuRoactForcedUserIds", "")
local FStringReportAbuseMenuRoactIXPTreatmentKey = game:DefineFastString("ReportAbuseMenuRoactIXPTreatmentKey", "ReportAbuseMenuRoactEnabled")

return function()
	if FFlagEnableReportAbuseMenuRoact2 then
		return true
	end

	local localPlayer = Players.LocalPlayer
	while not localPlayer do
		Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
		localPlayer = Players.LocalPlayer
	end

	assert(localPlayer ~= nil, "localPlayer must not be nil")

	for forcedUserIdString in FStringReportAbuseMenuRoactForcedUserIds:gmatch("%d+") do
		if tonumber(forcedUserIdString) == localPlayer.UserId then
			return true
		end
	end

	if not GetFFlagEnableReportAbuseMenuRoactABTest() then
		return false
	end

	local layerData = IXPServiceWrapper:GetLayerData(GetFStringLuaAppExperienceMenuLayer())

	if not layerData then
		return false
	end

	assert(layerData ~= nil, "layerData must not be nil")

	return layerData[FStringReportAbuseMenuRoactIXPTreatmentKey]
end
