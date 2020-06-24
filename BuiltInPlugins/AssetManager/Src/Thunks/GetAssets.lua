local Plugin = script.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)

local SetAssets = require(Plugin.Src.Actions.SetAssets)
local SetIsFetchingAssets = require(Plugin.Src.Actions.SetIsFetchingAssets)
local SetHasLinkedScripts = require(Plugin.Src.Actions.SetHasLinkedScripts)

local FFlagStudioAssetManagerFilterPackagePermissions = game:DefineFastFlag("StudioAssetManagerFilterPackagePermissions", false)

local function checkIfPackageHasPermission(store, apiImpl, packageIds, newAssetsTable, assetBody, assetType, index)
    apiImpl.Develop.V1.Packages.highestPermissions(packageIds):makeRequest()
    :andThen(function(response)
        local body = response.responseBody
        if not body then
            return
        end
        for _, permission in pairs(body.permissions) do
            for _, asset in pairs(assetBody.data) do
                if permission.hasPermission and permission.assetId == asset.assetId then
                    local newAsset = asset
                    newAsset.assetType = assetType
                    newAsset.name = asset.assetName
                    newAsset.id = asset.assetId
                    newAsset.assetName = nil
                    newAsset.assetId = nil
                    newAssetsTable = Cryo.Dictionary.join(newAssetsTable, {
                        [index] = newAsset,
                    })
                    index = index + 1
                end
            end
        end
    end, function()
        store:dispatch(SetIsFetchingAssets(false))
        error("Failed to load package permissions")
    end)
end

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
        local newAssets = {}
        newAssets.assets = {}
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
            requestPromise = apiImpl.Develop.V2.Universes.places(game.GameId, pageCursor):makeRequest()
            :andThen(function(response)
                return response
            end, function()
                store:dispatch(SetIsFetchingAssets(false))
                error("Failed to load places")
            end)
        elseif assetType == Enum.AssetType.Package then
            requestPromise = apiImpl.Develop.V2.Universes.symbolicLinks(game.GameId, pageCursor):makeRequest()
            :andThen(function(response)
                return response
            end, function()
                store:dispatch(SetIsFetchingAssets(false))
                error("Failed to load packages")
            end)
        elseif assetType == Enum.AssetType.Image
        or assetType == Enum.AssetType.MeshPart
        or assetType == Enum.AssetType.Lua then
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
                    or (assetType == Enum.AssetType.Lua and string.find(alias.Name, "Scripts/")) then
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
                        end
                        assetAlias.layoutOrder = index
                        newAssets.assets = Cryo.Dictionary.join(newAssets.assets, {
                            [sAssetAliasId] = assetAlias,
                        })
                        index = index + 1
                    end
                end
                store:dispatch(SetHasLinkedScripts(hasLinkedScripts))
                store:dispatch(SetIsFetchingAssets(false))
                store:dispatch(SetAssets(newAssets, index))
            end, function()
                store:dispatch(SetIsFetchingAssets(false))
                error("Failed to load aliases")
            end)
        end
        if assetType == Enum.AssetType.Place or assetType == Enum.AssetType.Package then
            requestPromise:andThen(function(response)
                local body = response.responseBody
                if not body then
                    return
                end
                newAssets.previousPageCursor = body.previousPageCursor
                newAssets.nextPageCursor = body.nextPageCursor
                -- Remove with FFlagStudioAssetManagerFilterPackagePermissions
                local packageIds = {}

                for _, asset in pairs(body.data) do
                    local newAsset = asset
                    newAsset.assetType = assetType
                    -- make sure packages have similar keys in table
                    if assetType == Enum.AssetType.Package then
                        if not FFlagStudioAssetManagerFilterPackagePermissions then
                            local sAssetId = tostring(asset.assetId)
                            newAsset.name = asset.assetName
                            newAsset.id = asset.assetId
                            newAsset.assetName = nil
                            newAsset.assetId = nil
                            newAsset.layoutOrder = index
                            newAssets.assets = Cryo.Dictionary.join(newAssets.assets, {
                                [sAssetId] = newAsset,
                            })
                            index = index + 1
                        else
                            table.insert(packageIds, asset.assetId)
                        end
                    else
                        local sAssetId = tostring(newAsset.id)
                        newAsset.layoutOrder = index
                        newAssets.assets = Cryo.Dictionary.join(newAssets.assets, {
                            [sAssetId] = newAsset,
                        })
                        index = index + 1
                    end
                end
                if FFlagStudioAssetManagerFilterPackagePermissions
                and #packageIds ~= 0 then
                    checkIfPackageHasPermission(store, apiImpl, packageIds, newAssets.assets,body.data, assetType, index)
                end
                store:dispatch(SetIsFetchingAssets(false))
                store:dispatch(SetAssets(newAssets, index))
            end)
        end
    end
end