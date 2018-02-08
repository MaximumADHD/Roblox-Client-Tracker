local Modules = script.Parent.Parent

local WebApi = require(Modules.WebApi)
local ActionType = require(Modules.ActionType)
local PlaceInfoModel = require(Modules.Models.PlaceInfoModel)
local Constants = require(Modules.Constants)

return function(placeId)
	return function(store)
		spawn(function()
			local state = store:GetState()
			if state.PlaceInfos and state.PlaceInfos[placeId]
				and state.PlaceInfos[placeId].status ~= Constants.WebStatus.FAILED then
				return
			end
			store:Dispatch({
				type = ActionType.FetchingPlaceInfo,
				placeId = placeId,
			})

			local status, result = WebApi.GetPlaceInfo(placeId)

			if status ~= WebApi.Status.OK then
				warn("WebApi failure in GetPlaceInfo")
				store:Dispatch({
					type = ActionType.FailedToFetchPlaceInfo,
					placeId = placeId,
				})
				return
			end

			local placeInfoData = result[1]
			local placeInfo = PlaceInfoModel.fromWeb(placeInfoData)
			store:Dispatch({
				type = ActionType.FetchedPlaceInfo,
				placeId = placeId,
				placeInfo = placeInfo,
			})
		end)
	end
end
