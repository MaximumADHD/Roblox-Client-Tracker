local Plugin = script.Parent.Parent.Parent.Parent
local UILibrary = require(Plugin.UILibrary)

local deepJoin = UILibrary.Util.deepJoin

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