local Plugin = script.Parent.Parent.Parent
local PermissionsConstants = require(Plugin.Src.Util.PermissionsConstants)

return function(state, rolesetId)
	local ownerId = state.GameOwnerMetadata.creatorId
	local ownerType = state.GameOwnerMetadata.creatorType

	local permissions = state.Permissions.NewPermissions or state.Permissions.CurrentPermissions
	local rolesetPermission = permissions[PermissionsConstants.RoleSubjectKey][rolesetId]
	local groupId = rolesetPermission[PermissionsConstants.GroupIdKey]
	local rank = rolesetPermission[PermissionsConstants.SubjectRankKey]

	return ownerType == Enum.CreatorType.Group and ownerId == groupId and rank == 255
end
