local PlaceInfoRodux = script:FindFirstAncestor("PlaceInfoRodux")
local Packages = PlaceInfoRodux.Parent

local Functional = require(Packages.AppCommonLib).Functional
local GetPlaceInfos = require(PlaceInfoRodux.Requests).GetPlaceInfos

local PlaceInfoModel = require(PlaceInfoRodux.Models).PlaceInfoModel
local ReceivedMultiplePlaceInfos = require(PlaceInfoRodux.Actions).ReceivedMultiplePlaceInfos

return function(networkImpl, placeIds)
	return function(store)
		return GetPlaceInfos(networkImpl, placeIds):andThen(function(result)
			local data = result.responseBody

			local placeInfos = Functional.Map(data, function(placeInfoData)
				return PlaceInfoModel.fromWeb(placeInfoData)
			end)

			store:dispatch(ReceivedMultiplePlaceInfos(placeInfos))

			return placeInfos
		end):catch(function(response)
			warn("ApiFetchlaceInfos failed with error code " .. tostring(response.HttpError))
		end)
	end
end
