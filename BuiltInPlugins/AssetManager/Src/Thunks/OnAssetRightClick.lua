local Plugin = script.Parent.Parent.Parent

local SetAssets = require(Plugin.Src.Actions.SetAssets)
local SetEditingAssets = require(Plugin.Src.Actions.SetEditingAssets)
local SetScreen = require(Plugin.Src.Actions.SetScreen)
local SetSelectedAssets = require(Plugin.Src.Actions.SetSelectedAssets)

local GetAssets = require(Plugin.Src.Thunks.GetAssets)
local LaunchBulkImport = require(Plugin.Src.Thunks.LaunchBulkImport)

local enableAudioImport = require(Plugin.Src.Util.AssetManagerUtilities).enableAudioImport
local enableVideoImport = require(Plugin.Src.Util.AssetManagerUtilities).enableVideoImport

local Screens = require(Plugin.Src.Util.Screens)
local View = require(Plugin.Src.Util.View)

local AssetManagerService = game:GetService("AssetManagerService")
local HttpService = game:GetService("HttpService")
local MemStorageService = game:GetService("MemStorageService")
local RunService = game:GetService("RunService")
local StudioService = game:GetService("StudioService")

local FFlagNewPackageAnalyticsWithRefactor2 = game:GetFastFlag("NewPackageAnalyticsWithRefactor2")
local FFlagAssetManagerEnableModelAssets = game:GetFastFlag("AssetManagerEnableModelAssets")
local FFlagAssetManagerRefactorPath = game:GetFastFlag("AssetManagerRefactorPath")

local EVENT_ID_OPENASSETCONFIG = "OpenAssetConfiguration"

--TODO: Convert context menus into components to that they can have access to context services

local function removeAssets(apiImpl, assetData, assets, selectedAssets, store)
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
            elseif enableAudioImport() and asset.assetType == Enum.AssetType.Audio then
                AssetManagerService:DeleteAlias("Audio/".. asset.name)
            elseif enableVideoImport() and asset.assetType == Enum.AssetType.Video then
                AssetManagerService:DeleteAlias("Video/".. asset.name)
            end
        end
    end
    store:dispatch(SetSelectedAssets({}))
    store:dispatch(SetAssets({
        assets = {},
    }))
    if FFlagAssetManagerRefactorPath then
        local state = store:getState()
        store:dispatch(GetAssets(apiImpl, state.Screen.currentScreen.Path))
    else
        store:dispatch(GetAssets(apiImpl, assetData.assetType))
    end
end

local function addRenameAliasContextItem(contextMenu, analytics, assetData, localization, onAssetPreviewClose, store)
    contextMenu:AddNewAction("RenameAlias", localization:getText("ContextMenu", "RenameAlias")).Triggered:connect(function()
        onAssetPreviewClose()
        local assetToEdit = {
            [assetData.id] = true,
        }
        store:dispatch(SetEditingAssets(assetToEdit))
        analytics:report("clickContextMenuItem")
    end)
end
local function addEditAssetContextItem(contextMenu, analytics, assetData, localization, assetType)
    if RunService:IsEdit() then
        contextMenu:AddNewAction("EditAsset", localization:getText("ContextMenu", "EditAsset")).Triggered:connect(function()
            MemStorageService:Fire(EVENT_ID_OPENASSETCONFIG,
                HttpService:JSONEncode({ id = assetData.id, assetType = assetType, }))
            analytics:report("clickContextMenuItem")
        end)
    end
end
local function addRemoveFromGameContextItem(contextMenu, apiImpl, analytics, assetData, localization, onAssetPreviewClose, store, state)
    local assets = state.AssetManagerReducer.assetsTable.assets
    local selectedAssets = state.AssetManagerReducer.selectedAssets
    contextMenu:AddNewAction("RemoveFromGame", localization:getText("ContextMenu", "RemoveFromGame")).Triggered:connect(function()
        removeAssets(apiImpl, assetData, assets, selectedAssets, store)
        onAssetPreviewClose()
        analytics:report("clickContextMenuItem")
    end)
