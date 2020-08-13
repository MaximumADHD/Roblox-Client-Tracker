local Plugin = script.Parent.Parent.Parent

local SetAssets = require(Plugin.Src.Actions.SetAssets)
local SetEditingAssets = require(Plugin.Src.Actions.SetEditingAssets)
local SetScreen = require(Plugin.Src.Actions.SetScreen)
local SetSelectedAssets = require(Plugin.Src.Actions.SetSelectedAssets)

local GetAssets = require(Plugin.Src.Thunks.GetAssets)
local LaunchBulkImport = require(Plugin.Src.Thunks.LaunchBulkImport)

local Screens = require(Plugin.Src.Util.Screens)

local AssetManagerService = game:GetService("AssetManagerService")
local HttpService = game:GetService("HttpService")
local MemStorageService = game:GetService("MemStorageService")
local RunService = game:GetService("RunService")
local StudioService = game:GetService("StudioService")

local FFlagAssetManagerAddPlaceVersionHistoryToContextMenu = game:DefineFastFlag("AssetManagerAddPlaceVerisonHistoryToContextMenu", false)
local FFlagFixAssetManagerInsertWithLocation = game:DefineFastFlag("FixAssetManagerInsertWithLocation", false)
local FFlagAssetManagerFixAssetRemoval = game:DefineFastFlag("AssetManagerFixAssetRemoval", false)
local FFlagAssetManagerAddNewPlaceBehavior = game:DefineFastFlag("AssetManagerAddNewPlaceBehavior", false)
local FFlagOnlyAllowInsertPackageInEdit = game:DefineFastFlag("OnlyAllowInsertPackageInEdit", false)

local FFlagAssetManagerAddAnalytics = game:GetFastFlag("AssetManagerAddAnalytics")

local EVENT_ID_OPENASSETCONFIG = "OpenAssetConfiguration"

local function removeAssets(apiImpl, assetData, assets, selectedAssets, store)
    if FFlagAssetManagerFixAssetRemoval then
        for _, asset in pairs(assets) do
            if selectedAssets[asset.key] then
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
    else
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
    end
    store:dispatch(SetSelectedAssets({}))
    store:dispatch(SetAssets({
        assets = {},
    }))
    store:dispatch(GetAssets(apiImpl, assetData.assetType))
end

local function createFolderContextMenu(analytics, apiImpl, assetData, contextMenu, localization, store)
    if assetData.Screen.Key == Screens.IMAGES.Key then
        contextMenu:AddNewAction("AddImages", localization:getText("ContextMenu", "AddImages")).Triggered:connect(function()
            store:dispatch(LaunchBulkImport(Enum.AssetType.Image.Value))
            if FFlagAssetManagerAddAnalytics then
                analytics:report("clickContextMenuItem")
            end
        end)
    elseif assetData.Screen.Key == Screens.MESHES.Key then
        contextMenu:AddNewAction("AddMeshes", localization:getText("ContextMenu", "AddMeshes")).Triggered:connect(function()
            store:dispatch(LaunchBulkImport(Enum.AssetType.MeshPart.Value))
            if FFlagAssetManagerAddAnalytics then
                analytics:report("clickContextMenuItem")
            end
        end)
    elseif assetData.Screen.Key == Screens.PLACES.Key then
        contextMenu:AddNewAction("AddPlace", localization:getText("ContextMenu", "AddNewPlace")).Triggered:connect(function()
            local placeId, errorMessage = AssetManagerService:AddNewPlace()
            if FFlagAssetManagerAddNewPlaceBehavior and errorMessage then
                error(errorMessage)
                return
            end
            store:dispatch(SetAssets({
                assets = {},
            }))
            local state = store:getState()
            if state.Screen.currentScreen.Key == Screens.PLACES.Key then
                store:dispatch(GetAssets(apiImpl, Screens.PLACES.AssetType))
            else
                if FFlagAssetManagerAddNewPlaceBehavior then
                    store:dispatch(SetScreen(Screens.PLACES))
                end
            end
            if FFlagAssetManagerAddAnalytics then
                analytics:report("clickContextMenuItem")
            end
        end)
    end

    contextMenu:ShowAsync()
    contextMenu:Destroy()
