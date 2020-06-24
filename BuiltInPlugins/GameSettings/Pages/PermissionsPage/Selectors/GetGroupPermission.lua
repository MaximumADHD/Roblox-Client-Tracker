local Page = script.Parent.Parent
local PermissionsConstants = require(Page.Util.PermissionsConstants)

local GetGroupRolesets = require(Page.Selectors.GetGroupRolesets)

return function(state, groupId)
	local permissions = state.Settings.Changed.permissions or state.Settings.Current.permissions
	local groupRolesets = GetGroupRolesets(state, groupId)

	local groupPermission = nil
	for _,rolesetId in ipairs(groupRolesets) do
		local rolesetPermission = permissions[PermissionsConstants.RoleSubjectKey][rolesetId]
		local permission = rolesetPermission[PermissionsConstants.ActionKey]

		if groupPermission == nil then
			groupPermission = permission
		elseif groupPermission ~= permission then
			groupPermission = PermissionsConstants.MultipleKey
			break
		end
	end

	return groupPermission
end