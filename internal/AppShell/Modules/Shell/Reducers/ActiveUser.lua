local Modules = game:GetService("CoreGui").RobloxGui.Modules

local ActionType = require(Modules.Shell.Actions.ActionType)
local Immutable = require(Modules.Common.Immutable)

return function(state, action)
    state = state or {}

    if action.type == ActionType.SetUnder13Status then
        state = Immutable.Set(state, "Under13", action.status)
    end

    return state
end
