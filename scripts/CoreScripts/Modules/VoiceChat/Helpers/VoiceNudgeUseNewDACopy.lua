local IXPService = game:GetService("IXPService")

local CorePackages = game:GetService("CorePackages")
local log = require(CorePackages.Workspace.Packages.CoreScriptsInitializer).CoreLogger:new(script.Name)

local GetFFlagVoiceChatDisruptiveVoiceNudgeForceUseNewDACopy = require(script.Parent.Parent.Flags.GetFFlagVoiceChatDisruptiveVoiceNudgeForceUseNewDACopy)

local FStringIXPLayerName = game:DefineFastString("DisruptiveVoiceNudgeVariantIXPLayerName", "Voice.CivilityAndSafety")
local FStringIXPVariableName = game:DefineFastString("DisruptiveVoiceNudgeVariantIXPVariableName", "UseNewDACopy")

local function VoiceNudgeUseNewDACopy(): boolean 
    if GetFFlagVoiceChatDisruptiveVoiceNudgeForceUseNewDACopy() then
        return true
    end
    local success, IXPData = pcall(function()
        return IXPService:GetUserLayerVariables(FStringIXPLayerName)
    end)
    if not success or not IXPData or IXPData[FStringIXPVariableName] == nil then
        log:debug("Failed to get IXP data for layer: " .. FStringIXPLayerName .. " with variable: " .. FStringIXPVariableName)
        return false
    end 
    IXPService:LogUserLayerExposure(FStringIXPLayerName)
    log:debug("Experiment variant for " .. FStringIXPVariableName .. ": " .. tostring(IXPData[FStringIXPVariableName])) 
    return IXPData[FStringIXPVariableName] 
end 

return VoiceNudgeUseNewDACopy