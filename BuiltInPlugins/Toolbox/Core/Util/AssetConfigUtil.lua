local Plugin = script.Parent.Parent.Parent
local Util = Plugin.Core.Util
local AssetConfigConstants = require(Util.AssetConfigConstants)
local getUserId = require(Util.getUserId)
local Urls = require(Util.Urls)

local DFIntFileMaxSizeBytes = tonumber(settings():GetFVariable("FileMaxSizeBytes"))

local FFlagUseDefaultThumbnailForAnimation = game:GetFastFlag("UseDefaultThumbnailForAnimation")
local StudioService = game:GetService("StudioService")

local round = function(num, numDecimalPlaces)
	local mult = 10 ^ (numDecimalPlaces or 0)
	return math.floor(num * mult + 0.5) / mult
end

local AssetConfigUtil = {}

function AssetConfigUtil.isReadyForSale(assetStatus)
	return AssetConfigConstants.ASSET_STATUS.ReviewApproved == assetStatus
		or AssetConfigConstants.ASSET_STATUS.OnSale == assetStatus
		or AssetConfigConstants.ASSET_STATUS.OffSale == assetStatus
		or AssetConfigConstants.ASSET_STATUS.DelayedRelease == assetStatus
end

function AssetConfigUtil.isOnSale(assetStatus)
	return AssetConfigConstants.ASSET_STATUS.OnSale == assetStatus
		or AssetConfigConstants.ASSET_STATUS.Free == assetStatus
end

function AssetConfigUtil.getMarketplaceFeesPercentage(allowedAssetTypesForRelease, assetTypeEnum)
	local releaseDataForAssetType = allowedAssetTypesForRelease[assetTypeEnum.Name]
	return releaseDataForAssetType and releaseDataForAssetType.marketplaceFeesPercentage or 0
end

function AssetConfigUtil.calculatePotentialEarning(allowedAssetTypesForRelease, price, assetTypeEnum, minPrice)
	price = tonumber(price)
	if not price then
		return 0
	end
	price = round(price)

	local convertToZeroToOne = 0.01
	local scalar = convertToZeroToOne
		* AssetConfigUtil.getMarketplaceFeesPercentage(allowedAssetTypesForRelease, assetTypeEnum)
	local roundedPrice = round(price * scalar)
	local marketPlaceFee = math.max(minPrice, roundedPrice)

	return math.max(0, price - marketPlaceFee)
end

function AssetConfigUtil.getPriceRange(allowedAssetTypesForRelease, assetTypeEnum)
	local releaseDataForAssetType = allowedAssetTypesForRelease
		and assetTypeEnum
		and allowedAssetTypesForRelease[assetTypeEnum.Name]
	return releaseDataForAssetType and releaseDataForAssetType.allowedPriceRange or {}
end

function AssetConfigUtil.getMinPrice(allowedAssetTypesForRelease, assetTypeEnum)
	local priceRange = AssetConfigUtil.getPriceRange(allowedAssetTypesForRelease, assetTypeEnum)
	-- Plugin are on the only buyable asset now, the price will start from 0.
	if AssetConfigUtil.isBuyableMarketplaceAsset(assetTypeEnum) then
		return 0
	else
		return priceRange.minRobux and tonumber(priceRange.minRobux) or 0
	end
end

-- Get min price, max price and feeRate
function AssetConfigUtil.getPriceInfo(allowedAssetTypesForRelease, assetTypeEnum, clamp)
	local minPrice, maxPrice, feeRate = 0, 0, 0
	if assetTypeEnum and allowedAssetTypesForRelease[assetTypeEnum.Name] then
		local assetInfo = (allowedAssetTypesForRelease and assetTypeEnum)
			and allowedAssetTypesForRelease[assetTypeEnum.Name]
		local priceRange = assetInfo.allowedPriceRange
		feeRate = tonumber(assetInfo.marketplaceFeesPercentage) or 0
		-- This is V1 work around method for publishing free plugins.
		-- In V2 we will be having an independent UI to set the "Free" status.

		minPrice = priceRange.minRobux and tonumber(priceRange.minRobux) or 0
		maxPrice = priceRange.maxRobux and tonumber(priceRange.maxRobux) or 0
	end

	return minPrice, maxPrice, feeRate
end

function AssetConfigUtil.promptImagePicker()
	local iconFile = StudioService:PromptImportFile(AssetConfigConstants.IMAGE_TYPES)

	if iconFile then
		-- You can't pick too big a image.
		if iconFile.Size > DFIntFileMaxSizeBytes then
			-- Handles outside this function.
			return nil
		else
			return iconFile
		end
	end
end

function AssetConfigUtil.getImageFormatString()
	local resultString = ""
	for index, v in pairs(AssetConfigConstants.IMAGE_TYPES) do
		resultString = resultString .. v
		if AssetConfigConstants.IMAGE_TYPES[index + 1] then
			resultString = resultString .. ", "
		end
	end
	return resultString
end

function AssetConfigUtil.isCatalogAsset(assetTypeEnum)
	local info = AssetConfigConstants.ASSET_TYPE_INFO[assetTypeEnum]
	return info ~= nil and info.isCatalog == true
end

function AssetConfigUtil.isMarketplaceAsset(assetTypeEnum)
	local info = AssetConfigConstants.ASSET_TYPE_INFO[assetTypeEnum]
	return info ~= nil and info.isMarketplace == true
end

