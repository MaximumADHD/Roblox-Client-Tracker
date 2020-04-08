local Plugin = script.Parent.Parent.Parent.Parent

local Actions = Plugin.Core.Actions
local NetworkError = require(Actions.NetworkError)
local SetCachedCreatorInfo = require(Actions.SetCachedCreatorInfo)

return function(networkInterface, creatorTargetId)
    return function(store)
        return networkInterface:getCreatorName(creatorTargetId):andThen(function(result)
            local data = result.responseBody
            local creatorName = data and data.Username

            store:dispatch(SetCachedCreatorInfo({
                Id = creatorTargetId,
                Name = creatorName,
            }))
        end,
        function(err)
            store:dispatch(NetworkError(err))
        end)
    end
end