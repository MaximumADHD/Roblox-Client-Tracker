local isCli = require(script.Parent.isCli)

local FFlagToolboxDisableAutocompleteWithGuac = game:GetFastFlag("ToolboxDisableAutocompleteWithGuac")
local FFlagToolboxAssetCategorization = game:GetFastFlag("ToolboxAssetCategorization")

local ToolboxPolicy
if isCli() then
	-- PluginPolicyService is not available in roblox-cli. So we set a mock policy (which is the current Global Toolbox policy)
	ToolboxPolicy = {
		ShowRobloxCreatedAssets = false,
		DisableMarketplaceAndRecents = false,
		DisableRatings = false,
		HideNonRelevanceSorts = false,
		HomeViewEnabledAssetTypes = "Model;Audio",
		MarketplaceDisabledCategories = "FreePlugins;PaidPlugins;Plugins;FreeVideo",
		MarketplaceShouldUsePluginCreatorWhitelist = true,
		DisableAutocomplete = false,
		Enabled = true,
	}
else
	ToolboxPolicy = game:GetService("PluginPolicyService"):getPluginPolicy("Toolbox")
end

local ToolboxUtilities = {}

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

function ToolboxUtilities.getShouldUsePluginCreatorWhitelist()
	local policy = ToolboxPolicy["MarketplaceShouldUsePluginCreatorWhitelist"]

	-- Default to true (original behaviour) if the policy is not defined
	if policy == nil then
		return true
	end

	return policy
end

function ToolboxUtilities.disableRatings()
	return ToolboxPolicy["DisableRatings"]
end

function ToolboxUtilities.getShouldHideNonRelevanceSorts()
	return ToolboxPolicy["HideNonRelevanceSorts"]
end

function ToolboxUtilities.getShouldHideVerifiedCreatorBadges()
	return ToolboxPolicy["HideVerifiedCreatorBadges"]
end

if FFlagToolboxDisableAutocompleteWithGuac then
	function ToolboxUtilities.getShouldDisableAutocomplete()
		return ToolboxPolicy["DisableAutocomplete"]
	end
end

if FFlagToolboxAssetCategorization then
	function ToolboxUtilities.getHomeViewEnabledAssetTypes()
		return ToolboxPolicy["HomeViewEnabledAssetTypes"]
	end
end

return ToolboxUtilities
