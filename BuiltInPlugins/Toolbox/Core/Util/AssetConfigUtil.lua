local Plugin = script.Parent.Parent.Parent
local Util = Plugin.Core.Util
local AssetConfigConstants = require(Util.AssetConfigConstants)
local DebugFlags = require(Util.DebugFlags)
local getUserId = require(Util.getUserId)

local DFIntFileMaxSizeBytes = tonumber(settings():GetFVariable("FileMaxSizeBytes"))

local FFlagRemoveNilInstances = game:GetFastFlag("RemoveNilInstances")

local StudioService = game:GetService("StudioService")

local MathUtils = require(Plugin.Libs.UILibrary.Utils.MathUtils)

local AssetConfigUtil = {}

function AssetConfigUtil.isReadyForSale(assetStatus)
	return AssetConfigConstants.ASSET_STATUS.ReviewApproved == assetStatus or
		AssetConfigConstants.ASSET_STATUS.OnSale == assetStatus or
		AssetConfigConstants.ASSET_STATUS.OffSale == assetStatus or
		AssetConfigConstants.ASSET_STATUS.DelayedRelease == assetStatus
end

function AssetConfigUtil.isOnSale(assetStatus)
	return AssetConfigConstants.ASSET_STATUS.OnSale == assetStatus
end

function AssetConfigUtil.getSubText(newAssetStatus, currentAssetStatus, localizedContent)
	if not AssetConfigUtil.isReadyForSale(newAssetStatus) then
		return localizedContent.Sales.ItemCannotBeSold
	elseif AssetConfigUtil.isOnSale(newAssetStatus) and AssetConfigUtil.isOnSale(currentAssetStatus) then
		return localizedContent.Sales.Onsale
	elseif not AssetConfigUtil.isOnSale(newAssetStatus) and AssetConfigUtil.isOnSale(currentAssetStatus) then
		return localizedContent.Sales.OffsaleApplyToSave
	elseif AssetConfigUtil.isOnSale(newAssetStatus) and not AssetConfigUtil.isOnSale(currentAssetStatus) then
		return localizedContent.Sales.OnsaleApplyToSave
	end
	return localizedContent.Sales.Offsale
end

function AssetConfigUtil.getMarketplaceFeesPercentage(allowedAssetTypesForRelease, assetTypeEnum)
	local releaseDataForAssetType = allowedAssetTypesForRelease[assetTypeEnum.Name]
	return releaseDataForAssetType and releaseDataForAssetType.marketplaceFeesPercentage or 0
end


function AssetConfigUtil.calculatePotentialEarning(allowedAssetTypesForRelease, price, assetTypeEnum)
	price = tonumber(price)
	if not price then
		return 0
	end
	price = MathUtils:round(price)
	local convertToZeroToOne = 0.01
	local scaler = convertToZeroToOne * AssetConfigUtil.getMarketplaceFeesPercentage(allowedAssetTypesForRelease, assetTypeEnum)
	local marketPlaceFee = math.max(1, MathUtils:round(price * scaler))
	return math.max(0, price - marketPlaceFee)
end

function AssetConfigUtil.getPriceRange(allowedAssetTypesForRelease, assetTypeEnum)
	local releaseDataForAssetType = allowedAssetTypesForRelease and assetTypeEnum and allowedAssetTypesForRelease[assetTypeEnum.Name]
	return releaseDataForAssetType and releaseDataForAssetType.allowedPriceRange or {}
end

function AssetConfigUtil.getMinPrice(allowedAssetTypesForRelease, assetTypeEnum)
	local priceRange = AssetConfigUtil.getPriceRange(allowedAssetTypesForRelease, assetTypeEnum)
	return priceRange.minRobux and tonumber(priceRange.minRobux) or 0
end

function AssetConfigUtil.getMaxPrice(allowedAssetTypesForRelease, assetTypeEnum)
	local priceRange = AssetConfigUtil.getPriceRange(allowedAssetTypesForRelease, assetTypeEnum)
	return priceRange.maxRobux and tonumber(priceRange.maxRobux) or 0
