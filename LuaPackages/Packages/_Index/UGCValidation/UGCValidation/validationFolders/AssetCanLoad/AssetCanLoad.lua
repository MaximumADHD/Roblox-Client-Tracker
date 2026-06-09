local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent.Parent

local Constants = require(root.Constants)
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)

local getFFlagUGCValidateMigrateSchemaProperties = require(root.flags.getFFlagUGCValidateMigrateSchemaProperties)

local AssetCanLoad = {}

AssetCanLoad.categories = Constants.AllAssetUploadCategories
AssetCanLoad.requiredData = {
	ValidationEnums.SharedDataMember.rootInstance,
	ValidationEnums.SharedDataMember.consumerConfig,
	ValidationEnums.SharedDataMember.contentIds,
}
AssetCanLoad.fflag = getFFlagUGCValidateMigrateSchemaProperties
AssetCanLoad.expectedFailures = {}

AssetCanLoad.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	-- Backend is the only env that hasn't already loaded the asset upstream.
	if data.consumerConfig.consumerEnv ~= ValidationEnums.ConsumerEnv.Backend then
		return
	end

	-- Match legacy validateCanLoad semantics: a CanLoadAsset miss is inconclusive,
	-- not user-fixable. CDN/asset-fetch flakes return false intermittently for assets
	-- that exist; a hard reporter:fail would surface those as creator-facing "replace
	-- this asset" errors. Route through forceError so RCC reschedules the whole job.
	for _, contentData in data.contentIds do
		local assetIdProperty = (contentData.instance :: any)[contentData.fieldName] :: string
		local pcallSuccess, canLoadResult = pcall(function()
			return UGCValidationService:CanLoadAsset(assetIdProperty)
		end)

		if not pcallSuccess or not canLoadResult then
			reporter:forceError(
				string.format(
					"Failed to load children assets (Meshes, Textures, etc.) for '%s'. Make sure the assets exist and try again.",
					contentData.instance.Name
				)
			)
		end
	end
end

return AssetCanLoad :: Types.ValidationModule