end

local function createFolderContextMenu(analytics, apiImpl, assetData, contextMenu, localization, store)
    contextMenu:AddNewAction("OpenFolder", localization:getText("ContextMenu", "OpenFolder")).Triggered:connect(function()
        store:dispatch(SetScreen(assetData.Screen))
        analytics:report("clickContextMenuItem")
    end)
    if assetData.Screen.Path == Screens.IMAGES.Path then
        contextMenu:AddNewAction("AddImages", localization:getText("ContextMenu", "AddImages")).Triggered:connect(function()
            store:dispatch(LaunchBulkImport(Enum.AssetType.Image.Value))
            analytics:report("clickContextMenuItem")
        end)
    elseif enableAudioImport() and assetData.Screen.Path == Screens.AUDIO.Path then
        contextMenu:AddNewAction("AddAudio", localization:getText("ContextMenu", "AddAudio")).Triggered:connect(function()
            store:dispatch(LaunchBulkImport(Enum.AssetType.Audio.Value))
            analytics:report("clickContextMenuItem")
        end)
    elseif enableVideoImport() and assetData.Screen.Path == Screens.VIDEO.Path then
        contextMenu:AddNewAction("AddVideo", localization:getText("ContextMenu", "AddVideo")).Triggered:connect(function()
            store:dispatch(LaunchBulkImport(Enum.AssetType.Video.Value))
            analytics:report("clickContextMenuItem")
        end)
    elseif assetData.Screen.Path == Screens.MESHES.Path then
        contextMenu:AddNewAction("AddMeshes", localization:getText("ContextMenu", "AddMeshes")).Triggered:connect(function()
            store:dispatch(LaunchBulkImport(Enum.AssetType.MeshPart.Value))
            analytics:report("clickContextMenuItem")
        end)
    elseif assetData.Screen.Path == Screens.PLACES.Path then
        contextMenu:AddNewAction("AddPlace", localization:getText("ContextMenu", "AddNewPlace")).Triggered:connect(function()
            local placeId, errorMessage = AssetManagerService:AddNewPlace()
            if errorMessage then
                error(errorMessage)
                return
            end
            store:dispatch(SetAssets({
                assets = {},
            }))
            local state = store:getState()
            if state.Screen.currentScreen.Path == Screens.PLACES.Path then
                if FFlagAssetManagerRefactorPath then
                    store:dispatch(GetAssets(apiImpl, Screens.PLACES.Path))
                else
                    store:dispatch(GetAssets(apiImpl, Screens.PLACES.AssetType))
                end
            else
                store:dispatch(SetScreen(Screens.PLACES))
            end
            analytics:report("clickContextMenuItem")
        end)
    end

    contextMenu:ShowAsync()
    contextMenu:Destroy()
end

local function createPlaceContextMenu(analytics, apiImpl, assetData, contextMenu, localization, onAssetPreviewClose, store)
    local state = store:getState()
    local assets = state.AssetManagerReducer.assetsTable.assets
    local selectedAssets = state.AssetManagerReducer.selectedAssets
    contextMenu:AddNewAction("Rename", localization:getText("ContextMenu", "Rename")).Triggered:connect(function()
        onAssetPreviewClose()
        local assetToEdit = {
            [assetData.id] = true,
        }
        store:dispatch(SetEditingAssets(assetToEdit))
        analytics:report("clickContextMenuItem")
    end)
    contextMenu:AddNewAction("CopyIdToClipboard", localization:getText("ContextMenu", "CopyIdToClipboard")).Triggered:connect(function()
        StudioService:CopyToClipboard(assetData.id)
        analytics:report("clickContextMenuItem")
    end)
    contextMenu:AddNewAction("ViewPlaceHistory", localization:getText("ContextMenu", "ViewPlaceHistory")).Triggered:connect(function()
        StudioService:ShowPlaceVersionHistoryDialog(assetData.id)
        analytics:report("clickContextMenuItem")
    end)
    if not assetData.isRootPlace then
        contextMenu:AddNewAction("RemoveFromGame", localization:getText("ContextMenu", "RemoveFromGame")).Triggered:connect(function()
            removeAssets(apiImpl, assetData, assets, selectedAssets, store)
            analytics:report("clickContextMenuItem")
        end)
    end

    contextMenu:ShowAsync()
    contextMenu:Destroy()
