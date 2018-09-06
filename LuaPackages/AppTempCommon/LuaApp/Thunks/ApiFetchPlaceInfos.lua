local CorePackages = game:GetService("CorePackages")

local Functional = require(CorePackages.AppTempCommon.Common.Functional)
local GetPlaceInfos = require(CorePackages.AppTempCommon.LuaApp.Http.Requests.GetPlaceInfos)

-- LuaChat
local PlaceInfoModel = require(CorePackages.AppTempCommon.LuaChat.Models.PlaceInfoModel)
local ReceivedMultiplePlaceInfos = require(CorePackages.AppTempCommon.LuaChat.Actions.ReceivedMultiplePlaceInfos)

return function(networkImpl, placeIds)
	return function(store)
		return GetPlaceInfos(networkImpl, placeIds):andThen(function(result)
			local data = result.responseBody

			local placeInfos = Functional.Map(data, function(placeInfoData)
				return PlaceInfoModel.fromWeb(placeInfoData)
			end)

			store:dispatch(ReceivedMultiplePlaceInfos(placeInfos))

			return placeInfos
		end)
	end
end