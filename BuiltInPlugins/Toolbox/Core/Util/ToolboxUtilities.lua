local FFlagToolboxPolicyForPluginCreatorWhitelist = game:GetFastFlag("ToolboxPolicyForPluginCreatorWhitelist")
local FFlagToolboxPolicyDisableRatings = game:GetFastFlag("ToolboxPolicyDisableRatings")

local isCli = require(script.Parent.isCli)

local ToolboxPolicy
if isCli() then
    -- PluginPolicyService is not available in roblox-cli. So we set a mock policy (which is the current Global Toolbox policy)
    ToolboxPolicy = {
        ShowRobloxCreatedAssets = false,
        DisableMarketplaceAndRecents = false,
        DisableRatings = false,
        MarketplaceDisabledCategories = "FreePlugins;PaidPlugins;Plugins;FreeVideo",
        MarketplaceShouldUsePluginCreatorWhitelist = true,
        Enabled = true,
    }
else
    ToolboxPolicy = game:GetService("PluginPolicyService"):getPluginPolicy("Toolbox")
end

local ToolboxUtilities =  {}

function ToolboxUtilities.showRobloxCreatedAssets()
    return ToolboxPolicy["ShowRobloxCreatedAssets"]
end

function ToolboxUtilities.disableMarketplaceAndRecents()
    return ToolboxPolicy["DisableMarketplaceAndRecents"]
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

if FFlagToolboxPolicyForPluginCreatorWhitelist then
    function ToolboxUtilities.getShouldUsePluginCreatorWhitelist()
        local policy = ToolboxPolicy["MarketplaceShouldUsePluginCreatorWhitelist"]

        -- Default to true (existing behaviour) if the policy is not defined
        if policy == nil then
            return true
        end

        return policy
    end
end

if FFlagToolboxPolicyDisableRatings then
    function ToolboxUtilities.disableRatings()
        return ToolboxPolicy["DisableRatings"]
    end
end

return ToolboxUtilities
