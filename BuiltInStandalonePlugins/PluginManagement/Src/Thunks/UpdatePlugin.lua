local FFlagPluginManagementAnalytics = game:GetFastFlag("PluginManagementAnalytics")

local Plugin = script.Parent.Parent.Parent
local StudioService = game:GetService("StudioService")
local UpdateStatus = require(Plugin.Src.Util.UpdateStatus)
local SetPluginUpdateStatus = require(Plugin.Src.Actions.SetPluginUpdateStatus)

return function(plugin, analytics)
	return function(store)
		local assetId = plugin.assetId
		local latestVersion = plugin.latestVersion
		store:dispatch(SetPluginUpdateStatus(assetId, UpdateStatus.Updating))
		local success = pcall(function()
			StudioService:TryInstallPlugin(assetId, latestVersion)
		end)
		if success then
			if FFlagPluginManagementAnalytics then
				analytics:report("UpdatePluginSuccess", assetId)
			end
			store:dispatch(SetPluginUpdateStatus(assetId, UpdateStatus.Success))
		else
			if FFlagPluginManagementAnalytics then
				analytics:report("UpdatePluginFailure", assetId)
			end
			store:dispatch(SetPluginUpdateStatus(assetId, UpdateStatus.Error))
		end
	end
end