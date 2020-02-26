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
			permissions[assetId] = permissionsServiceImpl:GetPermissions(assetId)
		end
		store:dispatch(SetAllPluginPermissions(permissions))
	end
end
