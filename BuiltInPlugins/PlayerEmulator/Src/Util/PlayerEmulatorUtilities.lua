local PlayerEmulatorPolicy = game:GetService("PluginPolicyService"):getPluginPolicy("PlayerEmulator")

local PlayerEmulatorUtilities =  {}

function PlayerEmulatorUtilities.getSocialMediaReferencesAllowed()
    return PlayerEmulatorPolicy["SocialMediaReferencesAllowed"]
end

return PlayerEmulatorUtilities
