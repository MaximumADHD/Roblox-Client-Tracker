local CorePackages = game:GetService("CorePackages")
local MarketplaceService = game:GetService("MarketplaceService")
local AvatarEditorService = game:GetService("AvatarEditorService")

local Promise = require(CorePackages.Promise)

local FFlagAESUseBatchFetchForAssetNames = require(script.Parent.Flags.FFlagAESUseBatchFetchForAssetNames)

local function GetAssetInfo(assetId)
	return Promise.new(function(resolve, reject)
		local success, result = pcall(function()
			return MarketplaceService:GetProductInfo(assetId, Enum.InfoType.Asset)
		end)

		if success then
			resolve({
				name = result.Name,
				id = assetId,
			})
		else
			reject()
		end
	end)
end

return function(assetIdList)
	if FFlagAESUseBatchFetchForAssetNames then
		return Promise.new(function(resolve, reject)
			local success, result = pcall(function()
				return AvatarEditorService:GetBatchItemDetails(assetIdList, Enum.AvatarItemType.Asset)
			end)

			if success then
				local assetIdNameMap = {}

				for _, assetInfo in ipairs(result) do
					assetIdNameMap[assetInfo.Id] = assetInfo.Name
				end

				resolve(assetIdNameMap)
			else
				reject()
			end
		end)
	else
		local promises = {}
		for _, assetId in ipairs(assetIdList) do
			table.insert(promises, GetAssetInfo(assetId))
		end

		return Promise.all(promises):andThen(function(results)
			local nameList = {}
			for _, data in ipairs(results) do
				table.insert(nameList, data.name)
			end
			return nameList
		end)
	end
end