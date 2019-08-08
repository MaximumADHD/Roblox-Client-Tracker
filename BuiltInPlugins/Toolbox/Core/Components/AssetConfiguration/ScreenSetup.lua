local ScreenSetup = {}

local Plugin = script.Parent.Parent.Parent.Parent
local Util = Plugin.Core.Util
local convertArrayToTable = require(Util.convertArrayToTable)
local AssetConfigConstants = require(Util.AssetConfigConstants)

ScreenSetup.keys = convertArrayToTable({
	"SHOW_SALES_TAB",
	"SHOW_VERSIONS_TAB",
	"SHOW_OWNERSHIP",
	"SHOW_GENRE",
	"SHOW_COPY",
	"SHOW_COMMENT",
	"SHOW_ASSET_TYPE",
	"SHOW_OVERRIDE_BUTTON",
})

local AssetCategory = {
	Marketplace = {},
	Catalog = {}
}

local keys = ScreenSetup.keys
local params = {
	[AssetConfigConstants.FLOW_TYPE.EDIT_FLOW] = {
		[AssetCategory.Marketplace] = {
			[keys.SHOW_VERSIONS_TAB] = true, [keys.SHOW_OWNERSHIP] = true, [keys.SHOW_GENRE] = true,
			[keys.SHOW_COPY] = true, [keys.SHOW_COMMENT] = true
		},
		[AssetCategory.Catalog] = {
			[keys.SHOW_SALES_TAB] = true, [keys.SHOW_ASSET_TYPE] = true
		},
	},

	[AssetConfigConstants.FLOW_TYPE.UPLOAD_FLOW] = {
		[AssetCategory.Marketplace] = {
			[keys.SHOW_VERSIONS_TAB] = false, [keys.SHOW_OWNERSHIP] = true, [keys.SHOW_GENRE] = true,
			[keys.SHOW_COPY] = true, [keys.SHOW_COMMENT] = true, [keys.SHOW_OVERRIDE_BUTTON] = true,
		},
		[AssetCategory.Catalog] = {
			[keys.SHOW_ASSET_TYPE] = true
		},
	}
}

function ScreenSetup.queryParam(flowType, assetTypeEnum, paramKey)
	local assetCategoryType = AssetConfigConstants.isCatalogAsset(assetTypeEnum) and AssetCategory.Catalog or AssetCategory.Marketplace
	return params[flowType][assetCategoryType][paramKey] or false
end

return ScreenSetup