local BulkImportService = game:GetService("BulkImportService")

--assetType: Enum.AssetType.Unknown - all file types, Enum.AssetType.Image - images, Enum.AssetType.MeshPart - meshes
return function(assetType)
	return function(store)
		local success, errorMessage = pcall(function() BulkImportService:LaunchBulkImport(assetType) end)
		if not success then
			warn(errorMessage)
		end
	end
end