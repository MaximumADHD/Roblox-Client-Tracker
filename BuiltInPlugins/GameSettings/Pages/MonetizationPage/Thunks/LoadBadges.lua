--[[
	Called on scroll to load more Badges
]]
local FFlagStudioEnableBadgesInMonetizationPage = game:GetFastFlag("StudioEnableBadgesInMonetizationPage")

local Plugin = script.Parent.Parent.Parent.Parent
local Cryo = require(Plugin.Cryo)
local SetCurrentSettings = require(Plugin.Src.Actions.SetCurrentSettings)

return function()
    assert(FFlagStudioEnableBadgesInMonetizationPage)

    return function(store, contextItems)
        local state = store:getState()
        local gameId = state.Metadata.gameId
        local currentCursor = state.Settings.Current.badgesCursor

        if currentCursor == nil then
            return
        end

        local monetizationController = contextItems.monetizationController

        local badges, cursor = monetizationController:getBadges(gameId, currentCursor)

        local settings = state.Settings.Current
        local currentBadges = state.Settings.Current.badges and state.Settings.Current.badges or {}

        settings = Cryo.Dictionary.join(settings, {
            badgesCursor = cursor,
            badges = Cryo.Dictionary.join(currentBadges, badges),
        })

        store:dispatch(SetCurrentSettings(settings))
    end
end
