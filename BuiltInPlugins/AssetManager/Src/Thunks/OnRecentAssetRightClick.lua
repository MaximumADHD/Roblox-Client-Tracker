local Plugin = script.Parent.Parent.Parent

local enableAudioImport = require(Plugin.Src.Util.AssetManagerUtilities).enableAudioImport

local AssetManagerService = game:GetService("AssetManagerService")
local StudioService = game:GetService("StudioService")

local FFlagAssetManagerEnableModelAssets = game:GetFastFlag("AssetManagerEnableModelAssets")
local FFlagToolboxShowMeshAndTextureId2 = game:GetFastFlag("ToolboxShowMeshAndTextureId2")

local function createImageContextMenu(analytics, apiImpl, assetData, contextMenu, localization, store)
    contextMenu:AddNewAction("Insert", localization:getText("ContextMenu", "Insert")).Triggered:connect(function()
        local state = store:getState()
        local recentAssets = state.AssetManagerReducer.recentAssets
        local selectedAssets = state.AssetManagerReducer.selectedAssets
        local selectedMeshes = {}
        for _, asset in pairs(recentAssets) do
            local key = asset.key
            if selectedAssets[key] and asset.assetType == Enum.AssetType.MeshPart then
                table.insert(selectedMeshes, "Meshes/".. asset.name)
            end
        end
        if next(selectedMeshes) ~= nil then
            AssetManagerService:InsertMeshesWithLocation(selectedMeshes)
        end
        AssetManagerService:InsertImage(assetData.id)
        analytics:report("clickContextMenuItem")
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
        local recentAssets = state.AssetManagerReducer.recentAssets
        local selectedAssets = state.AssetManagerReducer.selectedAssets
        local selectedMeshes = {}
        for _, asset in pairs(recentAssets) do
            local key = asset.key
            if selectedAssets[key] and asset.assetType == Enum.AssetType.MeshPart then
                table.insert(selectedMeshes, "Meshes/".. asset.name)
            end
        end
        if next(selectedMeshes) ~= nil then
            AssetManagerService:InsertMeshesWithLocation(selectedMeshes)
        end
        AssetManagerService:InsertAudio(assetData.id, assetData.name)
        analytics:report("clickContextMenuItem")
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
    -- Remove textureId declaration here with ToolboxShowMeshAndTextureId2
    local textureId
    if not FFlagToolboxShowMeshAndTextureId2 then
        textureId = AssetManagerService:GetTextureId("Meshes/".. assetData.name)
    end
    contextMenu:AddNewAction("Insert", localization:getText("ContextMenu", "Insert")).Triggered:connect(function()
        local selectedMeshes = {}
        for _, asset in pairs(recentAssets) do
            local key = asset.key
            if selectedAssets[key] and asset.assetType == Enum.AssetType.MeshPart then
                table.insert(selectedMeshes, "Meshes/".. asset.name)
            end
        end
        if next(selectedMeshes) ~= nil then
            AssetManagerService:InsertMeshesWithLocation(selectedMeshes)
        end
        analytics:report("clickContextMenuItem")
    end)
    contextMenu:AddNewAction("InsertWithLocation", localization:getText("ContextMenu", "InsertWithLocation")).Triggered:connect(function()      
        local selectedMeshes = {}
        for _, asset in pairs(recentAssets) do
            local key = asset.key
            if selectedAssets[key] and asset.assetType == Enum.AssetType.MeshPart then
                table.insert(selectedMeshes, "Meshes/".. asset.name)
            end
        end
        if next(selectedMeshes) ~= nil then
            AssetManagerService:InsertMeshesWithLocation(selectedMeshes)
        end
        analytics:report("clickContextMenuItem")
        local searchTerm = state.AssetManagerReducer.searchTerm
        if utf8.len(searchTerm) ~= 0 then
            analytics:report("insertAfterSearch")
        end
    end)
    if FFlagToolboxShowMeshAndTextureId2 then
        local meshIdSuccess, meshId = pcall(AssetManagerService.GetMeshIdFromAliasName, AssetManagerService, "Meshes/" .. assetData.name)
        local textureIdSuccess
        textureIdSuccess, textureId = pcall(AssetManagerService.GetTextureIdFromAliasName, AssetManagerService, "Meshes/" .. assetData.name)

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
    else
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
    end

    contextMenu:ShowAsync()
    contextMenu:Destroy()
end

local function createModelContextMenu(analytics, apiImpl, assetData, contextMenu, localization, store)
    assert(FFlagAssetManagerEnableModelAssets)
    local state = store:getState()
    contextMenu:AddNewAction("Insert", localization:getText("ContextMenu", "Insert")).Triggered:connect(function()
        local state = store:getState()
        local recentAssets = state.AssetManagerReducer.recentAssets
        local selectedAssets = state.AssetManagerReducer.selectedAssets
        local selectedMeshes = {}
        for _, asset in pairs(recentAssets) do
            local key = asset.key
            if selectedAssets[key] and asset.assetType == Enum.AssetType.MeshPart then
                table.insert(selectedMeshes, "Meshes/".. asset.name)
            end
        end
        if next(selectedMeshes) ~= nil then
            AssetManagerService:InsertMeshesWithLocation(selectedMeshes)
        end
        AssetManagerService:InsertModel(assetData.id)
        analytics:report("clickContextMenuItem")
    end)
    contextMenu:AddNewAction("CopyIdToClipboard", localization:getText("ContextMenu", "CopyIdToClipboard")).Triggered:connect(function()
        StudioService:CopyToClipboard("rbxassetid://" .. assetData.id)
        analytics:report("clickContextMenuItem")
    end)

    contextMenu:ShowAsync()
    contextMenu:Destroy()
end

local function createAssetContextMenu(analytics, apiImpl, assetData, contextMenu, localization, store)
    local assetType = assetData.assetType
    if assetType == Enum.AssetType.Image then
        createImageContextMenu(analytics, apiImpl, assetData, contextMenu, localization, store)
    elseif assetType == Enum.AssetType.MeshPart then
        createMeshPartContextMenu(analytics, apiImpl, assetData, contextMenu, localization, store)
    elseif enableAudioImport() and assetType == Enum.AssetType.Audio then
        createAudioContextMenu(analytics, assetData, contextMenu, localization, store)
    elseif FFlagAssetManagerEnableModelAssets and assetType == Enum.AssetType.Model then
        createModelContextMenu(analytics, apiImpl, assetData, contextMenu, localization, store)
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