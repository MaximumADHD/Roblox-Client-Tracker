local Plugin = script.Parent.Parent.Parent.Parent

local Actions = Plugin.Core.Actions
local NetworkError = require(Actions.NetworkError)
local SetCachedCreatorInfo = require(Actions.SetCachedCreatorInfo)

local Util = Plugin.Core.Util
local CreatorInfoHelper = require(Util.CreatorInfoHelper)

local FFlagStudioFixGroupCreatorInfo3 = game:GetFastFlag("StudioFixGroupCreatorInfo3")

return function(networkInterface, creatorTargetId, creatorType)
	if FFlagStudioFixGroupCreatorInfo3 then
		return function(store)
			return networkInterface:getCreatorInfo(creatorTargetId, creatorType):andThen(
				function(result)
					local creatorName = CreatorInfoHelper.getNameFromResult(result, creatorType)

					store:dispatch(SetCachedCreatorInfo({
						Id = creatorTargetId,
						Name = creatorName,
						Type = creatorType
					}))
				end,
				function(err)
					store:dispatch(NetworkError(err))
				end)
		end
	else
		return function(store)
			return networkInterface:getCreatorName(creatorTargetId):andThen(
				function(result)
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
end