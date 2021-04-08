local FFlagStudioCreatePluginPolicyService = game:GetFastFlag("StudioCreatePluginPolicyService")

local isCli = require(script.Parent.isCli)

local StudioService = game:GetService("StudioService")

local ToolboxPolicy
if isCli() then
    -- PluginPolicyService is not available in roblox-cli. So we set a mock policy (which is the current Global Toolbox policy)
    ToolboxPolicy = {
        ShowRobloxCreatedAssets = false,
        DisableMarketplaceAndRecents = false,
        MarketplaceDisabledCategories = "FreePlugins;PaidPlugins;Plugins;FreeVideo",
        Enabled = true
    }
else
    ToolboxPolicy = FFlagStudioCreatePluginPolicyService and game:GetService("PluginPolicyService"):getPluginPolicy("Toolbox") or nil
end

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
