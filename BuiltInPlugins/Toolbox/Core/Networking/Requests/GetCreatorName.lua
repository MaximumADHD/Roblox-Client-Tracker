local Plugin = script.Parent.Parent.Parent.Parent

local Actions = Plugin.Core.Actions
local NetworkError = require(Actions.NetworkError)
local SetCachedCreatorInfo = require(Actions.SetCachedCreatorInfo)

local Util = Plugin.Core.Util
local CreatorInfoHelper = require(Util.CreatorInfoHelper)

return function(networkInterface, creatorTargetId, creatorType)
	return function(store)
		return networkInterface:getCreatorInfo(creatorTargetId, creatorType):andThen(function(result)
			local creatorName = CreatorInfoHelper.getNameFromResult(result, creatorType)

			store:dispatch(SetCachedCreatorInfo({
				Id = creatorTargetId,
				Name = creatorName,
				Type = creatorType,
			}))
		end, function(err)
			store:dispatch(NetworkError(err))
		end)
	end
end
