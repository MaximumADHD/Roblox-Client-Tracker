local FFlagStudioCreatePluginPolicyService = game:GetFastFlag("StudioCreatePluginPolicyService")
local FFlagLuobuDevPublishLua = game:GetFastFlag("LuobuDevPublishLua")
local FFlagUpdatePublishPlacePluginToDevFrameworkContext = game:GetFastFlag("UpdatePublishPlacePluginToDevFrameworkContext")

local StudioService = game:GetService("StudioService")

local PublishPlaceAsPolicy = FFlagStudioCreatePluginPolicyService and game:GetService("PluginPolicyService"):getPluginPolicy("PublishPlaceAs") or nil

local PublishPlaceAsUtilities =  {}

local function checkIfPolicyDoesNotExistAndBaseUrlChineseHost()
    assert(FFlagUpdatePublishPlacePluginToDevFrameworkContext and FFlagLuobuDevPublishLua)

    return not FFlagStudioCreatePluginPolicyService and StudioService:BaseURLHasChineseHost()
end

function PublishPlaceAsUtilities.shouldShowDevPublishLocations()
    assert(FFlagUpdatePublishPlacePluginToDevFrameworkContext and FFlagLuobuDevPublishLua)

    return checkIfPolicyDoesNotExistAndBaseUrlChineseHost()
        or (FFlagStudioCreatePluginPolicyService and PublishPlaceAsPolicy["ShowOptInLocations"])
end

return PublishPlaceAsUtilities
