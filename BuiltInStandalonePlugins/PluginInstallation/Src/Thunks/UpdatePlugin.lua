local Plugin = script.Parent.Parent.Parent
local StudioService = game:GetService("StudioService")
local UpdateStatus = require(Plugin.Src.Util.UpdateStatus)
local SetPluginUpdateStatus = require(Plugin.Src.Actions.SetPluginUpdateStatus)

return function(plugin)
	return function(store)
		local assetId = plugin.assetId
		local latestVersion = plugin.latestVersion
		store:dispatch(SetPluginUpdateStatus(assetId, UpdateStatus.Updating))
		local success = pcall(function()
			StudioService:TryInstallPlugin(assetId, latestVersion)
		end)
		if success then
			store:dispatch(SetPluginUpdateStatus(assetId, UpdateStatus.Success))
		else
			store:dispatch(SetPluginUpdateStatus(assetId, UpdateStatus.Error))
		end
	end
end