local FFlagEnableLuobuAudioImport = game:GetFastFlag("EnableLuobuAudioImport")
local FFlagStudioCreatePluginPolicyService = game:GetFastFlag("StudioCreatePluginPolicyService")

local StudioService = game:GetService("StudioService")
local AssetManagerPolicy = FFlagStudioCreatePluginPolicyService and game:GetService("PluginPolicyService"):getPluginPolicy("AssetManager") or nil

local AssetManagerUtilities =  {}

--[[
    Three checks we are doing to determine if we should enable audio import

    Will return true when:
        1. Luobu Audio import flag is off and we are using Global studio
        2. Luobu Audio import flag is on and GUAC flag is off
        3. GUAC flag is on and we query GUAC to see if audio import is enabled

    Once ALL flags are removed, it will leave us with just AssetManagerPolicy["EnableAudioImport"]
]]--

function AssetManagerUtilities.shouldEnableAudioImport()
    return AssetManagerPolicy["EnableAudioImport"]
end

function AssetManagerUtilities.enableAudioImport()
    return ((not FFlagEnableLuobuAudioImport and (not StudioService:BaseURLHasChineseHost()))
        or (not FFlagStudioCreatePluginPolicyService and FFlagEnableLuobuAudioImport)
        or (FFlagStudioCreatePluginPolicyService and AssetManagerUtilities.shouldEnableAudioImport()))
end

return AssetManagerUtilities
