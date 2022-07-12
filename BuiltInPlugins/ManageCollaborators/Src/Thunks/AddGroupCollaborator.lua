local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)

local deepJoin = Framework.Util.deepJoin

local SetUserPermission = require(Plugin.Src.Actions.SetUserPermission)
local SetGroupMetadata = require(Plugin.Src.Actions.SetGroupMetadata)
local PermissionsConstants = require(Plugin.Src.Util.PermissionsConstants)

return function(groupId, newPermission)
	return function(store, contextItems)
		local state = store:getState()

		local groupMetadataController = contextItems.groupMetadataController

		local groupName = groupMetadataController:getGroupMetadata(groupId).name
		local oldGroupMetadata = state.GroupMetadata.NewGroupMetadata or state.GroupMetadata.CurrentGroupMetadata
		local newGroupMetadata = deepJoin(oldGroupMetadata, {
			[groupId] = {
				Name = groupName,
			}
		})

		local newPermissions = state.Permissions.NewPermissions or state.Permissions.CurrentPermissions
		local rolesets = groupMetadataController:getRolesets(groupId)
		for roleId, roleData in pairs(rolesets) do
			newPermissions = deepJoin(newPermissions, {
				[PermissionsConstants.RoleSubjectKey] = {
					[roleId] = {
						[PermissionsConstants.GroupIdKey] = groupId,
						[PermissionsConstants.SubjectNameKey] = roleData.name,
						[PermissionsConstants.SubjectRankKey] = roleData.rank,
						[PermissionsConstants.ActionKey] = newPermission,
					}
				}
			})
		end
		
		store:dispatch(SetUserPermission(newPermissions))
		store:dispatch(SetGroupMetadata(newGroupMetadata))
	end
end
