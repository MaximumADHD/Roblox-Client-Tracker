local Plugin = script.Parent.Parent.Parent.Parent
-- TODO: jbousellam - remove with FFlagRemoveUILibraryDeepJoin
local UILibrary = require(Plugin.Packages.UILibrary)

local FFlagRemoveUILibraryDeepJoin = game:GetFastFlag("RemoveUILibraryDeepJoin")
local deepJoin = if FFlagRemoveUILibraryDeepJoin then require(Plugin.Packages.Framework).Util.deepJoin else UILibrary.Util.deepJoin

local AddErrors = require(Plugin.Src.Actions.AddErrors)

return function(devSubId, key, value)
    return function(store, contextItems)
        local state = store:getState()

        local oldErrors = state.Settings.Errors.DeveloperSubscriptions or {}
        local newErrors = deepJoin(oldErrors, {
            [devSubId] = {
                [key] = value,
            }
        })

        store:dispatch(AddErrors({DeveloperSubscriptions = newErrors}))
    end
end