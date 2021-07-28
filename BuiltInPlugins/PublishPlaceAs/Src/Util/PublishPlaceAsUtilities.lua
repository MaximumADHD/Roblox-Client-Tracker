local FFlagStudioCreatePluginPolicyService = game:GetFastFlag("StudioCreatePluginPolicyService")
local FFlagLuobuDevPublishLua = game:GetFastFlag("LuobuDevPublishLua")
local FFlagLuobuDevPublishLuaTempOptIn = game:GetFastFlag("LuobuDevPublishLuaTempOptIn")
local FFlagUpdatePublishPlacePluginToDevFrameworkContext = game:GetFastFlag("UpdatePublishPlacePluginToDevFrameworkContext")

local StudioService = game:GetService("StudioService")

local PublishPlaceAsPolicy = FFlagStudioCreatePluginPolicyService and game:GetService("PluginPolicyService"):getPluginPolicy("PublishPlaceAs") or nil

local PublishPlaceAsUtilities =  {}

local function checkIfPolicyDoesNotExistAndBaseUrlChineseHost()
    assert(FFlagUpdatePublishPlacePluginToDevFrameworkContext and (FFlagLuobuDevPublishLua or FFlagLuobuDevPublishLuaTempOptIn))

    return not FFlagStudioCreatePluginPolicyService and StudioService:BaseURLHasChineseHost()
end

function PublishPlaceAsUtilities.shouldShowDevPublishLocations()
    assert(FFlagUpdatePublishPlacePluginToDevFrameworkContext and (FFlagLuobuDevPublishLua or FFlagLuobuDevPublishLuaTempOptIn))

    return checkIfPolicyDoesNotExistAndBaseUrlChineseHost()
        or (FFlagStudioCreatePluginPolicyService and PublishPlaceAsPolicy["ShowOptInLocations"])
end

function PublishPlaceAsUtilities.getOptInLocationsRequirementsLink(location)
    assert(FFlagUpdatePublishPlacePluginToDevFrameworkContext and FFlagLuobuDevPublishLua)

    return (checkIfPolicyDoesNotExistAndBaseUrlChineseHost() and "https://developer.roblox.com/articles/china-ugc-submission-checklist")
        or (FFlagStudioCreatePluginPolicyService and PublishPlaceAsPolicy["OptInLocationsRequirements"][location])
end

function PublishPlaceAsUtilities.getPlayerAppDownloadLink(location)
    assert(FFlagUpdatePublishPlacePluginToDevFrameworkContext and FFlagLuobuDevPublishLua)

    return (checkIfPolicyDoesNotExistAndBaseUrlChineseHost() and "https://www.roblox.qq.com")
    or (FFlagStudioCreatePluginPolicyService and PublishPlaceAsPolicy["PlayerAppDownloadLink"][location])
end

return PublishPlaceAsUtilities