function AssetConfigUtil.isBuyableMarketplaceAsset(assetTypeEnum)
	local info = AssetConfigConstants.ASSET_TYPE_INFO[assetTypeEnum]
	return info ~= nil and info.isMarketplace == true and info.isBuyable == true
end

function AssetConfigUtil.getFlowStartScreen(flowType)
	if flowType == AssetConfigConstants.FLOW_TYPE.UPLOAD_FLOW then
		return AssetConfigConstants.SCREENS.ASSET_TYPE_SELECTION
	elseif
		flowType == AssetConfigConstants.FLOW_TYPE.EDIT_FLOW
		or flowType == AssetConfigConstants.FLOW_TYPE.DOWNLOAD_FLOW
	then
		return AssetConfigConstants.SCREENS.CONFIGURE_ASSET
	end
end

function AssetConfigUtil.getGenreTypes()
	return AssetConfigConstants.GENRE_TYPE
end

function AssetConfigUtil.getGenreIndex(targetGnere)
	local index = 1
	for k, v in pairs(AssetConfigConstants.GENRE_TYPE) do
		if targetGnere == v.name then
			index = k
			break
		end
	end
	return index
end

function AssetConfigUtil.getGenreName(genreIndex)
	if genreIndex > #AssetConfigConstants.GENRE_TYPE then
		genreIndex = 1
	end
	return AssetConfigConstants.GENRE_TYPE[genreIndex].name
end

function AssetConfigUtil.getOwnerDropDownContent(manageableGroups, localizedContent)
	local result = {
		{ name = localizedContent.AssetConfig.PublishAsset.Me, creatorType = "User", creatorId = getUserId() },
	}

	for _, group in ipairs(manageableGroups) do
		table.insert(result, {
			name = group.name,
			creatorId = group.id,
			creatorType = "Group",
			item = group,
		})
	end

	return result
end

function AssetConfigUtil.getClonedInstances(instances)
	-- clone instances so that user cannot edit them while validating/uploading
	local clonedInstances = {}

	for i = 1, #instances do
		local success, theClone = pcall(function()
			return instances[i]:Clone()
		end)
		clonedInstances[#clonedInstances + 1] = success and theClone or nil
	end

	return clonedInstances
end

function AssetConfigUtil.getPreviewType(assetTypeEnum, instances)
	local previewType = instances and AssetConfigConstants.PreviewTypes.ModelPreview
		or AssetConfigConstants.PreviewTypes.Thumbnail
	-- And then we show price according to the sales status and if user is whitelisted.
	if assetTypeEnum and AssetConfigUtil.isBuyableMarketplaceAsset(assetTypeEnum) then
		previewType = AssetConfigConstants.PreviewTypes.ImagePicker
	end
	if FFlagUseDefaultThumbnailForAnimation and assetTypeEnum == Enum.AssetType.Animation then
		previewType = AssetConfigConstants.PreviewTypes.Thumbnail
	end
	return previewType
end

function AssetConfigUtil.getResultThumbnail(assetId, iconFile)
	local thumbnail
	if iconFile then
		thumbnail = iconFile:GetTemporaryId()
	else
		thumbnail = Urls.constructAssetThumbnailUrl(
			assetId,
			AssetConfigConstants.rbxThumbSizes.AssetThumbnailSize,
			AssetConfigConstants.rbxThumbSizes.AssetThumbnailSize
		)
	end
	return thumbnail
end

--[[
	don't allow Package publish if any of the following is true:
	- it is already a package
	- if user is trying to publish a group of assets at once -> package needs a single root to place Package Link under
	- if it's a Model of a group of instances and primary part is not-archivable -> primary part will not be uploadable
	- it's an instances with a child modified Nested package -> modification wills be lost 
]]
function AssetConfigUtil.isPackagePublishAllowed(instances, localization)
	local allowPublish = true
	local warningMessage

	if #instances > 1 then
		allowPublish = false
		warningMessage = localization:getText("AssetConfigPackage", "CantConvertMultipleInstancesWarning")
	end

	local rootInstance = instances[1]

	if AssetConfigUtil.isPackage(rootInstance) then
		allowPublish = false
	end

	if
		rootInstance:IsA("Model")
		and rootInstance.PrimaryPart ~= nil
		and rootInstance.PrimaryPart.Archivable ~= true
	then
		allowPublish = false
		warningMessage =
			localization:getText("AssetConfigPackage", "CantConvertModelWithPrimaryPartNonArchivableWarning")
	end

	if rootInstance:IsA("PVInstance") == false and rootInstance:FindFirstChildWhichIsA("PVInstance") ~= nil then
		warningMessage = localization:getText("AssetConfigPackage", "Non3DRoot3DDescendentsWarning")
	end

	-- these strings are used in code to signal package modification and not surfaced to user
	local modifiedUpdateString = "Changed + New Version Available"
	local isModifiedString = "Changed"
	for _, instance in pairs(rootInstance:GetDescendants()) do
		if instance:IsA("PackageLink") and instance.Parent ~= rootInstance then
			if
				instance.Status ~= nil
				and (instance.Status == isModifiedString or instance.Status == modifiedUpdateString)
			then
				allowPublish = false
				warningMessage =
					localization:getText("AssetConfigPackage", "CantConvertIfChildPackageHasUnpublishedChangesWarning")
			end
		end
	end

	return allowPublish, warningMessage
end

function AssetConfigUtil.isPackage(instance)
	local packageLink = instance:FindFirstChildOfClass("PackageLink")
	if packageLink ~= nil then
		return true
	else
		return false
	end
end

return AssetConfigUtil
