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
			local assetIdValue = tonumber(data.assetId)

			if assetIdValue == nil then
				warn("assetId is nil or non-numeric for installedPlugin", data.assetId)
			else
				permissions[assetIdValue] = permissionsServiceImpl:GetPermissions(assetIdValue)
			end
		end
		store:dispatch(SetAllPluginPermissions(permissions))
	end
end
