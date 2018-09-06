local CorePackages = game:GetService("CorePackages")

local ApiFetchGameThumbnails = require(CorePackages.AppTempCommon.LuaApp.Thunks.ApiFetchGameThumbnails)
local Functional = require(CorePackages.AppTempCommon.Common.Functional)
local GamesMultigetPlaceDetails = require(CorePackages.AppTempCommon.LuaApp.Http.Requests.GamesMultigetPlaceDetails)
local PlaceInfoModel = require(CorePackages.AppTempCommon.LuaChat.Models.PlaceInfoModel)
local ReceivedPlacesInfos = require(CorePackages.AppTempCommon.LuaApp.Actions.ReceivedPlacesInfos)

return function(networkImpl, placeIds)
	return function(store)
		if not placeIds or #placeIds == 0 then
			return
		end

		return GamesMultigetPlaceDetails(networkImpl, placeIds):andThen(function(result)
			local data = result.responseBody

			local imageTokens = {}
			local placeInfos = Functional.Map(data, function(placeInfoData)
				local placeInfo =  PlaceInfoModel.fromWeb(placeInfoData)

				local universePlaceInfos = store:getState().UniversePlaceInfos
				local universeId = placeInfo.universeRootPlaceId
				if not universePlaceInfos[universeId] or placeInfo.imageToken ~= universePlaceInfos[universeId].imageToken then
					table.insert(imageTokens, placeInfo.imageToken)
				end

				return placeInfo
			end)

			store:dispatch(ReceivedPlacesInfos(placeInfos))

			if #imageTokens > 0 then
				store:dispatch(ApiFetchGameThumbnails(networkImpl, imageTokens))
			end

			return placeInfos
		end)
	end
end