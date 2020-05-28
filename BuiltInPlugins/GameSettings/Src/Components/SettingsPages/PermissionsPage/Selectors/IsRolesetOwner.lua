local Page = script.Parent.Parent
local PermissionsConstants = require(Page.Util.PermissionsConstants)

return function(state, rolesetId)
	local ownerId = state.GameOwnerMetadata.creatorId
	local ownerType = state.GameOwnerMetadata.creatorType

	local permissions = state.Settings.Changed.permissions or state.Settings.Current.permissions
	local rolesetPermission = permissions[PermissionsConstants.RoleSubjectKey][rolesetId]
	local groupId = rolesetPermission[PermissionsConstants.GroupIdKey]
	local rank = rolesetPermission[PermissionsConstants.SubjectRankKey]

	return ownerType == Enum.CreatorType.Group and ownerId == groupId and rank == 255
end