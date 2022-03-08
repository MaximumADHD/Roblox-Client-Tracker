local Plugin = script.Parent.Parent.Parent
local webKeys = require(Plugin.Core.Util.Permissions.Constants).webKeys

local PermissionTypes = require(Plugin.Core.Types.PermissionTypes)

local AssetPermissionUtil = {}

function AssetPermissionUtil.isAssetPublic(assetPermissions : PermissionTypes.PermissionResultList)
	local isPublic = false
	if assetPermissions then
		for _, webItem in pairs(assetPermissions) do
			if webItem[webKeys.SubjectType] == webKeys.All
			and webItem[webKeys.Action] == webKeys.UseAction
			then
				isPublic = true
				break
			end
		end
	end
	return isPublic
end

return AssetPermissionUtil