end

local function createPlaceContextMenu(analytics, apiImpl, assetData, contextMenu, localization, store)
    local state = store:getState()
    local assets = state.AssetManagerReducer.assetsTable.assets
    local selectedAssets = state.AssetManagerReducer.selectedAssets
    if not assetData.isRootPlace then
        contextMenu:AddNewAction("RemoveFromGame", localization:getText("ContextMenu", "RemoveFromGame")).Triggered:connect(function()
            removeAssets(apiImpl, assetData, assets, selectedAssets, store)
            if FFlagAssetManagerAddAnalytics then
                analytics:report("clickContextMenuItem")
            end
        end)
    end
    contextMenu:AddNewAction("Rename", localization:getText("ContextMenu", "Rename")).Triggered:connect(function()
        local assetToEdit = {
            [assetData.id] = true,
        }
        store:dispatch(SetEditingAssets(assetToEdit))
        if FFlagAssetManagerAddAnalytics then
            analytics:report("clickContextMenuItem")
        end
    end)
    contextMenu:AddNewAction("CopyIdToClipboard", localization:getText("ContextMenu", "CopyIdToClipboard")).Triggered:connect(function()
        StudioService:CopyToClipboard(assetData.id)
        if FFlagAssetManagerAddAnalytics then
            analytics:report("clickContextMenuItem")
        end
    end)

    if FFlagAssetManagerAddPlaceVersionHistoryToContextMenu then
        contextMenu:AddNewAction("ViewPlaceHistory", localization:getText("ContextMenu", "ViewPlaceHistory")).Triggered:connect(function()
            StudioService:ShowPlaceVersionHistoryDialog()
            if FFlagAssetManagerAddAnalytics then
                analytics:report("clickContextMenuItem")
            end
        end)
    end

    contextMenu:ShowAsync()
    contextMenu:Destroy()
end

local function createPackageContextMenu(analytics, assetData, contextMenu, localization, store)
    if FFlagOnlyAllowInsertPackageInEdit then
        if RunService:IsEdit() then
            contextMenu:AddNewAction("Insert", localization:getText("ContextMenu", "Insert")).Triggered:connect(function()
                AssetManagerService:InsertPackage(assetData.id)
                if FFlagAssetManagerAddAnalytics then
                    analytics:report("clickContextMenuItem")
                    local state = store:getState()
                    local searchTerm = state.AssetManagerReducer.searchTerm
                    if utf8.len(searchTerm) ~= 0 then
                        analytics:report("insertAfterSearch")
                    end
                end
            end)
        end
    else
        contextMenu:AddNewAction("Insert", localization:getText("ContextMenu", "Insert")).Triggered:connect(function()
            AssetManagerService:InsertPackage(assetData.id)
            if FFlagAssetManagerAddAnalytics then
                analytics:report("clickContextMenuItem")
                local state = store:getState()
                local searchTerm = state.AssetManagerReducer.searchTerm
                if utf8.len(searchTerm) ~= 0 then
                    analytics:report("insertAfterSearch")
                end
            end
        end)
    end
    contextMenu:AddNewAction("UpdateAll", localization:getText("ContextMenu", "UpdateAll")).Triggered:connect(function()
        AssetManagerService:UpdateAllPackages(assetData.id)
        if FFlagAssetManagerAddAnalytics then
            analytics:report("clickContextMenuItem")
        end
    end)
    contextMenu:AddNewAction("ViewOnWebsite", localization:getText("ContextMenu", "ViewOnWebsite")).Triggered:connect(function()
        AssetManagerService:ViewPackageOnWebsite(assetData.id)
        if FFlagAssetManagerAddAnalytics then
            analytics:report("clickContextMenuItem")
        end
    end)
    contextMenu:AddNewAction("CopyIdToClipboard", localization:getText("ContextMenu", "CopyIdToClipboard")).Triggered:connect(function()
        StudioService:CopyToClipboard(assetData.id)
        if FFlagAssetManagerAddAnalytics then
            analytics:report("clickContextMenuItem")
        end
    end)
    if RunService:IsEdit() then
        contextMenu:AddNewAction("PackageDetails", localization:getText("ContextMenu", "PackageDetails")).Triggered:connect(function()
            AssetManagerService:ShowPackageDetails(assetData.id)
            if FFlagAssetManagerAddAnalytics then
                analytics:report("clickContextMenuItem")
            end
        end)
    end

    contextMenu:ShowAsync()
    contextMenu:Destroy()
