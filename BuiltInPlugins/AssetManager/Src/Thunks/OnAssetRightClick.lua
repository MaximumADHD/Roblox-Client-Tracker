local Plugin = script.Parent.Parent.Parent

local SetEditingAssets = require(Plugin.Src.Actions.SetEditingAssets)
local SetSelectedAssets = require(Plugin.Src.Actions.SetSelectedAssets)

local GetAssets = require(Plugin.Src.Thunks.GetAssets)
local LaunchBulkImport = require(Plugin.Src.Thunks.LaunchBulkImport)

local Screens = require(Plugin.Src.Util.Screens)

local AssetManagerService = game:GetService("AssetManagerService")
local HttpService = game:GetService("HttpService")
local MemStorageService = game:GetService("MemStorageService")
local StudioService = game:GetService("StudioService")

local EVENT_ID_OPENASSETCONFIG = "OpenAssetConfiguration"

local function removeAssets(apiImpl, assetData, assets, selectedAssets, store)
    for i, asset in ipairs(assets) do
        if selectedAssets[i] then
            if asset.assetType == Enum.AssetType.Place then
                AssetManagerService:RemovePlace(asset.id)
            elseif asset.assetType == Enum.AssetType.Image then
                AssetManagerService:DeleteAlias("Images/".. asset.name)
            elseif asset.assetType == Enum.AssetType.MeshPart then
                AssetManagerService:DeleteAlias("Meshes/".. asset.name)
            elseif asset.assetType == Enum.AssetType.Lua then
                AssetManagerService:DeleteAlias("Scripts/".. asset.name)
            end
        end
    end
    store:dispatch(SetSelectedAssets({}))
    store:dispatch(GetAssets(apiImpl, assetData.assetType))
end

local function createFolderContextMenu(assetData, contextMenu, localization, store)
    if assetData.Screen.Key == Screens.IMAGES.Key then
        contextMenu:AddNewAction("AddImages", localization:getText("ContextMenu", "AddImages")).Triggered:connect(function()
            local imageFilter = 1 -- same as Enum.AssetType.Image
            store:dispatch(LaunchBulkImport(imageFilter))
        end)
    elseif assetData.Screen.Key == Screens.MESHES.Key then
        contextMenu:AddNewAction("AddMeshes", localization:getText("ContextMenu", "AddMeshes")).Triggered:connect(function()
            local meshFilter = 40 -- same as Enum.AssetType.MeshPart
            store:dispatch(LaunchBulkImport(meshFilter))
        end)
    elseif assetData.Screen.Key == Screens.PLACES.Key then
        contextMenu:AddNewAction("AddPlace", localization:getText("ContextMenu", "AddNewPlace")).Triggered:connect(function()
            AssetManagerService:AddNewPlace()
        end)
    end

    contextMenu:ShowAsync()
    contextMenu:Destroy()
end

local function createPlaceContextMenu(apiImpl, assetData, contextMenu, localization, store)
    local state = store:getState()
    local assets = state.AssetManagerReducer.assetsTable.assets
    local selectedAssets = state.AssetManagerReducer.selectedAssets
    contextMenu:AddNewAction("RemoveFromGame", localization:getText("ContextMenu", "RemoveFromGame")).Triggered:connect(function()
        removeAssets(apiImpl, assetData, assets, selectedAssets, store)
    end)
    contextMenu:AddNewAction("Rename", localization:getText("ContextMenu", "Rename")).Triggered:connect(function()
        local assetToEdit = {
            [assetData.id] = true,
        }
        store:dispatch(SetEditingAssets(assetToEdit))
    end)
    contextMenu:AddNewAction("CopyIdToClipboard", localization:getText("ContextMenu", "CopyIdToClipboard")).Triggered:connect(function()
        StudioService:CopyToClipboard(assetData.id)
    end)

    contextMenu:ShowAsync()
    contextMenu:Destroy()
end

