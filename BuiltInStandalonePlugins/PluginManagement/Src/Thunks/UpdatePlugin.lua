local Plugin = script.Parent.Parent.Parent
local StudioService = game:GetService("StudioService")
local UpdateStatus = require(Plugin.Src.Util.UpdateStatus)
local SetPluginUpdateStatus = require(Plugin.Src.Actions.SetPluginUpdateStatus)

local FFlagStudioProperlyHandleDisabledPluginUpdates = settings():GetFFlag("StudioProperlyHandleDisabledPluginUpdates")

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
			if not FFlagStudioProperlyHandleDisabledPluginUpdates and not plugin.enabled then
				-- Don't trigger changing this value now that the C++ handles disabled updates properly.
				StudioService:SetPluginEnabled(assetId, plugin.enabled)
			end
		else
			store:dispatch(SetPluginUpdateStatus(assetId, UpdateStatus.Error))
		end
	end
end