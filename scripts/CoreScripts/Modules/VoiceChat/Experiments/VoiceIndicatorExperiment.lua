--!nonstrict
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local IXPServiceWrapper = require(RobloxGui.Modules.Common.IXPServiceWrapper)

-- Better to be safe than sorry when it comes to IXP
game:DefineFastString("VoiceRecordingIndicatorsLayerName", "Social.Voice.VoiceRecordingIndicators.V1")
game:DefineFastString("VoiceRecordingIndicatorsLayerValue", "VoiceRecordingIndicatorsEnabled")

local fetched = false
local indicatorEnabled = nil
local function IXPRecordingIndicatorEnabled()
    local layerName = game:GetFastString("VoiceRecordingIndicatorsLayerName")
    local layerValue = game:GetFastString("VoiceRecordingIndicatorsLayerValue")
    if not fetched then
        -- Note that this may be called twice if there are simultaneous connections, but this should not be a problem
        IXPServiceWrapper:InitializeAsync((Players and Players.LocalPlayer and Players.LocalPlayer.UserId)::number, layerName)
        fetched = true
        local layerData = IXPServiceWrapper:GetLayerData(layerName)
        indicatorEnabled = layerData and layerData[layerValue]::boolean
    end
    return indicatorEnabled
end

return IXPRecordingIndicatorEnabled