local function createPackageContextMenu(assetData, contextMenu, localization, store)
    contextMenu:AddNewAction("Insert", localization:getText("ContextMenu", "Insert")).Triggered:connect(function()
        AssetManagerService:InsertPackage(assetData.id)
    end)
    contextMenu:AddNewAction("UpdateAll", localization:getText("ContextMenu", "UpdateAll")).Triggered:connect(function()
        AssetManagerService:UpdateAllPackages(assetData.id)
    end)
    contextMenu:AddNewAction("ViewOnWebsite", localization:getText("ContextMenu", "ViewOnWebsite")).Triggered:connect(function()
        AssetManagerService:ViewPackageOnWebsite(assetData.id)
    end)
    contextMenu:AddNewAction("CopyIdToClipboard", localization:getText("ContextMenu", "CopyIdToClipboard")).Triggered:connect(function()
        StudioService:CopyToClipboard(assetData.id)
    end)
    contextMenu:AddNewAction("PackageDetails", localization:getText("ContextMenu", "PackageDetails")).Triggered:connect(function()
        AssetManagerService:ShowPackageDetails(assetData.id)
    end)

    contextMenu:ShowAsync()
    contextMenu:Destroy()
end

local function createImageContextMenu(apiImpl, assetData, contextMenu, localization, store)
    local state = store:getState()
    local assets = state.AssetManagerReducer.assetsTable.assets
    local selectedAssets = state.AssetManagerReducer.selectedAssets
    contextMenu:AddNewAction("RemoveFromGame", localization:getText("ContextMenu", "RemoveFromGame")).Triggered:connect(function()
        removeAssets(apiImpl, assetData, assets, selectedAssets, store)
    end)
    contextMenu:AddNewAction("EditAsset", localization:getText("ContextMenu", "EditAsset")).Triggered:connect(function()
        MemStorageService:Fire(EVENT_ID_OPENASSETCONFIG,
            HttpService:JSONEncode({ id = assetData.id, assetType = 1, }))
    end)
    contextMenu:AddNewAction("RenameAlias", localization:getText("ContextMenu", "RenameAlias")).Triggered:connect(function()
        local assetToEdit = {
            [assetData.id] = true,
        }
        store:dispatch(SetEditingAssets(assetToEdit))
    end)
    contextMenu:AddNewAction("Insert", localization:getText("ContextMenu", "Insert")).Triggered:connect(function()
        AssetManagerService:InsertImage(assetData.id)
    end)
    contextMenu:AddNewAction("CopyIdToClipboard", localization:getText("ContextMenu", "CopyIdToClipboard")).Triggered:connect(function()
        StudioService:CopyToClipboard("rbxassetid://" .. assetData.id)
    end)

    contextMenu:ShowAsync()
    contextMenu:Destroy()
end

local function createMeshPartContextMenu(apiImpl, assetData, contextMenu, localization, store)
    local state = store:getState()
    local assets = state.AssetManagerReducer.assetsTable.assets
    local selectedAssets = state.AssetManagerReducer.selectedAssets
    local count = 0
    for _,_ in pairs(selectedAssets) do
        count = count + 1
    end
    local textureId = AssetManagerService:GetTextureId("Meshes/".. assetData.name)
    contextMenu:AddNewAction("RemoveFromGame", localization:getText("ContextMenu", "RemoveFromGame")).Triggered:connect(function()
        removeAssets(apiImpl, assetData, assets, selectedAssets, store)
    end)
    contextMenu:AddNewAction("EditAsset", localization:getText("ContextMenu", "EditAsset")).Triggered:connect(function()
        MemStorageService:Fire(EVENT_ID_OPENASSETCONFIG,
            HttpService:JSONEncode({ id = assetData.id, assetType = 40, }))
    end)
    contextMenu:AddNewAction("RenameAlias", localization:getText("ContextMenu", "RenameAlias")).Triggered:connect(function()
        local assetToEdit = {
            [assetData.id] = true,
        }
        store:dispatch(SetEditingAssets(assetToEdit))
    end)
    if count == 1 then
        contextMenu:AddNewAction("Insert", localization:getText("ContextMenu", "Insert")).Triggered:connect(function()
            AssetManagerService:InsertMesh("Meshes/".. assetData.name, false)
        end)
    end
    contextMenu:AddNewAction("InsertWithLocation", localization:getText("ContextMenu", "InsertWithLocation")).Triggered:connect(function()
        for i, asset in ipairs(assets) do
            if selectedAssets[i] then
                AssetManagerService:InsertMesh("Meshes/".. asset.name, true)
            end
        end
    end)
    contextMenu:AddNewAction("CopyIdToClipboard", localization:getText("ContextMenu", "CopyIdToClipboard")).Triggered:connect(function()
        StudioService:CopyToClipboard("rbxassetid://" .. AssetManagerService:GetMeshId("Meshes/".. assetData.name))
    end)
    if textureId ~= -1 then
        contextMenu:AddNewAction("CopyTextureIdToClipboard", localization:getText("ContextMenu", "CopyTextureIdToClipboard")).Triggered:connect(function()
            StudioService:CopyToClipboard("rbxassetid://" .. textureId)
        end)
    end

    contextMenu:ShowAsync()
    contextMenu:Destroy()
