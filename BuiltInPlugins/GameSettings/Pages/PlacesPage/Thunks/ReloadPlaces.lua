--[[
	Called when reloading places tab after create new place button
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Cryo = require(Plugin.Cryo)
local Promise = require(Plugin.Framework).Util.Promise

local SetCurrentSettings = require(Plugin.Src.Actions.SetCurrentSettings)

return function(forceReload)
    return function(store, contextItems)
        local state = store:getState()
        local gameId = state.Metadata.gameId
        local placesIndex = state.Settings.Current.placesIndex
        local placesCursor = state.Settings.Current.placesPageCursor
        local placesController = contextItems.placesController

        if placesCursor == "" and not forceReload then
            return
        end

        return Promise.resolve(placesController:getPlaces(gameId, placesCursor, placesIndex))
        :andThen(function(places, cursor, index)
            if places then
                local settings = state.Settings.Current
                local currentPlaces = state.Settings.Current.places and state.Settings.Current.places or {}

                settings = Cryo.Dictionary.join(settings, {
                    placesPageCursor = cursor,
                    places = Cryo.Dictionary.join(currentPlaces, places),
                    placesIndex = index,
                })

                store:dispatch(SetCurrentSettings(settings))
            end
        end)
	end
end
