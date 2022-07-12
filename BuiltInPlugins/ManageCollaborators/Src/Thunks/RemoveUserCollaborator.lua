local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)

local SetUserPermission = require(Plugin.Src.Actions.SetUserPermission)
local PermissionsConstants = require(Plugin.Src.Util.PermissionsConstants)

return function(userId, newPermission)
	return function(store, contextItems)
		local state = store:getState()

		local oldPermissions = state.Permissions.NewPermissions or state.Permissions.CurrentPermissions
		local oldUserPermissions = oldPermissions[PermissionsConstants.UserSubjectKey]

		local newPermissions = Cryo.Dictionary.join(oldPermissions, {
			[PermissionsConstants.UserSubjectKey] = Cryo.Dictionary.join(oldUserPermissions, {
				[userId] = Cryo.None,
			})
		})

		store:dispatch(SetUserPermission(newPermissions))
	end
end
