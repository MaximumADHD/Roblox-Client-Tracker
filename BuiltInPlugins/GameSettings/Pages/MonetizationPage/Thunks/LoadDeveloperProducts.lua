--[[
	Called on scroll to load more Developer Products
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Cryo = require(Plugin.Cryo)

local SetCurrentSettings = require(Plugin.Src.Actions.SetCurrentSettings)

return function()
    return function(store, contextItems)
        local state = store:getState()
        local gameId = state.Metadata.gameId
        local currentCursor = state.Settings.Current.devProductsCursor

        if currentCursor == nil then
            return
        end

        local monetizationController = contextItems.monetizationController

        local devProducts, cursor = monetizationController:getDeveloperProducts(gameId, currentCursor)

        local settings = state.Settings.Current
        local currentDPs = state.Settings.Current.developerProducts and state.Settings.Current.developerProducts or {}

        settings = Cryo.Dictionary.join(settings, {
            devProductsCursor = cursor,
            developerProducts = Cryo.Dictionary.join(currentDPs, devProducts),
        })

    store:dispatch(SetCurrentSettings(settings))
	end
end
