local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local AssetConfigReducer = require(Plugin.Src.Reducers.AssetConfigReducer)
local NetworkReducer = require(Plugin.Src.Reducers.NetworkReducer)
local GroupReducer = require(Plugin.Src.Reducers.GroupReducer)


local MainReducer = Rodux.combineReducers({
	AssetConfigReducer = AssetConfigReducer,
	GroupReducer = GroupReducer,
	NetworkReducer = NetworkReducer
})

return MainReducer