end

local function createImageContextMenu(analytics, apiImpl, assetData, contextMenu, localization, store)
    local state = store:getState()
    local assets = state.AssetManagerReducer.assetsTable.assets
    local selectedAssets = state.AssetManagerReducer.selectedAssets
    contextMenu:AddNewAction("RemoveFromGame", localization:getText("ContextMenu", "RemoveFromGame")).Triggered:connect(function()
        removeAssets(apiImpl, assetData, assets, selectedAssets, store)
        if FFlagAssetManagerAddAnalytics then
            analytics:report("clickContextMenuItem")
        end
    end)
    if RunService:IsEdit() then
        contextMenu:AddNewAction("EditAsset", localization:getText("ContextMenu", "EditAsset")).Triggered:connect(function()
            MemStorageService:Fire(EVENT_ID_OPENASSETCONFIG,
                HttpService:JSONEncode({ id = assetData.id, assetType = Enum.AssetType.Image.Value, }))
            if FFlagAssetManagerAddAnalytics then
                analytics:report("clickContextMenuItem")
            end
        end)
    end
    contextMenu:AddNewAction("RenameAlias", localization:getText("ContextMenu", "RenameAlias")).Triggered:connect(function()
        local assetToEdit = {
            [assetData.id] = true,
        }
        store:dispatch(SetEditingAssets(assetToEdit))
        if FFlagAssetManagerAddAnalytics then
            analytics:report("clickContextMenuItem")
        end
    end)
    contextMenu:AddNewAction("Insert", localization:getText("ContextMenu", "Insert")).Triggered:connect(function()
        AssetManagerService:InsertImage(assetData.id)
        if FFlagAssetManagerAddAnalytics then
            analytics:report("clickContextMenuItem")
            local searchTerm = state.AssetManagerReducer.searchTerm
            if utf8.len(searchTerm) ~= 0 then
                analytics:report("insertAfterSearch")
            end
        end
    end)
    contextMenu:AddNewAction("CopyIdToClipboard", localization:getText("ContextMenu", "CopyIdToClipboard")).Triggered:connect(function()
        StudioService:CopyToClipboard("rbxassetid://" .. assetData.id)
        if FFlagAssetManagerAddAnalytics then
            analytics:report("clickContextMenuItem")
        end
    end)

    contextMenu:ShowAsync()
    contextMenu:Destroy()
end

