local Modules = game:GetService("CoreGui").RobloxGui.Modules

local ShareGame = Modules.Settings.Pages.ShareGame
local GetPlaceInfos = require(ShareGame.Http.Requests.GetPlaceInfos)
local ReceivedPlaceInfo = require(ShareGame.Actions.ReceivedPlaceInfo)
local PlaceInfoModel = require(ShareGame.Models.PlaceInfoModel)
local Functional = require(ShareGame.Functional)

return function(networkImpl, placeIds)
	return function(store)
		return GetPlaceInfos(networkImpl, placeIds):andThen(function(result)
			local data = result.responseBody

			local placeInfos = Functional.Map(data, function(placeInfoData)
				return PlaceInfoModel.fromWeb(placeInfoData)
			end)

			for _, placeInfo in pairs(placeInfos) do
				store:dispatch(
					ReceivedPlaceInfo(placeInfo)
				)
			end

			return placeInfos
		end)
	end
end