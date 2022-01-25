local Plugin = script.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)

local Screens = require(Plugin.Src.Util.Screens)

return function(fetchedAssets, path: string, state, page: number?, aliases)
    local index = fetchedAssets.index and fetchedAssets.index + 1 or 1

    return function(response)
        local body = response.responseBody
        if not body then
            return
        end

        local hasLinkedScripts = state.AssetManagerReducer.hasLinkedScripts

        -- Save page information based on whether it is required or not
        if aliases and page then
            if not body.FinalPage then
                fetchedAssets.pageNumber = page + 1
            else
                fetchedAssets.pageNumber = nil
            end
        else
            fetchedAssets.previousPageCursor = body.previousPageCursor
            fetchedAssets.nextPageCursor = body.nextPageCursor
        end

        local assets = {}

        -- Please note the difference between aliases and assets
        -- Aliases are grabbed when referencing images, meshes, models, audio, and scripts
        -- Other non-aliased types include packages and places
        -- Both have similar processing, so they've been combined here
        local data = aliases ~= nil and body.Aliases or body.data
        for _, rawAsset in pairs(data) do
            local asset = {}
            if aliases then
                asset.asset = rawAsset.Asset
                asset.id = rawAsset.TargetId
            else
                asset = rawAsset
            end

            asset.assetType = Screens[path].AssetType
            asset.layoutOrder = index
            index += 1

            -- Check if we match an alias and if so, set corresponding values
            local aliasMatched = false
            if aliases then
                for aliasName, aliasMatch in pairs(aliases) do
                    if aliasMatch and string.find(rawAsset.Name, aliasName) then
                        asset.name = string.gsub(rawAsset.Name, aliasName, "")
                        aliasMatched = true
                    elseif aliasMatched then
                        break
                    end
                end

                if aliasMatched then
                    if Screens[path].Path == Screens.SCRIPTS.Path then
                        hasLinkedScripts = true
                    end
                else
                    continue
                end
            end

            assets = Cryo.Dictionary.join(assets, {
                [aliases ~= nil and asset.id or tostring(rawAsset.id)] = asset
            })
        end

        fetchedAssets.assets = Cryo.Dictionary.join(fetchedAssets.assets, assets)

        return fetchedAssets, index, hasLinkedScripts
    end
end