end

local function createPackageContextMenu(analytics, assetData, contextMenu, isAssetPreviewMenu, localization, onOpenAssetPreview, store)
    local state = store:getState()
    local view = state.AssetManagerReducer.view
    local userHasPermission = assetData.action == "Edit" or assetData.action == "Own"
    local userCanUpdate = assetData.upToVersion > 1
    if view.Key == View.LIST.Key and not isAssetPreviewMenu then
        contextMenu:AddNewAction("AssetPreview", localization:getText("ContextMenu", "AssetPreview")).Triggered:connect(function()
            -- when opening asset preview, set selected assets to that asset only
            store:dispatch(SetSelectedAssets({ [assetData.key] = true }))
            onOpenAssetPreview(assetData)
        end)
    end
    if RunService:IsEdit() then
        contextMenu:AddNewAction("Insert", localization:getText("ContextMenu", "Insert")).Triggered:connect(function()
            AssetManagerService:InsertPackage(assetData.id)
            analytics:report("clickContextMenuItem")
            local state = store:getState()
            local searchTerm = state.AssetManagerReducer.searchTerm
            if utf8.len(searchTerm) ~= 0 then
                analytics:report("insertAfterSearch")
            end
        end)
    end
    if RunService:IsEdit() and userCanUpdate then
        contextMenu:AddNewAction("UpdateAll", localization:getText("ContextMenu", "UpdateAll")).Triggered:connect(function()
            AssetManagerService:UpdateAllPackages(assetData.id)
            analytics:report("clickContextMenuItem")
            if FFlagNewPackageAnalyticsWithRefactor2 then
                analytics:report("massUpdateFromAssetManager")
            end
        end)
    end
    contextMenu:AddNewAction("ViewOnWebsite", localization:getText("ContextMenu", "ViewOnWebsite")).Triggered:connect(function()
        AssetManagerService:ViewPackageOnWebsite(assetData.id)
        analytics:report("clickContextMenuItem")
    end)
    contextMenu:AddNewAction("CopyIdToClipboard", localization:getText("ContextMenu", "CopyIdToClipboard")).Triggered:connect(function()
        StudioService:CopyToClipboard(assetData.id)
        analytics:report("clickContextMenuItem")
    end)
    if RunService:IsEdit() and userHasPermission then
        contextMenu:AddNewAction("PackageDetails", localization:getText("ContextMenu", "PackageDetails")).Triggered:connect(function()
            AssetManagerService:ShowPackageDetails(assetData.id)
            analytics:report("clickContextMenuItem")
        end)
    end

    contextMenu:ShowAsync()
    contextMenu:Destroy()
end

local function createImageContextMenu(analytics, apiImpl, assetData, contextMenu, isAssetPreviewMenu, localization, onOpenAssetPreview, onAssetPreviewClose, store)
    local state = store:getState()
    local view = state.AssetManagerReducer.view
    if view.Key == View.LIST.Key and not isAssetPreviewMenu then
        contextMenu:AddNewAction("AssetPreview", localization:getText("ContextMenu", "AssetPreview")).Triggered:connect(function()
            -- when opening asset preview, set selected assets to that asset only
            store:dispatch(SetSelectedAssets({ [assetData.key] = true }))
            onOpenAssetPreview(assetData)
        end)
    end
    addEditAssetContextItem(contextMenu, analytics, assetData, localization, Enum.AssetType.Image.Value)
    addRenameAliasContextItem(contextMenu, analytics, assetData, localization, onAssetPreviewClose, store)
    contextMenu:AddNewAction("Insert", localization:getText("ContextMenu", "Insert")).Triggered:connect(function()
        AssetManagerService:InsertImage(assetData.id)
        analytics:report("clickContextMenuItem")
        local searchTerm = state.AssetManagerReducer.searchTerm
        if utf8.len(searchTerm) ~= 0 then
            analytics:report("insertAfterSearch")
        end
    end)
    contextMenu:AddNewAction("CopyIdToClipboard", localization:getText("ContextMenu", "CopyIdToClipboard")).Triggered:connect(function()
        StudioService:CopyToClipboard("rbxassetid://" .. assetData.id)
        analytics:report("clickContextMenuItem")
    end)
    addRemoveFromGameContextItem(contextMenu, apiImpl, analytics, assetData, localization, onAssetPreviewClose, store, state)

    contextMenu:ShowAsync()
    contextMenu:Destroy()
