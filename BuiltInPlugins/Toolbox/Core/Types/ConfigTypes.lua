local FFlagEnablePurchasePluginFromLua2 = settings():GetFFlag("EnablePurchasePluginFromLua2")

local Plugin = script.Parent.Parent.Parent

local Util = Plugin.Core.Util
local AssetConfigConstants = require(Util.AssetConfigConstants)
local ScreenSetup = require(Util.ScreenSetup)
local Images = require(Util.Images)

local FFlagEnableAssetConfigVersionCheckForModels = game:GetFastFlag("EnableAssetConfigVersionCheckForModels")
local FFlagEnableNonWhitelistedToggle = game:GetFastFlag("EnableNonWhitelistedToggle")
local FFlagShowAssetConfigReasons2 = game:GetFastFlag("ShowAssetConfigReasons2")

local ConfigTypes = {}

if FFlagShowAssetConfigReasons2 then
	ConfigTypes.NetworkErrors = {
		GET_ASSET_DETAIL_FAILURE = "GET_ASSET_DETAIL_FAILURE",
		SET_ASSET_PRICE_FAILURE = "SET_ASSET_PRICE_FAILURE",
		SET_ASSET_THUMBNAIL_FAILURE = "SET_ASSET_THUMBNAIL_FAILURE"
	}
else
	local GET_ASSET_DETAIL_FAILURE = { name = "GET_ASSET_DETAIL_FAILURE", trigger = "FailToGetAssetDetail", action = "CloseAssetConfig" }
	local SET_ASSET_PRICE_FAILURE = { name = "SET_ASSET_PRICE_FAILURE", trigger = "FailToSetPrice", action = "ShowPriceFailReason" }
	local SET_ASSET_THUMBNAIL_FAILURE = { name = "SET_ASSET_THUMBNAIL_FAILURE", trigger = "FaileToSetIcon", action = "ShowThumbnailFailReason" }
	ConfigTypes.NetworkErrors = {
		[GET_ASSET_DETAIL_FAILURE.name] = GET_ASSET_DETAIL_FAILURE,
		[SET_ASSET_PRICE_FAILURE.name] = SET_ASSET_PRICE_FAILURE,
		[SET_ASSET_THUMBNAIL_FAILURE.name] = SET_ASSET_THUMBNAIL_FAILURE,
	}
	ConfigTypes.GET_ASSET_DETAIL_FAILURE_ACTION = "CloseAssetConfig"
end

local GENERAL = {
	name = AssetConfigConstants.SIDE_TABS.General,
	image = Images.GENERAL_SIDE_TAB
}

local VERSIONS = {
	name = AssetConfigConstants.SIDE_TABS.Versions,
	image = Images.VERSIONS_SIDE_TAB
}

local SALES = {
	name = AssetConfigConstants.SIDE_TABS.Sales,
	image = Images.SALES_SIDE_TAB
}

local OVERRIDE = {
	name = AssetConfigConstants.SIDE_TABS.Override
}

local PERMISSIONS = {
	name = AssetConfigConstants.SIDE_TABS.Permissions,
	image = Images.PERMISSIONS_SIDE_TAB,
}

ConfigTypes.OWNER_TYPES = {
	User = 1,
	Group = 2
}

function ConfigTypes:getAssetconfigContent(screenFlowType, assetTypeEnum, isMarketBuyAndNonWhiteList, isPackage, owner)
	local result = {
		GENERAL,
	}

	if isPackage then
		result[#result + 1] = PERMISSIONS
	end

	-- Versions History is only accessible to models and plugins, so we only try to show the Versions if it's a model.
	if FFlagEnableAssetConfigVersionCheckForModels then
		if assetTypeEnum == Enum.AssetType.Model then
			if ScreenSetup.queryParam(screenFlowType, assetTypeEnum, ScreenSetup.keys.SHOW_VERSIONS_TAB) then
				result[#result + 1] = VERSIONS
			end
		end
	else
		if ScreenSetup.queryParam(screenFlowType, assetTypeEnum, ScreenSetup.keys.SHOW_VERSIONS_TAB) then
			result[#result + 1] = VERSIONS
		end
	end

	if FFlagEnablePurchasePluginFromLua2 then
		-- Non-whitelisted users will also have access to sales tab.
		if not FFlagEnableNonWhitelistedToggle then
			if isMarketBuyAndNonWhiteList then return result end
		end
		if owner and owner.typeId == ConfigTypes.OWNER_TYPES.Group then return result end
		if ScreenSetup.queryParam(screenFlowType, assetTypeEnum, ScreenSetup.keys.SHOW_SALES_TAB) then
			result[#result + 1] = SALES
		end
		return result
	else
		if ScreenSetup.queryParam(screenFlowType, assetTypeEnum, ScreenSetup.keys.SHOW_SALES_TAB) then
			result[#result + 1] = SALES
		end
		return result
	end
end

function ConfigTypes:isGeneral(item)
	return item == GENERAL
end

function ConfigTypes:isVersions(item)
	return item == VERSIONS
end

function ConfigTypes:isSales(item)
	return item == SALES
end

function ConfigTypes:isOverride(item)
	return item == OVERRIDE
end

function ConfigTypes:isPermissions(item)
	return item == PERMISSIONS
end

function ConfigTypes:getOverrideTab()
	return OVERRIDE
end

function ConfigTypes:getGeneralTab()
	return GENERAL
end

function ConfigTypes:getDefualtTab()
	return GENERAL
end

return ConfigTypes