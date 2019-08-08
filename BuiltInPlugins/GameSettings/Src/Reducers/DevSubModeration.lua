if not settings():GetFFlag("DeveloperSubscriptionsEnabled") then return nil end

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Cryo)

local ModerationAction = require(Plugin.Src.Actions.DevSubModeration)

local function DevSubModeration(state, action)
    state = state or {}

    if action.type == ModerationAction.name then
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
    end

    return state
end

return DevSubModeration