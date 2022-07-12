local Plugin = script.Parent.Parent.Parent

local FFlagAssetManagerDragAndDrop = game:GetFastFlag("AssetManagerDragAndDrop")

return function(insertAsset, assetData, analytics)
	assert(FFlagAssetManagerDragAndDrop, "Requires FFlagAssetManagerDragAndDrop")

	return function(store)
		local isFolder = assetData.ClassName == "Folder"
		if isFolder then
			warn("Cannot drag a folder")
			return
		end

		local assetId = assetData.id
		local assetName = assetData.name
		local assetType = assetData.assetType
		local isPackage = assetType == Enum.AssetType.Package
		if isPackage then
			assetType = Enum.AssetType.Model
		end

		insertAsset:beginDragInsert(assetId, assetName, assetType, isPackage)
		:andThen(function(assetId, insertedInstance)
			analytics:report("dragInsert")

			local state = store:getState()
			local searchTerm = state.AssetManagerReducer.searchTerm
			if utf8.len(searchTerm) ~= 0 then
				analytics:report("insertAfterSearch")
			end
		end)
		:catch(function(errorMessage)
			warn(errorMessage)
		end)
	end
end
