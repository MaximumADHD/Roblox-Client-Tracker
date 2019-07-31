local CorePackages = game:GetService("CorePackages")

local ApiFetchGameThumbnails = require(CorePackages.AppTempCommon.LuaApp.Thunks.ApiFetchGameThumbnails)
local ApiFetchGameIcons = require(CorePackages.AppTempCommon.LuaApp.Thunks.ApiFetchGameIcons)
local Functional = require(CorePackages.AppTempCommon.Common.Functional)
local GamesMultigetPlaceDetails = require(CorePackages.AppTempCommon.LuaApp.Http.Requests.GamesMultigetPlaceDetails)
local PlaceInfoModel = require(CorePackages.AppTempCommon.LuaChat.Models.PlaceInfoModel)
local ReceivedPlacesInfos = require(CorePackages.AppTempCommon.LuaApp.Actions.ReceivedPlacesInfos)

local LuaAppFlags = CorePackages.AppTempCommon.LuaApp.Flags
local convertUniverseIdToString = require(LuaAppFlags.ConvertUniverseIdToString)
local UseNewThumbnailsAPI = require(LuaAppFlags.UseNewThumbnailsAPI)

return function(networkImpl, placeIds)
	return function(store)
		if not placeIds or #placeIds == 0 then
			return
		end

		return GamesMultigetPlaceDetails(networkImpl, placeIds):andThen(function(result)
			local data = result.responseBody

			local imageTokens = {}
			local thumbnailUniverseIds = {}
			local placeInfos = Functional.Map(data, function(placeInfoData)
				local placeInfo =  PlaceInfoModel.fromWeb(placeInfoData)
				local universePlaceInfos = store:getState().UniversePlaceInfos
				local universeId = convertUniverseIdToString(placeInfo.universeId)

				if UseNewThumbnailsAPI() then
					table.insert(thumbnailUniverseIds, universeId)
				else
					if not universePlaceInfos[universeId] or placeInfo.imageToken ~= universePlaceInfos[universeId].imageToken then
						table.insert(imageTokens, placeInfo.imageToken)
					end
				end
				return placeInfo
			end)

			store:dispatch(ReceivedPlacesInfos(placeInfos))

			if UseNewThumbnailsAPI() then
				if #thumbnailUniverseIds > 0 then
					store:dispatch(ApiFetchGameIcons(networkImpl, thumbnailUniverseIds))
				end
			else
				if #imageTokens > 0 then
					store:dispatch(ApiFetchGameThumbnails(networkImpl, imageTokens))
				end
			end

			return placeInfos
		end)
	end
end