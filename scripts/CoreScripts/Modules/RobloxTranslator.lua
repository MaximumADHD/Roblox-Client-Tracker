local LocalizationService = game:GetService("LocalizationService")
local CoreGui = game:GetService('CoreGui')
local Players = game:GetService("Players")

-- Waiting for the player ensures that the RobloxLocaleId has been set.
if Players.LocalPlayer == nil then
    Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
end

local coreScriptTableTranslator
local function getTranslator()
    if coreScriptTableTranslator == nil then
        coreScriptTableTranslator = CoreGui.CoreScriptLocalization:GetTranslator(
            LocalizationService.RobloxLocaleId)
    end
    return coreScriptTableTranslator
end

local RobloxTranslator = {}

function RobloxTranslator:FormatByKey(key, args)
    return getTranslator():FormatByKey(key, args)
end

return RobloxTranslator
