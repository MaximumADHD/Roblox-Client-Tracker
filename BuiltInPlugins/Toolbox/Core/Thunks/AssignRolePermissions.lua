--[[
	When a group is added, we have to download its ranks and give them all the permission the group has
]]

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Cryo)

local Analytics = require(Plugin.Src.Util.Analytics)

local AddChange = require(Plugin.Src.Actions.AddChange)

local PermissionsConstants = require(Plugin.Src.Components.Permissions.PermissionsConstants)

return function(success, groupId, roles)
	return function(store)
		local state = store:getState()
		local settings = state.Settings
		local groupMetadata = settings.Changed.groupMetadata or settings.Current.groupMetadata
		
		if success then
			local permissions = settings.Changed.permissions or settings.Current.permissions

			local newRoles = {}
			for _,role in pairs(roles) do
				local roleId = role.rolesetId
				local roleName = role.rolesetName
				local roleRank = role.rank
				
				newRoles[roleId] = {
					[PermissionsConstants.SubjectIdKey] = roleId,
					[PermissionsConstants.SubjectNameKey] = roleName,
					[PermissionsConstants.SubjectRankKey] = roleRank,
					[PermissionsConstants.GroupIdKey] = groupId,
					[PermissionsConstants.ActionKey] = groupMetadata[groupId].Action,
				}
			end

			local newPermissions = Cryo.Dictionary.join(permissions, {
				[PermissionsConstants.RoleSubjectKey] = Cryo.Dictionary.join(permissions[PermissionsConstants.RoleSubjectKey], newRoles)
			})
			store:dispatch(AddChange("permissions", newPermissions))
		else
			local newGroupMetadata = Cryo.Dictionary.join(groupMetadata, {
				[groupId] = Cryo.None
			})
			store:dispatch(AddChange("groupMetadata", newGroupMetadata))
			warn("Failed to download ranks")
		end
	end
end