end

local function createAudioContextMenu(analytics, apiImpl, assetData, contextMenu, isAssetPreviewMenu, localization, onOpenAssetPreview, onAssetPreviewClose, store)
    local state = store:getState()
    local view = state.AssetManagerReducer.view
    if view.Key == View.LIST.Key and not isAssetPreviewMenu then
        contextMenu:AddNewAction("AssetPreview", localization:getText("ContextMenu", "AssetPreview")).Triggered:connect(function()
            onOpenAssetPreview(assetData)
        end)
    end
    addEditAssetContextItem(contextMenu, analytics, assetData, localization, Enum.AssetType.Audio.Value)
    addRenameAliasContextItem(contextMenu, analytics, assetData, localization, onAssetPreviewClose, store)
    contextMenu:AddNewAction("Insert", localization:getText("ContextMenu", "Insert")).Triggered:connect(function()
        AssetManagerService:InsertAudio(assetData.id, assetData.name)
        analytics:report("clickContextMenuItem")
        local searchTerm = state.AssetManagerReducer.searchTerm
        if utf8.len(searchTerm) ~= 0 then
            analytics:report("insertAfterSearch")
        end
    end)
    contextMenu:AddNewAction("CopyIdToClipboard", localization:getText("ContextMenu", "CopyIdToClipboard")).Triggered:connect(function()
        StudioService:CopyToClipboard("rbxassetid://" .. assetData.id)
        analytics:report("clickContextMenuItem")
    end)
    addRemoveFromGameContextItem(contextMenu, apiImpl, analytics, assetData, localization, onAssetPreviewClose, store, state)
    contextMenu:ShowAsync()
    contextMenu:Destroy()
end

local function createVideoContextMenu(analytics, apiImpl, assetData, contextMenu, isAssetPreviewMenu, localization, onOpenAssetPreview, onAssetPreviewClose, store)
    local state = store:getState()
    local view = state.AssetManagerReducer.view
    if view.Key == View.LIST.Key and not isAssetPreviewMenu then
        contextMenu:AddNewAction("AssetPreview", localization:getText("ContextMenu", "AssetPreview")).Triggered:connect(function()
            onOpenAssetPreview(assetData)
        end)
    end
    addEditAssetContextItem(contextMenu, analytics, assetData, localization, Enum.AssetType.Video.Value)
    addRenameAliasContextItem(contextMenu, analytics, assetData, localization, onAssetPreviewClose, store)
    contextMenu:AddNewAction("Insert", localization:getText("ContextMenu", "Insert")).Triggered:connect(function()
        AssetManagerService:InsertVideo(assetData.id, assetData.name)
        analytics:report("clickContextMenuItem")
        local searchTerm = state.AssetManagerReducer.searchTerm
        if utf8.len(searchTerm) ~= 0 then
            analytics:report("insertAfterSearch")
        end
    end)
    contextMenu:AddNewAction("CopyIdToClipboard", localization:getText("ContextMenu", "CopyIdToClipboard")).Triggered:connect(function()
        StudioService:CopyToClipboard("rbxassetid://" .. assetData.id)
        analytics:report("clickContextMenuItem")
    end)
    addRemoveFromGameContextItem(contextMenu, apiImpl, analytics, assetData, localization, onAssetPreviewClose, store, state)
    contextMenu:ShowAsync()
    contextMenu:Destroy()
end

