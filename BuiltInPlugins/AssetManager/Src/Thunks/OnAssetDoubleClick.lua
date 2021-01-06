local Plugin = script.Parent.Parent.Parent

local SetScreen = require(Plugin.Src.Actions.SetScreen)

local Framework = require(Plugin.Packages.Framework)
local RobloxAPI = Framework.RobloxAPI

local FFlagAllowAudioBulkImport = game:GetFastFlag("AllowAudioBulkImport")

local AssetManagerService = game:GetService("AssetManagerService")

return function(analytics, assetData)
    return function(store)
        local isFolder = assetData.ClassName == "Folder"
        if isFolder then
            analytics:report("openFolder", assetData.Screen.Key)
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
            elseif FFlagAllowAudioBulkImport and (not RobloxAPI:baseURLHasChineseHost()) and assetType == Enum.AssetType.Audio then
                AssetManagerService:InsertAudio(assetData.id, assetData.name)
            end
            analytics:report("doubleClickInsert")
            local state = store:getState()
            local searchTerm = state.AssetManagerReducer.searchTerm
            if utf8.len(searchTerm) ~= 0 then
                analytics:report("insertAfterSearch")
            end
        end
    end
end