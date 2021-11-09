local Plugin = script.Parent.Parent.Parent
local DebugFlags = require(Plugin.Src.Util.DebugFlags)

local StudioService = game:GetService("StudioService")

local PlayerEmulatorUtilities =  {}

function PlayerEmulatorUtilities.getSocialMediaReferencesAllowed()
    if DebugFlags.RunningUnderCLI() then
        return true --PluginPolicyService not available under CLI
    end
    local PlayerEmulatorPolicy = game:GetService("PluginPolicyService"):getPluginPolicy("PlayerEmulator")
    return PlayerEmulatorPolicy["SocialMediaReferencesAllowed"]
end

function PlayerEmulatorUtilities.getStudioLocaleId()
    if DebugFlags.RunningUnderCLI() then
        return "en" --StudioLocaleId not available under CLI
    end
    return StudioService.StudioLocaleId
end

return PlayerEmulatorUtilities
