local root = script.Parent.Parent
local FFlagAvatarImporterDeduplicatePackages = game:GetFastFlag("AvatarImporterDeduplicatePackages")
-- imports
local Rodux = if FFlagAvatarImporterDeduplicatePackages then require(root.Packages.Rodux) else require(root.Packages._Old.lib.Rodux)
local PluginReducer = require(root.src.reducers.PluginReducer)
local ErrorReducer = require(root.src.reducers.ErrorReducer)

return Rodux.combineReducers({
	plugin = PluginReducer,
	error = ErrorReducer,
})