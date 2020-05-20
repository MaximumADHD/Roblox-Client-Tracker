local Plugin = script.Parent.Parent.Parent.Parent

local Actions = Plugin.Core.Actions
local NetworkError = require(Actions.NetworkError)
local SetLoading = require(Actions.SetLoading)

local GetItemDetails = require(Plugin.Core.Networking.Requests.GetItemDetails)
local GetCreatorName = require(Plugin.Core.Networking.Requests.GetCreatorName)

local Util = Plugin.Core.Util
local PagedRequestCursor = require(Util.PagedRequestCursor)
local Constants = require(Util.Constants)

return function(networkInterface, category, audioSearchInfo, pageInfo, settings, nextPageCursor)
    return function(store)
        store:dispatch(SetLoading(true))

        local creator = pageInfo.creator
        local isCreatorSearchEmpty = creator and creator.Id == -1
        local creatorTargetId = (not isCreatorSearchEmpty) and creator and creator.Id or nil

        local assetStore = store:getState().assets
        local currentCursor = assetStore.currentCursor
        local cachedCreatorId = assetStore.cachedCreatorInfo and assetStore.cachedCreatorInfo.Id

        -- Set creator name filter
        if creatorTargetId
            and ((not cachedCreatorId) or (cachedCreatorId ~= creatorTargetId))
        then
            store:dispatch(GetCreatorName(networkInterface, creatorTargetId))
        end

        -- Get from API
        if PagedRequestCursor.isNextPageAvailable(currentCursor) then
            local nextPageCursor = currentCursor.nextPageCursor

            return networkInterface:getToolboxItems(
                category,
                pageInfo.sorts[pageInfo.sortIndex],
                pageInfo.creatorType,
                audioSearchInfo and audioSearchInfo.minDuration or nil,
                audioSearchInfo and audioSearchInfo.maxDuration or nil,
                creatorTargetId,
                pageInfo.searchTerm or "",
                nextPageCursor,
                Constants.TOOLBOX_ITEM_SEARCH_LIMIT
            ):andThen(
                function(result)
                    store:dispatch(SetLoading(false))

                    local data = result.responseBody
                    local cursor = PagedRequestCursor.createCursor(data)

                    if data and data.totalResults > 0 then
                        store:dispatch(GetItemDetails(
                            networkInterface,
                            data.data,
                            data.totalResults,
                            audioSearchInfo,
                            pageInfo.targetPage,
                            cursor
                        ))
                    end
                end,
                function(err)
                    store:dispatch(SetLoading(false))
                    store:dispatch(NetworkError(err))
                end
            )
        end
    end
end