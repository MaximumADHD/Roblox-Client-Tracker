local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Cryo)
local Rodux = require(Plugin.Rodux)

local DEFAULT_STATE = {}

return Rodux.createReducer(DEFAULT_STATE, {
    ResetStore = function(state, action)
        return DEFAULT_STATE
    end,

    ModerationAction = function(state, action)
        if action.isAcceptable then
            return Cryo.Dictionary.join(state, {
                [action.key] = Cryo.None
            })
        else
            return Cryo.Dictionary.join(state, {
                [action.key] = {
                    isAcceptable = action.isAcceptable,
                    filteredName = action.filteredName,
                    filteredDescription = action.filteredDescription
                }
            })
        end
    end,
})