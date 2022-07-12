local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)

local deepJoin = Framework.Util.deepJoin

local SetUserPermission = require(Plugin.Src.Actions.SetUserPermission)
local PermissionsConstants = require(Plugin.Src.Util.PermissionsConstants)

return function(groupId, newPermission)
	return function(store, contextItems)
		local state = store:getState()
		
		local oldPermissions = state.Permissions.NewPermissions or state.Permissions.CurrentPermissions
		local newPermissions = oldPermissions
		for roleId, roleData in pairs(oldPermissions[PermissionsConstants.RoleSubjectKey]) do
			if roleData[PermissionsConstants.GroupIdKey] == groupId then
				newPermissions = deepJoin(newPermissions, {
					[PermissionsConstants.RoleSubjectKey] = {
						[roleId] = {
							[PermissionsConstants.ActionKey] = newPermission
						}
					}
				})
			end
		end

		store:dispatch(SetUserPermission(newPermissions))
	end
end
