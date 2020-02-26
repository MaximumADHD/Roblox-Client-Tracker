local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local AssetManagerReducer = require(Plugin.Src.Reducers.AssetManagerReducer)
local Screen = require(Plugin.Src.Reducers.Screen)

local MainReducer = Rodux.combineReducers({
    AssetManagerReducer = AssetManagerReducer,
    Screen = Screen,
})

return MainReducer