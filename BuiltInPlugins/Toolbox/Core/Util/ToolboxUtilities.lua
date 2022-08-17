local Plugin = script.Parent.Parent.Parent
local isCli = require(script.Parent.isCli)

local FFlagToolboxEnableAnnouncementsDialog = game:GetFastFlag("ToolboxEnableAnnouncementsDialog")
local FFlagToolboxCreatorMarketplaceWebLinks = game:GetFastFlag("ToolboxCreatorMarketplaceWebLinks")

local AssetQuotaTypes = require(Plugin.Core.Types.AssetQuotaTypes)
local ToolboxPolicy
if isCli() then
	-- PluginPolicyService is not available in roblox-cli. So we set a mock policy (which is the current Global Toolbox policy)
	ToolboxPolicy = {
		ShowRobloxCreatedAssets = false,
		DisableMarketplaceAndRecents = false,
		DisableRatings = false,
		HideNonRelevanceSorts = false,
		MarketplaceDisabledCategories = "FreePlugins;PaidPlugins;Plugins;FreeVideo",
		MarketplaceShouldUsePluginCreatorWhitelist = true,
		DisableAutocomplete = false,
		Enabled = true,
		AnnouncementConfiguration = {
			ButtonKey = "Button_Default",
			Date = "2022-08-08T19:45:23.0346658-05:00",
			DescriptionKey = "Description_08092022",
			HeaderKey = "Header_Default",
			Image = "rbxasset://textures/StudioToolbox/announcementConstruction.png",
			LinkKey = "LinkText_Default",
			LinkLocation = "https://roblox.com",
		}
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

function ToolboxUtilities.getShouldDisableAutocomplete()
	return ToolboxPolicy["DisableAutocomplete"]
end

export type AssetConfigMessaging = {
	showManageUniversePermissionsLink: boolean?,
	audioPublicationDisabledLink: string?,
}
function ToolboxUtilities.getAssetConfigMessaging(): AssetConfigMessaging
	return ToolboxPolicy["AssetConfigMessaging"] or {}
end

if FFlagToolboxCreatorMarketplaceWebLinks then
	function ToolboxUtilities.getCreatorMarketplaceWebBaseUrl(): string?
		return ToolboxPolicy["CreatorMarketplaceWebUrl"]
	end
end

local assetTypeLookup = {}
for _, v in pairs(Enum.AssetType:GetEnumItems()) do
	assetTypeLookup[v.Name] = v
end

function ToolboxUtilities.getAssetConfigDistributionQuotas(): AssetQuotaTypes.AssetQuotaPolicy
	local policyName = "AssetConfigDistributionQuotas"
	local policyValue = ToolboxPolicy[policyName]

	if policyValue == nil then
		return {}
	end

	if type(policyValue) ~= "table" then
		warn(policyName .. " is expected to be a table if defined")
		return {}
	end

	local results = {}
	for key, value in pairs(policyValue) do
		local assetType = assetTypeLookup[key]
		if assetType ~= nil then
			results[key] = value
		else
			warn("Invalid assetType name in getAssetConfigDistributionQuotasEnabledAssetTypes:", key)
		end
	end
	return results
end

if FFlagToolboxEnableAnnouncementsDialog then
	export type AnnouncementInfo = {
		Date: string?,
		Header: string?,
		Description: string?,
		Image: string?,
	}
	function ToolboxUtilities.getAnnouncementConfiguration(): AnnouncementInfo
		local policyName = "AnnouncementConfiguration"
		local policyValue = ToolboxPolicy[policyName]

		if policyValue == nil then
			return {}
		end
		if type(policyValue) ~= "table" then
			warn(policyName .. " is expected to be a table if defined")
			return {}
		end
		return policyValue
	end
end

return ToolboxUtilities
