local Page = script.Parent.Parent
local PermissionsConstants = require(Page.Util.PermissionsConstants)

local GetGroupRolesets = require(Page.Selectors.GetGroupRolesets)

local FFlagStudioUXImprovementsLoosenTCPermissions = game:GetFastFlag("StudioUXImprovementsLoosenTCPermissions")

return function(state, groupId)
	local permissions = state.Settings.Changed.permissions or state.Settings.Current.permissions

	if FFlagStudioUXImprovementsLoosenTCPermissions then
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
	else
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
end