local Plugin = script.Parent.Parent.Parent

local AssetManagerService = game:GetService("AssetManagerService")
local StudioService = game:GetService("StudioService")

local Framework = Plugin.Packages.Framework
local RobloxAPI = require(Framework).RobloxAPI

local FFlagAllowAudioBulkImport = game:GetFastFlag("AllowAudioBulkImport")

local function createImageContextMenu(analytics, apiImpl, assetData, contextMenu, localization, store)
    contextMenu:AddNewAction("Insert", localization:getText("ContextMenu", "Insert")).Triggered:connect(function()
        local state = store:getState()
        local recentAssets = state.AssetManagerReducer.recentAssets
        local selectedAssets = state.AssetManagerReducer.selectedAssets
        for _, asset in pairs(recentAssets) do
            local key = asset.key
            if selectedAssets[key] and asset.assetType == Enum.AssetType.MeshPart then
                AssetManagerService:InsertMesh("Meshes/".. asset.name, true)
            end
        end
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

    contextMenu:ShowAsync()
    contextMenu:Destroy()
end

local function createAudioContextMenu(analytics, assetData, contextMenu, localization, store)
    contextMenu:AddNewAction("Insert", localization:getText("ContextMenu", "Insert")).Triggered:connect(function()
        local state = store:getState()
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

    contextMenu:ShowAsync()
    contextMenu:Destroy()
end

local function createMeshPartContextMenu(analytics, apiImpl, assetData, contextMenu, localization, store)
    local state = store:getState()
    local recentAssets = state.AssetManagerReducer.recentAssets
    local selectedAssets = state.AssetManagerReducer.selectedAssets
    local textureId = AssetManagerService:GetTextureId("Meshes/".. assetData.name)
    contextMenu:AddNewAction("Insert", localization:getText("ContextMenu", "Insert")).Triggered:connect(function()
        for _, asset in pairs(recentAssets) do
            local key = asset.key
            if selectedAssets[key] and asset.assetType == Enum.AssetType.MeshPart then
                AssetManagerService:InsertMesh("Meshes/".. asset.name, false)
            end
        end
        analytics:report("clickContextMenuItem")
        local searchTerm = state.AssetManagerReducer.searchTerm
        if utf8.len(searchTerm) ~= 0 then
            analytics:report("insertAfterSearch")
        end
    end)
    contextMenu:AddNewAction("InsertWithLocation", localization:getText("ContextMenu", "InsertWithLocation")).Triggered:connect(function()
        for _, asset in pairs(recentAssets) do
            local key = asset.key
            if selectedAssets[key] and asset.assetType == Enum.AssetType.MeshPart then
                AssetManagerService:InsertMesh("Meshes/".. asset.name, true)
            end
        end
        analytics:report("clickContextMenuItem")
        local searchTerm = state.AssetManagerReducer.searchTerm
        if utf8.len(searchTerm) ~= 0 then
            analytics:report("insertAfterSearch")
        end
    end)
    contextMenu:AddNewAction("CopyIdToClipboard", localization:getText("ContextMenu", "CopyIdToClipboard")).Triggered:connect(function()
        StudioService:CopyToClipboard("rbxassetid://" .. AssetManagerService:GetMeshId("Meshes/".. assetData.name))
        analytics:report("clickContextMenuItem")
    end)
    if textureId ~= -1 then
        contextMenu:AddNewAction("CopyTextureIdToClipboard", localization:getText("ContextMenu", "CopyTextureIdToClipboard")).Triggered:connect(function()
            StudioService:CopyToClipboard("rbxassetid://" .. textureId)
            analytics:report("clickContextMenuItem")
        end)
    end

    contextMenu:ShowAsync()
    contextMenu:Destroy()
end

local function createAssetContextMenu(analytics, apiImpl, assetData, contextMenu, localization, store)
    local assetType = assetData.assetType
    if assetType == Enum.AssetType.Image then
        createImageContextMenu(analytics, apiImpl, assetData, contextMenu, localization, store)
    elseif assetType == Enum.AssetType.MeshPart then
        createMeshPartContextMenu(analytics, apiImpl, assetData, contextMenu, localization, store)
    elseif FFlagAllowAudioBulkImport and (not RobloxAPI:baseURLHasChineseHost()) and assetType == Enum.AssetType.Audio then
        createAudioContextMenu(analytics, assetData, contextMenu, localization, store)
    end
end

return function(props)
    return function(store)
        local analytics = props.Analytics
        local apiImpl = props.API:get()
        local assetData = props.AssetData
        local localization = props.Localization
        local plugin = props.Plugin:get()
        local contextMenu = plugin:CreatePluginMenu("AssetManagerContextMenu")
        createAssetContextMenu(analytics, apiImpl, assetData, contextMenu, localization, store)
    end
end