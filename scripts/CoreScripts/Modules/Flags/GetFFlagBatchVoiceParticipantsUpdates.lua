local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CoreGuiModules = RobloxGui:WaitForChild("Modules")
local IXPServiceWrapper = require(CoreGuiModules.Common.IXPServiceWrapper)
game:DefineFastFlag("BatchVoiceParticipantsUpdates", false)
local layerName = game:DefineFastString("ThrottleVoiceParticipantsUpdateLayerName", "Voice.Performance")
local layerValue = game:DefineFastString("ThrottleVoiceParticipantsUpdateLayerValue", "BatchVoiceParticipantsUpdates")
local layerFetchSuccess = nil
local layerData = nil

if game:GetFastFlag("BatchVoiceParticipantsUpdates") then
    layerFetchSuccess, layerData = pcall(function()
        return IXPServiceWrapper:GetLayerData(layerName)
    end)
end

return function()
    return game:GetFastFlag("BatchVoiceParticipantsUpdates") and layerFetchSuccess and layerData and layerData[layerValue]
end
