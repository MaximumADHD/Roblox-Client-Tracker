local Plugin = script.Parent.Parent.Parent

local Util = Plugin.Core.Util
local AssetConfigConstants = require(Util.AssetConfigConstants)
local ScreenSetup = require(Util.ScreenSetup)
local Images = require(Util.Images)

local ConfigTypes = {}

local FFlagEnableAssetConfigVersionCheckForModels = game:GetFastFlag("EnableAssetConfigVersionCheckForModels")

ConfigTypes.GET_ASSET_DETAIL_FAILURE_ACTION = "CloseAssetConfig"

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

function ConfigTypes:getAssetconfigContent(screenFlowType, assetTypeEnum)
	local result = {
		GENERAL,
	}

	-- FIXME(mwang) need to verify that Asset is a Package to show Permissions.
	if game:GetFastFlag("StudioMovePkgPermsToAssetConfig") then
		if ScreenSetup.queryParam(screenFlowType, assetTypeEnum, ScreenSetup.keys.SHOW_PERMISSIONS) then 
			result[#result + 1] = PERMISSIONS
		end
	end

	-- Versions History is only accessible to models, so we only try to show the Versions if it's a model.
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

	if ScreenSetup.queryParam(screenFlowType, assetTypeEnum, ScreenSetup.keys.SHOW_SALES_TAB) then
		result[#result + 1] = SALES
	end

	return result
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