local Plugin = script.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)

local Promise = require(Plugin.Packages.Framework).Util.Promise

local enableAudioImport = require(Plugin.Src.Util.AssetManagerUtilities).enableAudioImport

local SetAssets = require(Plugin.Src.Actions.SetAssets)
local SetIsFetchingAssets = require(Plugin.Src.Actions.SetIsFetchingAssets)
local SetHasLinkedScripts = require(Plugin.Src.Actions.SetHasLinkedScripts)

local function GetAliases(apiImpl, assetType, state)
    local newAssets = {}
    newAssets.assets = {}
    local index = 1

    local function request(page)
        if assetType == Enum.AssetType.Image
        or assetType == Enum.AssetType.MeshPart
        or assetType == Enum.AssetType.Lua
        or (enableAudioImport() and assetType == Enum.AssetType.Audio) then
            return apiImpl.API.Universes.getAliases(game.GameId, page):makeRequest()
            :andThen(function(response)
                local body = response.responseBody
                if not body then
                    return
                end

                local hasLinkedScripts = state.AssetManagerReducer.hasLinkedScripts
                for _, alias in pairs(body.Aliases) do
                    if (assetType == Enum.AssetType.Image and string.find(alias.Name, "Images/"))
                    or (assetType == Enum.AssetType.MeshPart and string.find(alias.Name, "Meshes/"))
                    or (assetType == Enum.AssetType.Lua and string.find(alias.Name, "Scripts/"))
                    or (enableAudioImport() and assetType == Enum.AssetType.Audio and string.find(alias.Name, "Audio/"))
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
                        elseif enableAudioImport() and assetType == Enum.AssetType.Audio and string.find(alias.Name, "Audio/") then
                            assetAlias.name = string.gsub(alias.Name, "Audio/", "")
                        end
                        assetAlias.layoutOrder = index
                        newAssets.assets = Cryo.Dictionary.join(newAssets.assets, {
                            [sAssetAliasId] = assetAlias,
                        })
                        index = index + 1
                    end
                end
                if not body.FinalPage then
                    return request(page + 1)
                else
                    return newAssets, index, hasLinkedScripts
                end
            end)
        end
    end

    return request(1)
end

return function(apiImpl, assetType)
    return function(store)
        local state = store:getState()
        store:dispatch(SetIsFetchingAssets(true))
        return Promise.resolve(GetAliases(apiImpl, assetType, state)):andThen(function(newAssets, index, hasLinkedScripts)
                store:dispatch(SetHasLinkedScripts(hasLinkedScripts))
                store:dispatch(SetIsFetchingAssets(false))
                store:dispatch(SetAssets(newAssets, index))
            end, function()
                store:dispatch(SetIsFetchingAssets(false))
                error("Failed to load aliases")
            end)
    end
end
