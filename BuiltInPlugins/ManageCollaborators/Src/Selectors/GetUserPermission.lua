local Plugin = script.Parent.Parent.Parent
local PermissionsConstants = require(Plugin.Src.Util.PermissionsConstants)

return function(state, userId)
	local permissions = state.Permissions.NewPermissions or state.Permissions.CurrentPermissions
	local userPermission = permissions[PermissionsConstants.UserSubjectKey][userId]

	return userPermission[PermissionsConstants.ActionKey]
end
