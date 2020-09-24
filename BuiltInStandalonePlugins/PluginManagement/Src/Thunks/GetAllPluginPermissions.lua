local FFlagPluginManagementSkipInvalidAssetIds = game:GetFastFlag("PluginManagementSkipInvalidAssetIds")

local Plugin = script.Parent.Parent.Parent

local StudioService = game:GetService("StudioService")

local SetAllPluginPermissions = require(Plugin.Src.Actions.SetAllPluginPermissions)
local extractPluginsFromJsonString = require(Plugin.Src.Util.extractPluginsFromJsonString)

-- permissionsServiceImpl : (PermissionsService)
-- apiImpl : (Http.API)
return function(permissionsServiceImpl, apiImpl)
	return function(store)
		local plugins = extractPluginsFromJsonString(StudioService.InstalledPluginData)
		local permissions = {}
		for _, data in pairs(plugins) do
			local assetId = tonumber(data.assetId)

			if FFlagPluginManagementSkipInvalidAssetIds and assetId == nil then
				warn("assetId is nil for installedPlugin", data.assetId)
			else
				permissions[assetId] = permissionsServiceImpl:GetPermissions(assetId)
			end
		end
		store:dispatch(SetAllPluginPermissions(permissions))
	end
end
