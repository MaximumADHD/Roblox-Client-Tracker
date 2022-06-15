local root = script.Parent.Parent

-- imports
local Rodux = require(root.Packages.Rodux)
local PluginReducer = require(root.src.reducers.PluginReducer)
local ErrorReducer = require(root.src.reducers.ErrorReducer)

return Rodux.combineReducers({
	plugin = PluginReducer,
	error = ErrorReducer,
})