local Plugin = script.Parent.Parent.Parent
local StudioService = game:GetService("StudioService")
local MultiGetPluginInfoRequest = require(Plugin.Src.Thunks.MultiGetPluginInfoRequest)
local SetLoadedPluginData = require(Plugin.Src.Actions.SetLoadedPluginData)
local extractPluginsFromJsonString = require(Plugin.Src.Util.extractPluginsFromJsonString)

return function(apiImpl, marketplaceService)
	return function(store)
		local plugins = extractPluginsFromJsonString(StudioService.InstalledPluginData)
		local assetIds = {}
		for index, data in pairs(plugins) do
			local assetIdValue = tonumber(data.assetId)

			if assetIdValue == nil then
				warn("assetId is nil or non-numeric for installedPlugin on refresh", data.assetId)
				plugins[index] = nil
			else
				plugins[index].assetId = assetIdValue
				assetIds[#assetIds+1] = data.assetId
			end
		end

		if #assetIds > 0 then
			store:dispatch(MultiGetPluginInfoRequest(apiImpl, marketplaceService, assetIds, plugins))
		else
			store:dispatch(SetLoadedPluginData({}))
		end
	end
end