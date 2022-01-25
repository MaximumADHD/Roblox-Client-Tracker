local FFlagPluginManagementRemoveCommentsEnabled = game:GetFastFlag("PluginManagementRemoveCommentsEnabled")

local Plugin = script.Parent.Parent.Parent

local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)
local PluginInstalledStatus = require(Plugin.Src.Constants.PluginInstalledStatus)

-- [[ Plugin Info : Stores metadata about the plugin we are trying to install. ]]
return Rodux.createReducer({
	-- plugins : map<string pluginId, table pluginData>
	-- pluginData :
	--  - installStatus : number
	--  - installationMsg : string
	--  - installProgress : number
	--  - name = string
	--	- description = string
	--	- versionId = string
	--	- created = string
	--	- updated = string
	plugins = {},
},{

	--[[ Initializes a plugin entry ]]
	SetPluginId = function(state, action)
		local commentsEnabled = if FFlagPluginManagementRemoveCommentsEnabled then nil else false

		return Cryo.Dictionary.join(state, {
			plugins = Cryo.Dictionary.join(state.plugins, {
				[action.pluginId] = {
					installStatus = PluginInstalledStatus.UNKNOWN,
					installationMsg = "",
					installProgress = 0.0,
					name = "",
					description = "",
					commentsEnabled = commentsEnabled,
					versionId = "",
					created = "",
					updated = "",
				}
			})
		})
	end,

	--[[ Clears out any data for a specific plugin ]]
	ClearPluginData = function(state, action)
		-- if there's no data for this plugin, no big deal
		if not state.plugins[action.pluginId] then
			return state
		end

		return Cryo.Dictionary.join(state, {
			plugins = Cryo.Dictionary.join(state.plugins, {
				[action.pluginId] = Cryo.None
			})
		})
	end,

	--[[ Updates an existing plugin entry with metadata about the plugin ]]
	DEPRECATED_SetPluginMetadata = function(state, action)
		assert(state.plugins[action.pluginId], string.format("No plugin entry found for %s", action.pluginId))

		return Cryo.Dictionary.join(state, {
			plugins = Cryo.Dictionary.join(state.plugins, {
				[action.pluginId] = Cryo.Dictionary.join(state.plugins[action.pluginId], {
					name = action.name,
					description = action.description,
					commentsEnabled = action.commentsEnabled,
					versionId = action.versionId,
					created = action.created,
					updated = action.updated,
				})
			})
		})
	end,

	SetPluginMetadata = function(state, action)
		assert(state.plugins[action.pluginId], string.format("No plugin entry found for %s", action.pluginId))

		return Cryo.Dictionary.join(state, {
			plugins = Cryo.Dictionary.join(state.plugins, {
				[action.pluginId] = Cryo.Dictionary.join(state.plugins[action.pluginId], {
					name = action.name,
					description = action.description,
					versionId = action.versionId,
					created = action.created,
					updated = action.updated,
				})
			})
		})
	end,

	--[[ Updates an existing plugin entry with success/failure information regarding installation ]]
	SetPluginInstallStatus = function(state, action)
		assert(state.plugins[action.pluginId], string.format("No plugin entry found for %s", action.pluginId))

		return Cryo.Dictionary.join(state, {
			plugins = Cryo.Dictionary.join(state.plugins, {
				[action.pluginId] = Cryo.Dictionary.join(state.plugins[action.pluginId], {
					installStatus = action.statusCode,
					installationMsg = action.message,
				})
			})
		})
	end,
})