end

local function createLinkedScriptContextMenu(apiImpl, assetData, contextMenu, localization, store)
    local state = store:getState()
    local assets = state.AssetManagerReducer.assetsTable.assets
    local selectedAssets = state.AssetManagerReducer.selectedAssets
    local hasUnpublishedChanges = AssetManagerService:HasUnpublishedChangesForLinkedSource("Scripts/".. assetData.name)
    contextMenu:AddNewAction("RemoveFromGame", localization:getText("ContextMenu", "RemoveFromGame")).Triggered:connect(function()
        removeAssets(apiImpl, assetData, assets, selectedAssets, store)
    end)
    contextMenu:AddNewAction("RenameAlias", localization:getText("ContextMenu", "RenameAlias")).Triggered:connect(function()
        local assetToEdit = {
            [assetData.id] = true,
        }
        store:dispatch(SetEditingAssets(assetToEdit))
    end)
    contextMenu:AddNewAction("InsertAsScript", localization:getText("ContextMenu", "InsertAsScript")).Triggered:connect(function()
        AssetManagerService:InsertLinkedSourceAsScript("Scripts/".. assetData.name)
    end)
    contextMenu:AddNewAction("InsertAsLocalScript", localization:getText("ContextMenu", "InsertAsLocalScript")).Triggered:connect(function()
        AssetManagerService:InsertLinkedSourceAsLocalScript("Scripts/".. assetData.name)
    end)
    contextMenu:AddNewAction("InsertAsModuleScript", localization:getText("ContextMenu", "InsertAsModuleScript")).Triggered:connect(function()
        AssetManagerService:InsertLinkedSourceAsModuleScript("Scripts/".. assetData.name)
    end)
    if hasUnpublishedChanges then
        contextMenu:AddNewAction("PublishedLinkedSource", localization:getText("ContextMenu", "PublishLinkedSource")).Triggered:connect(function()
            AssetManagerService:PublishLinkedSource(assetData.id, "Scripts/".. assetData.name)
        end)
    end
    if hasUnpublishedChanges then
        contextMenu:AddNewAction("RevertToLastPublishedVersion", localization:getText("ContextMenu", "RevertToLastPublishedVersion")).Triggered:connect(function()
            AssetManagerService:RevertLinkedSourceToLastPublishedVersion("Scripts/".. assetData.name)
        end)
    end
    contextMenu:AddNewAction("RefreshScript", localization:getText("ContextMenu", "RefreshScript")).Triggered:connect(function()
        AssetManagerService:RefreshLinkedSource("Scripts/".. assetData.name)
    end)

    contextMenu:ShowAsync()
    contextMenu:Destroy()
end

local function createAssetContextMenu(apiImpl, assetData, contextMenu, localization, store)
    local assetType = assetData.assetType
    if assetType == Enum.AssetType.Place then
        createPlaceContextMenu(apiImpl, assetData, contextMenu, localization, store)
    elseif assetType == Enum.AssetType.Package then
        createPackageContextMenu(assetData, contextMenu, localization, store)
    elseif assetType == Enum.AssetType.Image then
        createImageContextMenu(apiImpl, assetData, contextMenu, localization, store)
    elseif assetType == Enum.AssetType.MeshPart then
        createMeshPartContextMenu(apiImpl, assetData, contextMenu, localization, store)
    elseif assetType == Enum.AssetType.Lua then
        createLinkedScriptContextMenu(apiImpl, assetData, contextMenu, localization, store)
    end
end

return function(apiImpl, assetData, localization, plugin)
    return function(store)
        local contextMenu = plugin:CreatePluginMenu("AssetManagerContextMenu")
        local isFolder = assetData.ClassName == "Folder"
        if isFolder then
            createFolderContextMenu(assetData, contextMenu, localization, store)
        else
            createAssetContextMenu(apiImpl, assetData, contextMenu, localization, store)
        end
    end
end