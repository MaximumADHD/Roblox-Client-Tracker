local Plugin = script.Parent.Parent.Parent

local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

-- [[ Plugin Info : Stores metadata about the plugin we are trying to install. ]]
return Rodux.createReducer({
	pluginId = nil,
},{

	--[[ A temporary action to fire to signal that we have a plugin with information to show ]]
	SetPluginId = function(state, action)
		return Cryo.Dictionary.join(state, {
			pluginId = action.pluginId,
		})
	end,

	--[[ A temporary action to clear out any data we've previously shown ]]
	ClearPluginData = function(_, _)
		return {}
	end,
})