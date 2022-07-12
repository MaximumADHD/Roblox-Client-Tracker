local Plugin = script.Parent.Parent.Parent
local PermissionsConstants = require(Plugin.Src.Util.PermissionsConstants)

return function(state, rolesetId)
	local permissions = state.Permissions.NewPermissions or state.Permissions.CurrentPermissions
	local rolesetPermission = permissions[PermissionsConstants.RoleSubjectKey][rolesetId]

	return rolesetPermission[PermissionsConstants.SubjectNameKey]
end
