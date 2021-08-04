local Plugin = script.Parent.Parent.Parent.Parent
local FFlagCheckPublishedPlaceExistsForDevPublish = game:GetFastFlag("CheckPublishedPlaceExistsForDevPublish")

local Promise = require(Plugin.Framework).Util.Promise

local PlacesController = {}

PlacesController.__index = PlacesController

function PlacesController.new(networking)
    local self = {}

    self.__networking = networking

    return setmetatable(self, PlacesController)
end

function PlacesController:placesV2GET(gameId, params)
    local networking = self.__networking
    return networking:get("develop", "/v2/universes/" .. gameId .. "/places", {
        Params = params
    })
end

function PlacesController:placesV2PATCH(placeId, placeInfo)
    local networking = self.__networking
    return networking:patch("develop", "/v2/places/" .. placeId, {
        Body = placeInfo,
    })
end

function PlacesController:getPlaces(gameId, cursor, index)
    local places = {}
    local order = index == nil and 1 or (index + 1)

    local params = {
        limit = 10,
        sortOrder = "Asc",
        cursor = cursor,
        extendedSettings = true,
    }

    return Promise.resolve(self:placesV2GET(gameId, params))
    :andThen(function(response)
        local body = response.responseBody

        for _, place in pairs(body.data) do
            place.index = order
            places[place.id] = place
            order  = order  + 1
        end

        local cursor = body.nextPageCursor
        if cursor == nil then
            cursor = ""
        end

        return places, cursor, order
    end)
end

function PlacesController:setName(placeId, name)
    self:placesV2PATCH(placeId, {name = name}):await()
end

function PlacesController:setMaxPlayerCount(placeId, maxPlayerCount)
    self:placesV2PATCH(placeId, {maxPlayerCount = maxPlayerCount}):await()
end

function PlacesController:setAllowCopying(placeId, allowCopying)
    self:placesV2PATCH(placeId, {allowCopying = allowCopying}):await()
end

function PlacesController:setSocialSlotType(placeId, socialSlotType)
    self:placesV2PATCH(placeId, {socialSlotType = socialSlotType}):await()
end

function PlacesController:setCustomSocialSlotsCount(placeId, customSocialSlotsCount)
    self:placesV2PATCH(placeId, {customSocialSlotsCount = customSocialSlotsCount}):await()
end

function PlacesController:assetPublishVersionV1GET(placeId)
    assert(FFlagCheckPublishedPlaceExistsForDevPublish)
	local networking = self.__networking

	return networking:get("develop", "/v1/assets/"..placeId.."/published-versions")
end

function PlacesController:getAssetPublishedVersions(placeId)
    assert(FFlagCheckPublishedPlaceExistsForDevPublish)
	local response = self:assetPublishVersionV1GET(placeId):await()
	return response.responseBody
end

return PlacesController