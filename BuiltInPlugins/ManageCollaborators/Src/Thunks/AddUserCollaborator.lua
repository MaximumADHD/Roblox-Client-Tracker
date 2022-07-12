local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)

local deepJoin = Framework.Util.deepJoin

local SetUserPermission = require(Plugin.Src.Actions.SetUserPermission)
local PermissionsConstants = require(Plugin.Src.Util.PermissionsConstants)

return function(userId, username, newPermission)
	return function(store, contextItems)
		local state = store:getState()
		

		local oldPermissions = state.Permissions.NewPermissions or state.Permissions.CurrentPermissions
		local newPermissions = deepJoin(oldPermissions, {
			[PermissionsConstants.UserSubjectKey] = {
				[userId] = {
					[PermissionsConstants.SubjectNameKey] = username,
					[PermissionsConstants.SubjectIdKey] = userId,
					[PermissionsConstants.ActionKey] = newPermission,
				}
			}
		})

		store:dispatch(SetUserPermission(newPermissions))
	end
end