end

local IMAGE_TYPES = {"jpg", "jpeg", "png"}

function AssetConfigUtil.promptImagePicker()
	local iconFile = StudioService:PromptImportFile(IMAGE_TYPES)

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

local catalogAssetTypes = AssetConfigConstants.catalogAssetTypes
local marketplaceAssetTypes = AssetConfigConstants.marketplaceAssetTypes
local marketplaceBuyableAsset = AssetConfigConstants.marketplaceBuyableAsset

local function checkData(assetTypeEnum)
	if DebugFlags.shouldDebugWarnings() then
		local isAssetTypeBothCatalogAndMarketplace = catalogAssetTypes[assetTypeEnum] and marketplaceAssetTypes[assetTypeEnum]
		if isAssetTypeBothCatalogAndMarketplace then
			warn("Lua CMS: " .. tostring(assetTypeEnum) .. " cannot be both a catalog and marketplace asset")
		end
	end
end

function AssetConfigUtil.isCatalogAsset(assetTypeEnum)
	checkData(assetTypeEnum)
	return catalogAssetTypes[assetTypeEnum] and true or false
end

function AssetConfigUtil.isMarketplaceAsset(assetTypeEnum)
	checkData(assetTypeEnum)
	return marketplaceAssetTypes[assetTypeEnum] and true or false
end

function AssetConfigUtil.isBuyableMarketplaceAsset(assetTypeEnum)
	checkData(assetTypeEnum)
	return marketplaceBuyableAsset[assetTypeEnum] and true or false
end

function AssetConfigUtil.getFlowStartScreen(flowType)
	if flowType == AssetConfigConstants.FLOW_TYPE.UPLOAD_FLOW then
		return AssetConfigConstants.SCREENS.ASSET_TYPE_SELECTION
	elseif flowType == AssetConfigConstants.FLOW_TYPE.EDIT_FLOW then
		return AssetConfigConstants.SCREENS.CONFIGURE_ASSET
	end
end

function AssetConfigUtil.getGenreTypes()
	return AssetConfigConstants.GENRE_TYPE
end

function AssetConfigUtil.getGenreIndex(targetGnere)
	local index = 1
	for k,v in pairs(AssetConfigConstants.GENRE_TYPE) do
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
		{name = localizedContent.AssetConfig.PublishAsset.Me, creatorType = "User", creatorId = getUserId()}
	}

	if game:GetFastFlag("FixAssetConfigManageableGroups") then
		for _, group in ipairs(manageableGroups) do
			table.insert(result, {
				name = group.name,
				creatorId = group.id,
				creatorType = "Group",
				item = group,
			})
		end
	else
		for _, groupData in pairs(manageableGroups) do
			local newDropDownitem = {
				name = groupData.group.name,
				creatorType = "Group",
				creatorId = groupData.group.id,
				item = groupData
			}
			table.insert(result, newDropDownitem)
		end
	end

	return result
end

function AssetConfigUtil.getAllowedAssetTypeEnums(allowedAssetTypesForRelease)
	local result = {}
	for _, assetTypeEnum in pairs(AssetConfigConstants.ASSET_TYPE_LIST) do
		if allowedAssetTypesForRelease[assetTypeEnum.Name] ~= nil then
			result[#result + 1] = assetTypeEnum
		end
	end
	return result
end

function AssetConfigUtil.getClonedInstances(instances)
	-- clone instances so that user cannot edit them while validating/uploading
	local clonedInstances = {}

	for i = 1, #instances do
		if FFlagRemoveNilInstances then
			local success, theClone = pcall(function()
				return instances[i]:Clone()
			end)
			clonedInstances[#clonedInstances + 1] = success and theClone or nil
		else
			pcall(function()
				clonedInstances[i] = instances[i]:Clone()
			end)
		end
	end

	return clonedInstances
end

return AssetConfigUtil