local function createMeshPartContextMenu(analytics, apiImpl, assetData, contextMenu, isAssetPreviewMenu, localization, onOpenAssetPreview, onAssetPreviewClose, store)
    local state = store:getState()
    local assets = state.AssetManagerReducer.assetsTable.assets
    local selectedAssets = state.AssetManagerReducer.selectedAssets
    local count = 0
    for _,_ in pairs(selectedAssets) do
        count = count + 1
    end

    local view = state.AssetManagerReducer.view
    if view.Key == View.LIST.Key and not isAssetPreviewMenu then
        contextMenu:AddNewAction("AssetPreview", localization:getText("ContextMenu", "AssetPreview")).Triggered:connect(function()
            -- when opening asset preview, set selected assets to that asset only
            store:dispatch(SetSelectedAssets({ [assetData.key] = true }))
            onOpenAssetPreview(assetData)
        end)
    end
    addEditAssetContextItem(contextMenu, analytics, assetData, localization, Enum.AssetType.MeshPart.Value)
    addRenameAliasContextItem(contextMenu, analytics, assetData, localization, onAssetPreviewClose, store)
    if count == 1 then
        contextMenu:AddNewAction("Insert", localization:getText("ContextMenu", "Insert")).Triggered:connect(function()
            AssetManagerService:InsertMesh("Meshes/".. assetData.name, false)
            analytics:report("clickContextMenuItem")
            local searchTerm = state.AssetManagerReducer.searchTerm
            if utf8.len(searchTerm) ~= 0 then
                analytics:report("insertAfterSearch")
            end
        end)
    end
    contextMenu:AddNewAction("InsertWithLocation", localization:getText("ContextMenu", "InsertWithLocation")).Triggered:connect(function()
        if count == 1 then
            AssetManagerService:InsertMesh("Meshes/".. assetData.name, false)
        else
            local selectedMeshes = {}
            for _, asset in pairs(assets) do
                local layoutOrder = asset.layoutOrder
                if selectedAssets[layoutOrder] then
                    table.insert(selectedMeshes, "Meshes/".. asset.name)
                end
            end
            AssetManagerService:InsertMeshesWithLocation(selectedMeshes)
        end
        analytics:report("clickContextMenuItem")
        local searchTerm = state.AssetManagerReducer.searchTerm
        if utf8.len(searchTerm) ~= 0 then
            analytics:report("insertAfterSearch")
        end
    end)

    local meshIdSuccess, meshId = pcall(AssetManagerService.GetMeshIdFromAliasName, AssetManagerService, "Meshes/" .. assetData.name)
    local textureIdSuccess, textureId = pcall(AssetManagerService.GetTextureIdFromAliasName, AssetManagerService, "Meshes/" .. assetData.name)

    if meshIdSuccess then
        contextMenu:AddNewAction("CopyMeshIdToClipboard", localization:getText("ContextMenu", "CopyMeshIdToClipboard")).Triggered:connect(function()
            StudioService:CopyToClipboard(meshId)
            analytics:report("clickContextMenuItem")
        end)
    else
        warn("Failed to get mesh id for asset id " .. assetData.id)
    end

    -- do not display warning for texture ids because meshes can be valid without a texture
    if textureIdSuccess then
        contextMenu:AddNewAction("CopyTextureIdToClipboard", localization:getText("ContextMenu", "CopyTextureIdToClipboard")).Triggered:connect(function()
            StudioService:CopyToClipboard(textureId)
            analytics:report("clickContextMenuItem")
        end)
    end

    addRemoveFromGameContextItem(contextMenu, apiImpl, analytics, assetData, localization, onAssetPreviewClose, store, state)

    contextMenu:ShowAsync()
    contextMenu:Destroy()
end

