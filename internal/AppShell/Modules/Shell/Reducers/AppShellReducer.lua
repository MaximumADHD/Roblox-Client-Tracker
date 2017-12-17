-- main AppShell reducer
local Reducers = script.Parent

local ActiveUser = require(Reducers.ActiveUser)

return function(state, action)
    state = state or {}

    return {
        -- Use reducer composition to add reducers here
        ActiveUser = ActiveUser(state.ActiveUser, action),
    }
end
