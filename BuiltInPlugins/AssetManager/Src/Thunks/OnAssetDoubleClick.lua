local Plugin = script.Parent.Parent.Parent

local SetScreen = require(Plugin.Src.Actions.SetScreen)

local AssetManagerService = game:GetService("AssetManagerService")

return function(assetData)
    return function(store)
        local isFolder = assetData.ClassName == "Folder"
        if isFolder then
            store:dispatch(SetScreen(assetData.Screen))
        else
            local assetType = assetData.assetType
            if assetType == Enum.AssetType.Place then
                AssetManagerService:OpenPlace(assetData.id)
            elseif assetType == Enum.AssetType.Package then
                AssetManagerService:InsertPackage(assetData.id)
            elseif assetType == Enum.AssetType.Image then
                AssetManagerService:InsertImage(assetData.id)
            elseif assetType == Enum.AssetType.MeshPart then
                AssetManagerService:InsertMesh("Meshes/".. assetData.name, false)
            elseif assetType == Enum.AssetType.Lua then
                AssetManagerService:OpenLinkedSource("Scripts/" .. assetData.name)
            end
        end
    end
end