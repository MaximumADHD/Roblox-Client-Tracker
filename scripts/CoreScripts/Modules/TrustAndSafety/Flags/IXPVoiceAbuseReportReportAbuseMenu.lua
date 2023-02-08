local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local IXPServiceWrapper = require(RobloxGui.Modules.Common.IXPServiceWrapper)
local Players = game:GetService("Players")

local config = {
	enabled = true,
	inSortingExperiment = false,
	inEntryExperiment = false,
}

if game:DefineFastFlag("EnableReportAbuseMenuLayerOnV3", false) then
	local layerName = game:DefineFastString("ReportAbuseMenuLayerOnV3Layer", "Social.VoiceAbuseReport.ReportAbuseMenu.V1")
	local localPlayer = Players.LocalPlayer
	local localPlayerUserId = 0
	while not localPlayer do
		Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
		localPlayer = Players.LocalPlayer
		localPlayerUserId = localPlayer and localPlayer.UserId or 0
	end

	IXPServiceWrapper:InitializeAsync(localPlayerUserId, layerName)
	local layerData = IXPServiceWrapper:GetLayerData(layerName)
	if layerData then
		config.inSortingExperiment = layerData.VoiceAbuseReportProximitySort
		config.inEntryExperiment = layerData.VoiceAbuseReportSmartEntry
		config.enabled = not layerData.VoiceAbuseReportDisabled
	else
		-- We default to NOT showing the method of abuse if IXP is down and everything else is working
		config.enabled = false
	end
end

return config;
