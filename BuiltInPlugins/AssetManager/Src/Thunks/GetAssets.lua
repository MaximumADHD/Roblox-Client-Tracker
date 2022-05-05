local Plugin = script.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)

local SetAssets = require(Plugin.Src.Actions.SetAssets)
local SetAssetsModerationData = require(Plugin.Src.Actions.SetAssetsModerationData)
local SetIsFetchingAssets = require(Plugin.Src.Actions.SetIsFetchingAssets)
local SetHasLinkedScripts = require(Plugin.Src.Actions.SetHasLinkedScripts)

local GetAssetResponse = require(Plugin.Src.Thunks.GetAssetResponse)

local Screens = require(Plugin.Src.Util.Screens)

local enableAudioImport = require(Plugin.Src.Util.AssetManagerUtilities).enableAudioImport
local enableVideoImport = require(Plugin.Src.Util.AssetManagerUtilities).enableVideoImport

local sendResultToKibana = require(Plugin.Packages.Framework).Util.sendResultToKibana
local FIntStudioAssetManagerAssetFetchNumber = game:GetFastInt("StudioAssetManagerAssetFetchNumber")

local FFlagNewPackageAnalyticsWithRefactor2 = game:GetFastFlag("NewPackageAnalyticsWithRefactor2")
local FFlagAssetManagerEnableModelAssets = game:GetFastFlag("AssetManagerEnableModelAssets")
local FFlagAssetManagerRefactorPath = game:GetFastFlag("AssetManagerRefactorPath")
local FFlagStudioAssetManagerAssetModeration = game:GetFastFlag("StudioAssetManagerAssetModeration")

local numberOfAssetsToFetch = FIntStudioAssetManagerAssetFetchNumber

if FFlagAssetManagerRefactorPath then
    return function(apiImpl, path, pageCursor, pageNumber, showLoadingIndicator)
        return function(store)
            local state = store:getState()
            local showLoading
            if showLoadingIndicator == nil then
                showLoading = true
            else
                showLoading = showLoadingIndicator
            end
            local loadedAssets = {
                index = 0
            }

            loadedAssets.assets = {}
            loadedAssets.assetsModerationData = {}
            if pageCursor or (pageNumber and pageNumber ~= 1) then
                loadedAssets = state.AssetManagerReducer.assetsTable
            end
            if showLoading then
                -- fetching next page of assets
                store:dispatch(SetIsFetchingAssets(true))
            end

            local isPlace = path == Screens.PLACES.Path
            local isPackage = path == Screens.PACKAGES.Path
            local isImage = path == Screens.IMAGES.Path
            local isMesh = path == Screens.MESHES.Path
            local isScript = path == Screens.SCRIPTS.Path
            local isAudio = enableAudioImport() and path == Screens.AUDIO.Path
            local isVideo = enableVideoImport() and path == Screens.VIDEO.Path
            local isModel = FFlagAssetManagerEnableModelAssets and path == Screens.MODELS.Path
            local isAlias = isImage or isMesh or isScript or isAudio or isModel

            local requestPromise = nil
            local page: number? = nil
            local aliases = nil
            if isPlace then
                requestPromise = apiImpl.Develop.V2.Universes.places(game.GameId, pageCursor, numberOfAssetsToFetch):makeRequest()
                :andThen(function(response)
                    return response
                end, function()
                    store:dispatch(SetIsFetchingAssets(false))
                    error("Failed to load places")
                end)
            elseif isPackage then
                requestPromise = apiImpl.Develop.V1.Universes.packages(game.GameId, pageCursor, numberOfAssetsToFetch):makeRequest()
                :andThen(function(response)
                    if FFlagNewPackageAnalyticsWithRefactor2 then
                        sendResultToKibana(response)
                    end
                    return response
                end, function(response)
                    if FFlagNewPackageAnalyticsWithRefactor2 then
                        sendResultToKibana(response)
                    end
                    store:dispatch(SetIsFetchingAssets(false))
                    error("Failed to load packages")
                end)
            elseif isAlias then
                if not pageNumber then
                    page = 1
                else
                    page = pageNumber
                end

               aliases = {
                    ["Images/"] = isImage,
                    ["Meshes/"] = isMesh,
                    ["Scripts/"] = isScript,
                    ["Audio/"] = isAudio,
                    ["Video/"] = isVideo,
                    ["Models/"] = isModel,
                }

                requestPromise = apiImpl.API.Universes.getAliases(game.GameId, page):makeRequest()
                :andThen(function(response)
                    return response
                end, function()
                    store:dispatch(SetIsFetchingAssets(false))
                    error("Failed to load aliases")
                end)
            end

            if requestPromise then
                requestPromise:andThen(GetAssetResponse(loadedAssets, path, state, page, aliases))
                :andThen(function(apiImpl, assets, index, hasLinkedScripts)
                    if isAlias then
                        store:dispatch(SetHasLinkedScripts(hasLinkedScripts))
                    end
                    store:dispatch(SetIsFetchingAssets(false))
                    store:dispatch(SetAssets(assets, index))

                    if FFlagStudioAssetManagerAssetModeration then
                        local assetIds = {}
                        for _, asset in pairs(assets) do
                            table.insert(assetIds, asset.id)
                        end

                        requestPromise = apiImpl.Develop.V1.Assets.assets(assetIds):makeRequest()
                        :andThen(function(response)
                            local body = response.responseBody
                            for _, asset in pairs(body.data) do
                                    assetModerationData = {
                                        reviewStatus = asset.reviewStatus,
                                        isModerated = asset.isModerated,
                                        moderationStatus = asset.moderationStatus
                                    }
                                    assets.assetsModerationData = Cryo.Dictionary.join(assets.assetsModerationData, {
                                        [asset.id] = assetModerationData,
                                    })
                            end
                            store:dispatch(SetAssetsModerationData(assets.assetsModerationData))
                        end, function()
                            error("Failed to load asset information")
                        end)
                    end
                end)
            end
        end
    end