local function createMeshPartContextMenu(analytics, apiImpl, assetData, contextMenu, localization, store)
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
        if FFlagAssetManagerAddAnalytics then
            analytics:report("clickContextMenuItem")
        end
    end)
    if RunService:IsEdit() then
        contextMenu:AddNewAction("EditAsset", localization:getText("ContextMenu", "EditAsset")).Triggered:connect(function()
            MemStorageService:Fire(EVENT_ID_OPENASSETCONFIG,
                HttpService:JSONEncode({ id = assetData.id, assetType = Enum.AssetType.MeshPart.Value, }))
            if FFlagAssetManagerAddAnalytics then
                analytics:report("clickContextMenuItem")
            end
        end)
    end
    contextMenu:AddNewAction("RenameAlias", localization:getText("ContextMenu", "RenameAlias")).Triggered:connect(function()
        local assetToEdit = {
            [assetData.id] = true,
        }
        store:dispatch(SetEditingAssets(assetToEdit))
        if FFlagAssetManagerAddAnalytics then
            analytics:report("clickContextMenuItem")
        end
    end)
    if count == 1 then
        contextMenu:AddNewAction("Insert", localization:getText("ContextMenu", "Insert")).Triggered:connect(function()
            AssetManagerService:InsertMesh("Meshes/".. assetData.name, false)
            if FFlagAssetManagerAddAnalytics then
                analytics:report("clickContextMenuItem")
                local searchTerm = state.AssetManagerReducer.searchTerm
                if utf8.len(searchTerm) ~= 0 then
                    analytics:report("insertAfterSearch")
                end
            end
        end)
    end
    contextMenu:AddNewAction("InsertWithLocation", localization:getText("ContextMenu", "InsertWithLocation")).Triggered:connect(function()
        if FFlagFixAssetManagerInsertWithLocation then
            for _, asset in pairs(assets) do
                local layoutOrder = asset.layoutOrder
                if selectedAssets[layoutOrder] then
                    AssetManagerService:InsertMesh("Meshes/".. asset.name, true)
                end
            end
        else
            for i, asset in ipairs(assets) do
                if selectedAssets[i] then
                    AssetManagerService:InsertMesh("Meshes/".. asset.name, true)
                end
            end
        end
        if FFlagAssetManagerAddAnalytics then
            analytics:report("clickContextMenuItem")
            local searchTerm = state.AssetManagerReducer.searchTerm
            if utf8.len(searchTerm) ~= 0 then
                analytics:report("insertAfterSearch")
            end
        end
    end)
    contextMenu:AddNewAction("CopyIdToClipboard", localization:getText("ContextMenu", "CopyIdToClipboard")).Triggered:connect(function()
        StudioService:CopyToClipboard("rbxassetid://" .. AssetManagerService:GetMeshId("Meshes/".. assetData.name))
        if FFlagAssetManagerAddAnalytics then
            analytics:report("clickContextMenuItem")
        end
    end)
    if textureId ~= -1 then
        contextMenu:AddNewAction("CopyTextureIdToClipboard", localization:getText("ContextMenu", "CopyTextureIdToClipboard")).Triggered:connect(function()
            StudioService:CopyToClipboard("rbxassetid://" .. textureId)
            if FFlagAssetManagerAddAnalytics then
                analytics:report("clickContextMenuItem")
            end
        end)
    end

    contextMenu:ShowAsync()
    contextMenu:Destroy()
end

