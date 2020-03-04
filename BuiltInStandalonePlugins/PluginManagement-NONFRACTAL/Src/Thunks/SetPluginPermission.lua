local Plugin = script.Parent.Parent.Parent

local GetAllPluginPermissions = require(Plugin.Src.Thunks.GetAllPluginPermissions)

-- permissionsServiceImpl : (PermissionsService)
-- apiImpl : (Http.API)
-- assetId : (number)
-- permission : (table - PermissionInfo)
return function(permissionsServiceImpl, apiImpl, assetId, permission)
	return function(store)

		local assetPermissions = permissionsServiceImpl:GetPermissions(assetId)
		assetPermissions[permission.index] = {
			Type = permission.type,
			Data = {
				Allowed = (not permission.allowed),
				Domain = permission.data.domain,
			},
		}

		permissionsServiceImpl:SetPermissions(assetId, assetPermissions)
		store:dispatch(GetAllPluginPermissions(permissionsServiceImpl, apiImpl))
	end
end
