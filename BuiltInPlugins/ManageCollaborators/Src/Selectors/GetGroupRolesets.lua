local Plugin = script.Parent.Parent.Parent
local PermissionsConstants = require(Plugin.Src.Util.PermissionsConstants)

return function(state, groupId)
	local permissions = state.Permissions.NewPermissions or state.Permissions.CurrentPermissions
	local permissionsRolesets = permissions[PermissionsConstants.RoleSubjectKey]

	local rolesets = {}
	for rolesetId, permission in pairs(permissionsRolesets) do
		local rolesetGroup = permission[PermissionsConstants.GroupIdKey]
		local rolesetRank = permission[PermissionsConstants.SubjectRankKey]

		if groupId == rolesetGroup then
			table.insert(rolesets, {Rank = rolesetRank, Id = rolesetId})
		end
	end

	table.sort(rolesets, function(a,b)
		return a.Rank > b.Rank
	end)

	local returnedRolesetIds = {}
	for _, roleset in ipairs(rolesets) do
		table.insert(returnedRolesetIds, roleset.Id)
	end

	return returnedRolesetIds
end
