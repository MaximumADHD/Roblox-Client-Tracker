local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local Rodux = require(Plugin.Packages.Rodux)

-- Removes decimal points from timestamps,
-- which make them incompatible with localization.
local function cleanTimestamp(timestamp)
	local index = timestamp:find("%.")
	if index then
		return timestamp:sub(1, index - 1) .. "Z"
	else
		return timestamp
	end
end

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
	--[[ fired when the network request returns with information about a specific plugin ]]
	SetPluginInfo = function(state, action)
		local pluginTab = action.plugins
		local dataTab = action.data

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