local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local Rodux = require(Plugin.Packages.Rodux)
local Flags = require(Plugin.Packages.Framework.Util.Flags)
local FlagsList = Flags.new({
	FFlagPluginManagementFixRemovePlugins = { "PluginManagementFixRemovePlugins" },
})

local function setPluginValues(state, assetId, values)
	local newPlugins = {}
	for id, entry in pairs(state.plugins) do
		if id == assetId then
			newPlugins[id] = Cryo.Dictionary.join(entry, values)
		end
	end
	return Cryo.Dictionary.join(state, {
		plugins = Cryo.Dictionary.join(state.plugins, newPlugins),
	})
end

return Rodux.createReducer({
	plugins = nil,
}, {
	--[[ fired when the request to fetch plugin data fails and we need to clear out any bad state ]]
	ClearPluginData = not FlagsList:get("FFlagPluginManagementFixRemovePlugins") and function(state, _)
		return Cryo.Dictionary.join(state, {
			plugins = Cryo.None,
		})
	end or nil,

	--[[ fired when the request to fetch plugin data fails and we need to clear out any bad state ]]
	ClearAllPluginData = FlagsList:get("FFlagPluginManagementFixRemovePlugins") and function(state, _)
		return Cryo.Dictionary.join(state, {
			plugins = Cryo.None,
		})
	end or nil,

	--[[ fired when uninstalling a plugin ]]
	RemovePluginData = FlagsList:get("FFlagPluginManagementFixRemovePlugins") and function(state, action)
		return Cryo.Dictionary.join(state, {
			plugins =  Cryo.Dictionary.join(state.plugins or {}, {
				[action.pluginId] = Cryo.None,
			}),
		})
	end or nil,

	--[[ Allows data to be loaded as it comes in from the network ]]
	SetLoadedPluginData = function(state, action)
		return Cryo.Dictionary.join(state, {
			plugins = Cryo.Dictionary.join(state.plugins or {}, action.pluginData),
		})
	end,

	--[[ fired an installed plugin is toggled enabled / disabled ]]
	SetPluginEnabledState = function(state, action)
		return setPluginValues(state, action.assetId, {
			enabled = action.enabled,
		})
	end,

	--[[ fired to reflect how up-to-date an installed plugin in ]]
	SetPluginUpdateStatus = function(state, action)
		return setPluginValues(state, action.assetId, {
			status = action.status or Cryo.None,
		})
	end,
})