local function createLinkedScriptContextMenu(analytics, apiImpl, assetData, contextMenu, isAssetPreviewMenu, localization, onOpenAssetPreview, onAssetPreviewClose, store)
    local state = store:getState()
    local hasUnpublishedChanges = AssetManagerService:HasUnpublishedChangesForLinkedSource("Scripts/".. assetData.name)
    local view = state.AssetManagerReducer.view
    if view.Key == View.LIST.Key and not isAssetPreviewMenu then
        contextMenu:AddNewAction("AssetPreview", localization:getText("ContextMenu", "AssetPreview")).Triggered:connect(function()
            -- when opening asset preview, set selected assets to that asset only
            store:dispatch(SetSelectedAssets({ [assetData.key] = true }))
            onOpenAssetPreview(assetData)
        end)
    end
    addRenameAliasContextItem(contextMenu, analytics, assetData, localization, onAssetPreviewClose, store)
    contextMenu:AddNewAction("InsertAsScript", localization:getText("ContextMenu", "InsertAsScript")).Triggered:connect(function()
        AssetManagerService:InsertLinkedSourceAsScript("Scripts/".. assetData.name)
        analytics:report("clickContextMenuItem")
        local searchTerm = state.AssetManagerReducer.searchTerm
        if utf8.len(searchTerm) ~= 0 then
            analytics:report("insertAfterSearch")
        end
    end)
    contextMenu:AddNewAction("InsertAsLocalScript", localization:getText("ContextMenu", "InsertAsLocalScript")).Triggered:connect(function()
        AssetManagerService:InsertLinkedSourceAsLocalScript("Scripts/".. assetData.name)
        analytics:report("clickContextMenuItem")
        local searchTerm = state.AssetManagerReducer.searchTerm
        if utf8.len(searchTerm) ~= 0 then
            analytics:report("insertAfterSearch")
        end
    end)
    contextMenu:AddNewAction("InsertAsModuleScript", localization:getText("ContextMenu", "InsertAsModuleScript")).Triggered:connect(function()
        AssetManagerService:InsertLinkedSourceAsModuleScript("Scripts/".. assetData.name)
            analytics:report("clickContextMenuItem")
        local searchTerm = state.AssetManagerReducer.searchTerm
        if utf8.len(searchTerm) ~= 0 then
            analytics:report("insertAfterSearch")
        end
    end)
    if hasUnpublishedChanges then
        contextMenu:AddNewAction("PublishedLinkedSource", localization:getText("ContextMenu", "PublishLinkedSource")).Triggered:connect(function()
            AssetManagerService:PublishLinkedSource(assetData.id, "Scripts/".. assetData.name)
            analytics:report("clickContextMenuItem")
        end)
    end
    if hasUnpublishedChanges then
        contextMenu:AddNewAction("RevertToLastPublishedVersion", localization:getText("ContextMenu", "RevertToLastPublishedVersion")).Triggered:connect(function()
            AssetManagerService:RevertLinkedSourceToLastPublishedVersion("Scripts/".. assetData.name)
            analytics:report("clickContextMenuItem")
        end)
    end
    contextMenu:AddNewAction("RefreshScript", localization:getText("ContextMenu", "RefreshScript")).Triggered:connect(function()
        AssetManagerService:RefreshLinkedSource("Scripts/".. assetData.name)
        analytics:report("clickContextMenuItem")
    end)
    addRemoveFromGameContextItem(contextMenu, apiImpl, analytics, assetData, localization, onAssetPreviewClose, store, state)

    contextMenu:ShowAsync()
    contextMenu:Destroy()
end

