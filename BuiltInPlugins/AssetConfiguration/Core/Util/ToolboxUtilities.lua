local FFlagStudioCreatePluginPolicyService = game:GetFastFlag("StudioCreatePluginPolicyService")

local StudioService = game:GetService("StudioService")
local ToolboxPolicy = FFlagStudioCreatePluginPolicyService and game:GetService("PluginPolicyService"):getPluginPolicy("Toolbox") or nil

local ToolboxUtilities =  {}

local function checkIfPolicyDoesNotExistAndBaseUrlChineseHost()
    return not FFlagStudioCreatePluginPolicyService and StudioService:BaseURLHasChineseHost()
end

function ToolboxUtilities.showRobloxCreatedAssets()
    return checkIfPolicyDoesNotExistAndBaseUrlChineseHost()
        or (FFlagStudioCreatePluginPolicyService and ToolboxPolicy["ShowRobloxCreatedAssets"])
end

function ToolboxUtilities.disableMarketplaceAndRecents()
    return checkIfPolicyDoesNotExistAndBaseUrlChineseHost()
        or (FFlagStudioCreatePluginPolicyService and ToolboxPolicy["DisableMarketplaceAndRecents"])
end

function ToolboxUtilities.getMaxAudioLength()
    return ToolboxPolicy["MaxAudioLength"]
end

function ToolboxUtilities.getToolboxEnabled()
    return ToolboxPolicy["Enabled"]
end

function ToolboxUtilities.getMarketplaceDisabledCategories()
    return ToolboxPolicy["MarketplaceDisabledCategories"]
end

return ToolboxUtilities
