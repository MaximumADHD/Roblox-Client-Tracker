local BulkImportService = game:GetService("BulkImportService")

local FFlagStudioAssetManagerBulkImportUniverseLoadError = game:DefineFastFlag("StudioAssetManagerBulkImportUniverseLoadError", false)

--assetType: Enum.AssetType.Unknown - all file types, Enum.AssetType.Image - images, Enum.AssetType.MeshPart - meshes
return function(assetType)
    return function(store)
        if FFlagStudioAssetManagerBulkImportUniverseLoadError then
            local success, errorMessage = pcall(function() BulkImportService:LaunchBulkImport(assetType) end)
            if not success then
                warn(errorMessage)
            end
        else
            BulkImportService:LaunchBulkImport(assetType)
        end
	end
end