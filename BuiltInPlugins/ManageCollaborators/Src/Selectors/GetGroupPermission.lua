local Plugin = script.Parent.Parent.Parent
local PermissionsConstants = require(Plugin.Src.Util.PermissionsConstants)

return function(state, groupId)
	local permissions = state.Permissions.NewPermissions or state.Permissions.CurrentPermissions

	local allPlay = true
	local allNoAccess = true
	for _, rolesetData in pairs(permissions[PermissionsConstants.RoleSubjectKey]) do
		if rolesetData[PermissionsConstants.ActionKey] ~= PermissionsConstants.PlayKey and rolesetData[PermissionsConstants.GroupIdKey] == groupId then
			allPlay = false
		end
		if rolesetData[PermissionsConstants.ActionKey] ~= PermissionsConstants.NoAccessKey and rolesetData[PermissionsConstants.GroupIdKey] == groupId then
			allNoAccess = false
		end
	end

	if allPlay then
		return PermissionsConstants.PlayKey
	elseif allNoAccess then
		return PermissionsConstants.NoAccessKey
	else
		return PermissionsConstants.MultipleKey
	end
end