local function createModelContextMenu(analytics, apiImpl, assetData, contextMenu, isAssetPreviewMenu, localization, onOpenAssetPreview, onAssetPreviewClose, store)
    assert(FFlagAssetManagerEnableModelAssets)
    local state = store:getState()
    local view = state.AssetManagerReducer.view
    if view.Key == View.LIST.Key and not isAssetPreviewMenu then
        contextMenu:AddNewAction("AssetPreview", localization:getText("ContextMenu", "AssetPreview")).Triggered:connect(function()
            -- when opening asset preview, set selected assets to that asset only
            store:dispatch(SetSelectedAssets({ [assetData.key] = true }))
            onOpenAssetPreview(assetData)
        end)
    end
    addEditAssetContextItem(contextMenu, analytics, assetData, localization, Enum.AssetType.Model.Value)
    addRenameAliasContextItem(contextMenu, analytics, assetData, localization, onAssetPreviewClose, store)
    contextMenu:AddNewAction("Insert", localization:getText("ContextMenu", "Insert")).Triggered:connect(function()
        analytics:report("clickContextMenuItem")
        AssetManagerService:InsertModel(assetData.id)
        local searchTerm = state.AssetManagerReducer.searchTerm
        if utf8.len(searchTerm) ~= 0 then
            analytics:report("insertAfterSearch")
        end
    end)
    contextMenu:AddNewAction("CopyIdToClipboard", localization:getText("ContextMenu", "CopyIdToClipboard")).Triggered:connect(function()
        StudioService:CopyToClipboard("rbxassetid://" .. assetData.id)
        analytics:report("clickContextMenuItem")
    end)
    addRemoveFromGameContextItem(contextMenu, apiImpl, analytics, assetData, localization, onAssetPreviewClose, store, state)

    contextMenu:ShowAsync()
    contextMenu:Destroy()
end

local function createAssetContextMenu(analytics, apiImpl, assetData, contextMenu, isAssetPreviewMenu, localization, onOpenAssetPreview, onAssetPreviewClose, store)
    local assetType = assetData.assetType
    if assetType == Enum.AssetType.Place then
        createPlaceContextMenu(analytics, apiImpl, assetData, contextMenu, localization, onAssetPreviewClose, store)
    elseif assetType == Enum.AssetType.Package then
        createPackageContextMenu(analytics, assetData, contextMenu, isAssetPreviewMenu, localization, onOpenAssetPreview, store)
    elseif assetType == Enum.AssetType.Image then
        createImageContextMenu(analytics, apiImpl, assetData, contextMenu, isAssetPreviewMenu, localization, onOpenAssetPreview, onAssetPreviewClose, store)
    elseif assetType == Enum.AssetType.MeshPart then
        createMeshPartContextMenu(analytics, apiImpl, assetData, contextMenu, isAssetPreviewMenu, localization, onOpenAssetPreview, onAssetPreviewClose, store)
    elseif assetType == Enum.AssetType.Lua then
        createLinkedScriptContextMenu(analytics, apiImpl, assetData, contextMenu, isAssetPreviewMenu, localization, onOpenAssetPreview, onAssetPreviewClose, store)
    elseif enableAudioImport() and assetType == Enum.AssetType.Audio then
        createAudioContextMenu(analytics, apiImpl, assetData, contextMenu, isAssetPreviewMenu, localization, onOpenAssetPreview, onAssetPreviewClose, store)
    elseif enableVideoImport() and assetType == Enum.AssetType.Video then
        createVideoContextMenu(analytics, apiImpl, assetData, contextMenu, isAssetPreviewMenu, localization, onOpenAssetPreview, onAssetPreviewClose, store)
    elseif FFlagAssetManagerEnableModelAssets and assetType == Enum.AssetType.Model then
        createModelContextMenu(analytics, apiImpl, assetData, contextMenu, isAssetPreviewMenu, localization, onOpenAssetPreview, onAssetPreviewClose, store)
    end
end

return function(props)
    return function(store)
        local analytics = props.Analytics
        local apiImpl = props.API:get()
        local assetData = props.AssetData
        local isAssetPreviewMenu = props.IsAssetPreviewMenu
        local localization = props.Localization
        local plugin = props.Plugin:get()
        local onOpenAssetPreview = props.OnOpenAssetPreview
        local onAssetPreviewClose = props.OnAssetPreviewClose
        local contextMenu = plugin:CreatePluginMenu("AssetManagerContextMenu")
        local isFolder = assetData.ClassName == "Folder"
        if isFolder then
            createFolderContextMenu(analytics, apiImpl, assetData, contextMenu, localization, store)
        else
            createAssetContextMenu(analytics, apiImpl, assetData, contextMenu, isAssetPreviewMenu, localization, onOpenAssetPreview, onAssetPreviewClose, store)
        end
    end
end