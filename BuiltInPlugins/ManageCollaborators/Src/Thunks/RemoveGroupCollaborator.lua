local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)

local SetUserPermission = require(Plugin.Src.Actions.SetUserPermission)
local SetGroupMetadata = require(Plugin.Src.Actions.SetGroupMetadata)
local PermissionsConstants = require(Plugin.Src.Util.PermissionsConstants)

return function(groupId)
	return function(store, contextItems)
		local state = store:getState()

		local oldGroupMetadata = state.GroupMetadata.NewGroupMetadata or state.GroupMetadata.CurrentGroupMetadata
		local newGroupMetadata = Cryo.Dictionary.join(oldGroupMetadata, {
			[groupId] = Cryo.None,
		})
		
		local oldPermissions = state.Permissions.NewPermissions or state.Permissions.CurrentPermissions
		local newPermissions = oldPermissions
		for roleId, roleData in pairs(newPermissions[PermissionsConstants.RoleSubjectKey]) do
			if roleData[PermissionsConstants.GroupIdKey] == groupId then
				newPermissions = Cryo.Dictionary.join(newPermissions, {
				    [PermissionsConstants.RoleSubjectKey] = Cryo.Dictionary.join(newPermissions[PermissionsConstants.RoleSubjectKey], {
				        [roleId] = Cryo.None,
				    })
				})
			end
		end

		store:dispatch(SetUserPermission(newPermissions))
		store:dispatch(SetGroupMetadata(newGroupMetadata))
	end
end
