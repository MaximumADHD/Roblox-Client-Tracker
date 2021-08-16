local FFlagStudioCreatePluginPolicyService = game:GetFastFlag("StudioCreatePluginPolicyService")
local FFlagLuobuDevPublishLua = game:GetFastFlag("LuobuDevPublishLua")
local FFlagLuobuDevPublishLuaTempOptIn = game:GetFastFlag("LuobuDevPublishLuaTempOptIn")
local FStringDevPublishChinaRequirementsLink = game:GetFastString("DevPublishChinaRequirementsLink")

local StudioService = game:GetService("StudioService")

local PublishPlaceAsPolicy = FFlagStudioCreatePluginPolicyService and game:GetService("PluginPolicyService"):getPluginPolicy("PublishPlaceAs") or nil

local PublishPlaceAsUtilities =  {}

local function checkIfPolicyDoesNotExistAndBaseUrlChineseHost()
    assert(FFlagLuobuDevPublishLua or FFlagLuobuDevPublishLuaTempOptIn)

    return not FFlagStudioCreatePluginPolicyService and StudioService:BaseURLHasChineseHost()
end

function PublishPlaceAsUtilities.shouldShowDevPublishLocations()
    assert(FFlagLuobuDevPublishLua or FFlagLuobuDevPublishLuaTempOptIn)

    return checkIfPolicyDoesNotExistAndBaseUrlChineseHost()
        or (FFlagStudioCreatePluginPolicyService and PublishPlaceAsPolicy["ShowOptInLocations"])
end

function PublishPlaceAsUtilities.getOptInLocationsRequirementsLink(location)
    assert(FFlagLuobuDevPublishLua)

    return FStringDevPublishChinaRequirementsLink
end

function PublishPlaceAsUtilities.getPlayerAppDownloadLink(location)
    assert(FFlagLuobuDevPublishLua)

    return (checkIfPolicyDoesNotExistAndBaseUrlChineseHost() and "https://www.roblox.qq.com")
    or (FFlagStudioCreatePluginPolicyService and PublishPlaceAsPolicy["PlayerAppDownloadLink"][location])
end

return PublishPlaceAsUtilities