local function createLinkedScriptContextMenu(analytics, apiImpl, assetData, contextMenu, localization, store)
    local state = store:getState()
    local assets = state.AssetManagerReducer.assetsTable.assets
    local selectedAssets = state.AssetManagerReducer.selectedAssets
    local hasUnpublishedChanges = AssetManagerService:HasUnpublishedChangesForLinkedSource("Scripts/".. assetData.name)
    contextMenu:AddNewAction("RemoveFromGame", localization:getText("ContextMenu", "RemoveFromGame")).Triggered:connect(function()
        removeAssets(apiImpl, assetData, assets, selectedAssets, store)
        if FFlagAssetManagerAddAnalytics then
            analytics:report("clickContextMenuItem")
        end
    end)
    contextMenu:AddNewAction("RenameAlias", localization:getText("ContextMenu", "RenameAlias")).Triggered:connect(function()
        local assetToEdit = {
            [assetData.id] = true,
        }
        store:dispatch(SetEditingAssets(assetToEdit))
        if FFlagAssetManagerAddAnalytics then
            analytics:report("clickContextMenuItem")
        end
    end)
    contextMenu:AddNewAction("InsertAsScript", localization:getText("ContextMenu", "InsertAsScript")).Triggered:connect(function()
        AssetManagerService:InsertLinkedSourceAsScript("Scripts/".. assetData.name)
        if FFlagAssetManagerAddAnalytics then
            analytics:report("clickContextMenuItem")
            local searchTerm = state.AssetManagerReducer.searchTerm
            if utf8.len(searchTerm) ~= 0 then
                analytics:report("insertAfterSearch")
            end
        end
    end)
    contextMenu:AddNewAction("InsertAsLocalScript", localization:getText("ContextMenu", "InsertAsLocalScript")).Triggered:connect(function()
        AssetManagerService:InsertLinkedSourceAsLocalScript("Scripts/".. assetData.name)
        if FFlagAssetManagerAddAnalytics then
            analytics:report("clickContextMenuItem")
            local searchTerm = state.AssetManagerReducer.searchTerm
            if utf8.len(searchTerm) ~= 0 then
                analytics:report("insertAfterSearch")
            end
        end
    end)
    contextMenu:AddNewAction("InsertAsModuleScript", localization:getText("ContextMenu", "InsertAsModuleScript")).Triggered:connect(function()
        AssetManagerService:InsertLinkedSourceAsModuleScript("Scripts/".. assetData.name)
        if FFlagAssetManagerAddAnalytics then
            analytics:report("clickContextMenuItem")
            local searchTerm = state.AssetManagerReducer.searchTerm
            if utf8.len(searchTerm) ~= 0 then
                analytics:report("insertAfterSearch")
            end
        end
    end)
    if hasUnpublishedChanges then
        contextMenu:AddNewAction("PublishedLinkedSource", localization:getText("ContextMenu", "PublishLinkedSource")).Triggered:connect(function()
            AssetManagerService:PublishLinkedSource(assetData.id, "Scripts/".. assetData.name)
            if FFlagAssetManagerAddAnalytics then
                analytics:report("clickContextMenuItem")
            end
        end)
    end
    if hasUnpublishedChanges then
        contextMenu:AddNewAction("RevertToLastPublishedVersion", localization:getText("ContextMenu", "RevertToLastPublishedVersion")).Triggered:connect(function()
            AssetManagerService:RevertLinkedSourceToLastPublishedVersion("Scripts/".. assetData.name)
            if FFlagAssetManagerAddAnalytics then
                analytics:report("clickContextMenuItem")
            end
        end)
    end
    contextMenu:AddNewAction("RefreshScript", localization:getText("ContextMenu", "RefreshScript")).Triggered:connect(function()
        AssetManagerService:RefreshLinkedSource("Scripts/".. assetData.name)
        if FFlagAssetManagerAddAnalytics then
            analytics:report("clickContextMenuItem")
        end
    end)

    contextMenu:ShowAsync()
    contextMenu:Destroy()
end

local function createAssetContextMenu(analytics, apiImpl, assetData, contextMenu, localization, store)
    local assetType = assetData.assetType
    if assetType == Enum.AssetType.Place then
        createPlaceContextMenu(analytics, apiImpl, assetData, contextMenu, localization, store)
    elseif assetType == Enum.AssetType.Package then
        createPackageContextMenu(analytics, assetData, contextMenu, localization, store)
    elseif assetType == Enum.AssetType.Image then
        createImageContextMenu(analytics, apiImpl, assetData, contextMenu, localization, store)
    elseif assetType == Enum.AssetType.MeshPart then
        createMeshPartContextMenu(analytics, apiImpl, assetData, contextMenu, localization, store)
    elseif assetType == Enum.AssetType.Lua then
        createLinkedScriptContextMenu(analytics, apiImpl, assetData, contextMenu, localization, store)
    end
end

return function(analytics, apiImpl, assetData, localization, plugin)
    return function(store)
        local contextMenu = plugin:CreatePluginMenu("AssetManagerContextMenu")
        local isFolder = assetData.ClassName == "Folder"
        if isFolder then
            createFolderContextMenu(analytics, apiImpl, assetData, contextMenu, localization, store)
        else
            createAssetContextMenu(analytics, apiImpl, assetData, contextMenu, localization, store)
        end
    end
end