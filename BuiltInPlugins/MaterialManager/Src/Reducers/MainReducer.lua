local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local MaterialBrowserReducer = require(Plugin.Src.Reducers.MaterialBrowserReducer)
local MaterialPromptReducer = require(Plugin.Src.Reducers.MaterialPromptReducer)

export type State = {
	MaterialBrowserReducer : MaterialBrowserReducer.State,
	MaterialPromptReducer : MaterialPromptReducer.State,
}

return (Rodux.combineReducers({
	MaterialBrowserReducer = MaterialBrowserReducer,
	MaterialPromptReducer = MaterialPromptReducer,
}))
