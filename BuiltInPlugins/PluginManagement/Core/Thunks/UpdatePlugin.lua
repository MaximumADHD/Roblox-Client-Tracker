local StudioService = game:GetService("StudioService")

return function(plugin)
	return function(store)
		local assetId = plugin.assetId
		local latestVersion = plugin.latestVersion
		StudioService:TryInstallPlugin(assetId, latestVersion)
	end
end