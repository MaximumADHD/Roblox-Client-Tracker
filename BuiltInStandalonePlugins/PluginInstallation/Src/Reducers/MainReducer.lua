local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local PluginInfo = require(Plugin.Src.Reducers.PluginInfo)

local MainReducer = Rodux.combineReducers({
	PluginInfo = PluginInfo,
})

return MainReducer