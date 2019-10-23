local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Cryo = require(Libs.Cryo)
local Rodux = require(Libs.Rodux)

local Actions = Plugin.Core.Actions
local SetPluginInfo = require(Actions.SetPluginInfo)
local SetPluginEnabledState = require(Actions.SetPluginEnabledState)

return Rodux.createReducer({
	plugins = {}
}, {
	[SetPluginInfo.name] = function(state, action)
		local pluginTab = action.plugins
		local dataTab = action.data

		local resultTab = {}
		for _, entry in pairs(dataTab) do
			resultTab[entry.id] = {
				assetId = entry.id,
				name = entry.name,
				description = entry.description,
				latestVersion = entry.versionId,
				updated = entry.updated,
			}
		end

		for _, entry in pairs(pluginTab) do
			if resultTab[entry.assetId] then
				resultTab[entry.assetId].enabled = entry.enabled
				resultTab[entry.assetId].installedVersion = entry.installedVersion

				local productInfo = game.MarketplaceService:GetProductInfo(entry.assetId)
				if productInfo then
					resultTab[entry.assetId].creator = productInfo.Creator.Name
				end
			end
		end

		return Cryo.Dictionary.join(state, {
			plugins = resultTab,
		})
	end,

	[SetPluginEnabledState.name] = function(state, action)
		local newPlugins = {}
		for id, entry in pairs(state.plugins) do
			if id == action.assetId then
				newPlugins[id] = Cryo.Dictionary.join(entry, {
					enabled = action.enabled,
				})
			end
		end
		return Cryo.Dictionary.join(state, {
			plugins = Cryo.Dictionary.join(state.plugins, newPlugins),
		})
	end
})