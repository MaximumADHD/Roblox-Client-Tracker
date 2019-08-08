local Plugin = script.Parent.Parent.Parent

local Components = Plugin.Core.Components
local AssetConfiguration = Components.AssetConfiguration
local ScreenSetup = require(AssetConfiguration.ScreenSetup)
local AssetConfigConstants = require(Plugin.Core.Util.AssetConfigConstants)
local Images = require(Plugin.Core.Util.Images)

local ConfigTypes = {}

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

ConfigTypes.OWNER_TYPES = {
	User = 1,
	Group = 2
}

function ConfigTypes:getAssetconfigContent(screenFlowType, assetTypeId)
	local result = {
		GENERAL,
	}

	if ScreenSetup.queryParam(screenFlowType, assetTypeId, ScreenSetup.keys.SHOW_VERSIONS_TAB) then
		result[#result + 1] = VERSIONS
	end

	if ScreenSetup.queryParam(screenFlowType, assetTypeId, ScreenSetup.keys.SHOW_SALES_TAB) then
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