else
    return function(apiImpl, assetType, pageCursor, pageNumber, showLoadingIndicator)
        return function(store)
            local state = store:getState()
            local showLoading
            if showLoadingIndicator == nil then
                showLoading = true
            else
                showLoading = showLoadingIndicator
            end
            local requestPromise
            local newAssets = {
                index = 0
            }

            newAssets.assets = {}
            newAssets.assetsModerationData = {}
            local assetIds = {}
            local index = 1
            if pageCursor or (pageNumber and pageNumber ~= 1) then
                newAssets = state.AssetManagerReducer.assetsTable
                index = newAssets.index + 1
            end
            if showLoading then
                -- fetching next page of assets
                store:dispatch(SetIsFetchingAssets(true))
            end
            if assetType == Enum.AssetType.Place then
                requestPromise = apiImpl.Develop.V2.Universes.places(game.GameId, pageCursor, numberOfAssetsToFetch):makeRequest()
                :andThen(function(response)
                    return response
                end, function()
                    store:dispatch(SetIsFetchingAssets(false))
                    error("Failed to load places")
                end)
            elseif assetType == Enum.AssetType.Package then
                requestPromise = apiImpl.Develop.V1.Universes.packages(game.GameId, pageCursor, numberOfAssetsToFetch):makeRequest()
                :andThen(function(response)
                    if FFlagNewPackageAnalyticsWithRefactor2 then
                        sendResultToKibana(response)
                    end
                    return response
                end, function(response)
                    if FFlagNewPackageAnalyticsWithRefactor2 then
                        sendResultToKibana(response)
                    end
                    store:dispatch(SetIsFetchingAssets(false))
                    error("Failed to load packages")
                end)
            elseif assetType == Enum.AssetType.Image
            or assetType == Enum.AssetType.MeshPart
            or assetType == Enum.AssetType.Lua
            or (enableAudioImport() and assetType == Enum.AssetType.Audio)
            or (enableVideoImport() and assetType == Enum.AssetType.Video)
            or (FFlagAssetManagerEnableModelAssets and assetType == Enum.AssetType.Model)
            then
                local page
                if not pageNumber then
                    page = 1
                else
                    page = pageNumber
                end

                apiImpl.API.Universes.getAliases(game.GameId, page):makeRequest()
                :andThen(function(response)
                    local body = response.responseBody
                    if not body then
                        return
                    end

                    local hasLinkedScripts = state.AssetManagerReducer.hasLinkedScripts
                    if not body.FinalPage then
                        newAssets.pageNumber = page + 1
                    else
                        newAssets.pageNumber = nil
                    end
                    for _, alias in pairs(body.Aliases) do
                        if (assetType == Enum.AssetType.Image and string.find(alias.Name, "Images/"))
                        or (assetType == Enum.AssetType.MeshPart and string.find(alias.Name, "Meshes/"))
                        or (assetType == Enum.AssetType.Lua and string.find(alias.Name, "Scripts/"))
                        or (enableAudioImport() and (assetType == Enum.AssetType.Audio and string.find(alias.Name, "Audio/")))
                        or (enableVideoImport() and (assetType == Enum.AssetType.Video and string.find(alias.Name, "Video/")))
                        or (FFlagAssetManagerEnableModelAssets and (assetType == Enum.AssetType.Model and string.find(alias.Name, "Models/")))
                        then
                            -- creating new table so keys across all assets are consistent
                            local assetAlias = {}
                            local sAssetAliasId = tostring(alias.TargetId)
                            assetAlias.assetType = assetType
                            assetAlias.asset = alias.Asset
                            assetAlias.id = alias.TargetId
                            if assetType == Enum.AssetType.Image and string.find(alias.Name, "Images/") then
                                assetAlias.name = string.gsub(alias.Name, "Images/", "")
                            elseif assetType == Enum.AssetType.MeshPart and string.find(alias.Name, "Meshes/") then
                                assetAlias.name = string.gsub(alias.Name, "Meshes/", "")
                            elseif assetType == Enum.AssetType.Lua and string.find(alias.Name, "Scripts/") then
                                hasLinkedScripts = true
                                assetAlias.name = string.gsub(alias.Name, "Scripts/", "")
                            elseif (enableAudioImport() and assetType == Enum.AssetType.Audio and string.find(alias.Name, "Audio/")) then
                                assetAlias.name = string.gsub(alias.Name, "Audio/", "")
                            elseif (enableVideoImport() and assetType == Enum.AssetType.Video and string.find(alias.Name, "Video/")) then
                                assetAlias.name = string.gsub(alias.Name, "Video/", "")
                            elseif (FFlagAssetManagerEnableModelAssets and assetType == Enum.AssetType.Model and string.find(alias.Name, "Models/")) then
                                assetAlias.name = string.gsub(alias.Name, "Models/", "")
                            end
                            assetAlias.layoutOrder = index
                            newAssets.assets = Cryo.Dictionary.join(newAssets.assets, {
                                [sAssetAliasId] = assetAlias,
                            })
                            index = index + 1
                            if FFlagStudioAssetManagerAssetModeration then
                                table.insert(assetIds, assetAlias.id)
                            end
                        end
                    end
                    store:dispatch(SetHasLinkedScripts(hasLinkedScripts))
                    store:dispatch(SetIsFetchingAssets(false))
                    store:dispatch(SetAssets(newAssets, index))

                    if FFlagStudioAssetManagerAssetModeration then
                        requestPromise = apiImpl.Develop.V1.Assets.assets(assetIds):makeRequest()
                        :andThen(function(response)
                            local body = response.responseBody
                            for _, asset in pairs(body.data) do
                                    assetModerationData = {
                                        reviewStatus = asset.reviewStatus,
                                        isModerated = asset.isModerated,
                                        moderationStatus = asset.moderationStatus
                                    }
                                    newAssets.assetsModerationData = Cryo.Dictionary.join(newAssets.assetsModerationData, {
                                        [asset.id] = assetModerationData,
                                    })
                            end
                            store:dispatch(SetAssetsModerationData(newAssets.assetsModerationData))
                        end, function()
                            error("Failed to load asset information")
                        end)
                    end
                end, function()
                    store:dispatch(SetIsFetchingAssets(false))
                    error("Failed to load aliases")
                end)
            end
            if assetType == Enum.AssetType.Place or assetType == Enum.AssetType.Package then
                requestPromise:andThen(function(response)
                    if FFlagNewPackageAnalyticsWithRefactor2 then
                        sendResultToKibana(response)
                    end
                    local body = response.responseBody
                    if not body then
                        return
                    end
                    newAssets.previousPageCursor = body.previousPageCursor
                    newAssets.nextPageCursor = body.nextPageCursor

                    for _, asset in pairs(body.data) do
                        local newAsset = asset
                        newAsset.assetType = assetType
                        local sAssetId = tostring(newAsset.id)
                        newAsset.layoutOrder = index
                        newAssets.assets = Cryo.Dictionary.join(newAssets.assets, {
                            [sAssetId] = newAsset,
                        })
                        index = index + 1
                        if FFlagStudioAssetManagerAssetModeration then
                            table.insert(assetIds, newAsset.id)
                        end
                    end

                    store:dispatch(SetIsFetchingAssets(false))
                    store:dispatch(SetAssets(newAssets, index))

                    if FFlagStudioAssetManagerAssetModeration then
                        requestPromise = apiImpl.Develop.V1.Assets.assets(assetIds):makeRequest()
                        :andThen(function(response)
                            local body = response.responseBody
                            for _, asset in pairs(body.data) do
                                    assetModerationData = {
                                        reviewStatus = asset.reviewStatus,
                                        isModerated = asset.isModerated,
                                        moderationStatus = asset.moderationStatus
                                    }
                                    newAssets.assetsModerationData = Cryo.Dictionary.join(newAssets.assetsModerationData, {
                                        [asset.id] = assetModerationData,
                                    })
                            end
                            store:dispatch(SetAssetsModerationData(newAssets.assetsModerationData))
                        end, function()
                            error("Failed to load asset information")
                        end)
                    end
                end)
            end
        end
    end
end