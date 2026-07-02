local root = script:FindFirstAncestor("root")

-- imports
local Rodux = require(root.Packages.Rodux)
local PluginReducer = require(root.src.Reducers.PluginReducer)

return Rodux.combineReducers({
	plugin = PluginReducer,
})
