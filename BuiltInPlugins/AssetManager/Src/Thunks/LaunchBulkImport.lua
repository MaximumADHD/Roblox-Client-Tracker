local BulkImportService = game:GetService("BulkImportService")

--assetType: Enum.AssetType.Unknown - all file types, Enum.AssetType.Image - images, Enum.AssetType.MeshPart - meshes
return function(assetType)
    return function(store)
        BulkImportService:LaunchBulkImport(assetType)
        BulkImportService:ShowBulkImportView()
	end
end