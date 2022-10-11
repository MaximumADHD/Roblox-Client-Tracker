local Plugin = script.Parent.Parent.Parent
local PermissionsConstants = require(Plugin.Src.Util.PermissionsConstants)

return function(state)
	local currentPermissions = state.Permissions.CurrentPermissions
	local permissionsUsers = currentPermissions[PermissionsConstants.UserSubjectKey] or {}
		
	for _, permission in permissionsUsers do
		if permission[PermissionsConstants.ActionKey] == PermissionsConstants.EditKey and permission[PermissionsConstants.SubjectIdKey] ~= state.GameOwnerMetadata.creatorId then
			return true
		end
	end
	
	return false
end
