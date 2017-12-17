local Modules = script.Parent.Parent

local WebApi = require(Modules.WebApi)
local ActionType = require(Modules.ActionType)
local PlaceInfoModel = require(Modules.Models.PlaceInfoModel)

return function(placeId)
	return function(store)
		spawn(function()
			local status, result = WebApi.GetPlaceInfo(placeId)

			if status ~= WebApi.Status.OK then
				warn("WebApi failure in GetPlaceInfo")
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
