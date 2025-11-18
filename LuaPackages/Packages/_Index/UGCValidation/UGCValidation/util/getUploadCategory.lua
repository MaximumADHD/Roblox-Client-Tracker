local root = script.Parent.Parent
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local Constants = require(root.Constants)
local ConstantsInterface = require(root.ConstantsInterface)
local getFStringUGCLCAllowedAssetTypeIds = require(root.flags.getFStringUGCLCAllowedAssetTypeIds)
local getFFlagUGCValidateMakeupAssetTypeNewPipeline = require(root.flags.getFFlagUGCValidateMakeupAssetTypeNewPipeline)
local LC_ENUMS = string.split(getFStringUGCLCAllowedAssetTypeIds(), ",")

local function getUploadCategory(
	instance: Instance,
	assetTypeEnum: Enum.AssetType?,
	bundleTypeEnum: Enum.BundleType?
): string
	-- These are sort of janky mappings from our legacy system, but its a good way of grouping tests instead of listing all enums.
	-- In theory we should be able to just map type to category, but left flexible in case we want enable multiple categories for an upload enum (eg. hair)
	if bundleTypeEnum ~= nil then
		if bundleTypeEnum == Enum.BundleType.BodyParts then
			return ValidationEnums.UploadCategory.FULL_BODY
		else
			return ValidationEnums.UploadCategory.BOTH_SHOES
		end
	end

	assert(assetTypeEnum)
	local category = nil
	if assetTypeEnum == Enum.AssetType.EmoteAnimation then
		category = ValidationEnums.UploadCategory.EMOTE_ANIMATION
	elseif Constants.ASSET_TYPE_INFO[assetTypeEnum] and Constants.ASSET_TYPE_INFO[assetTypeEnum].isBodyPart then
		category = assetTypeEnum == Enum.AssetType.DynamicHead and ValidationEnums.UploadCategory.DYNAMIC_HEAD
			or ValidationEnums.UploadCategory.TORSO_AND_LIMBS
	elseif table.find(LC_ENUMS, tostring(assetTypeEnum.Value)) then
		category = ValidationEnums.UploadCategory.LAYERED_CLOTHING
	elseif Constants.ASSET_TYPE_INFO[assetTypeEnum] and Constants.ASSET_TYPE_INFO[assetTypeEnum].rigidAllowed then
		category = ValidationEnums.UploadCategory.RIGID_ACCESSORY
	elseif getFFlagUGCValidateMakeupAssetTypeNewPipeline() and ConstantsInterface.isMakeupAsset(assetTypeEnum) then
		category = ValidationEnums.UploadCategory.MAKEUP
	end

	if category == nil then
		error(`No assigned validation category for {instance.Name}, {assetTypeEnum}, {bundleTypeEnum} `)
	end

	return category
end

return getUploadCategory
