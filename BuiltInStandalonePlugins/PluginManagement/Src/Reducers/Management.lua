local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local Rodux = require(Plugin.Packages.Rodux)
local cleanTimestamp = require(Plugin.Src.Util.cleanTimestamp)
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

	--[[ fired when the network request returns with information about a specific plugin ]]
	SetPluginInfo = function(state, action)
		-- FFlagPluginManagementAllowLotsOfPlugins TODO : Remove this handler when cleaning up this flag
		local pluginTab = action.plugins or {}
		local dataTab = action.data or {}

		local resultTab = {}
		for _, entry in pairs(dataTab) do
			resultTab[entry.id] = {
				assetId = entry.id,
				name = entry.name,
				description = entry.description,
				latestVersion = entry.versionId,
				updated = cleanTimestamp(entry.updated),
			}
		end

		for _, entry in pairs(pluginTab) do
			if resultTab[entry.assetId] then
				resultTab[entry.assetId].enabled = entry.enabled
				resultTab[entry.assetId].installedVersion = entry.installedVersion
				resultTab[entry.assetId].isModerated = entry.isModerated

				local productInfo = game.MarketplaceService:GetProductInfo(entry.assetId)
				if productInfo then
					resultTab[entry.assetId].creator = productInfo.Creator
				end
			end
		end

		return Cryo.Dictionary.join(state, {
			plugins = resultTab,
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