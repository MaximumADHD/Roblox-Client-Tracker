local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local MaterialBrowserReducer = require(Plugin.Src.Reducers.MaterialBrowserReducer)

export type State = {
	MaterialBrowserReducer : MaterialBrowserReducer.State,
}

return (Rodux.combineReducers({
	MaterialBrowserReducer = MaterialBrowserReducer,
}))
