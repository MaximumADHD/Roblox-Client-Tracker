local FFlagStudioCreatePluginPolicyService = game:GetFastFlag("StudioCreatePluginPolicyService")

local StudioService = game:GetService("StudioService")
local PlayerEmulatorPolicy = FFlagStudioCreatePluginPolicyService and game:GetService("PluginPolicyService"):getPluginPolicy("PlayerEmulator") or nil

local PlayerEmulatorUtilities =  {}

function PlayerEmulatorUtilities.getSocialMediaReferencesAllowed()
    return (not FFlagStudioCreatePluginPolicyService and not StudioService:BaseURLHasChineseHost())
	    or (FFlagStudioCreatePluginPolicyService and PlayerEmulatorPolicy["SocialMediaReferencesAllowed"])
end

return PlayerEmulatorUtilities
