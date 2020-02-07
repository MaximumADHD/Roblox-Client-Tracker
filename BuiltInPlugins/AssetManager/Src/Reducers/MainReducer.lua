local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local Screen = require(Plugin.Src.Reducers.Screen)

local MainReducer = Rodux.combineReducers({
    Screen = Screen,
})

return MainReducer