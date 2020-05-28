local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent
local Cryo = require(Plugin.Cryo)

local AddChange = require(Plugin.Src.Actions.AddChange)
local PermissionsConstants = require(Page.Util.PermissionsConstants)

return function(userId, newPermission)
	return function(store, contextItems)
		local state = store:getState()

		local oldPermissions = state.Settings.Changed.permissions or state.Settings.Current.permissions
		local oldUserPermissions = oldPermissions[PermissionsConstants.UserSubjectKey]

		-- NOTE: can't use UILibrary deepJoin here because it doesn't support removing keys
		local newPermissions = Cryo.Dictionary.join(oldPermissions, {
			[PermissionsConstants.UserSubjectKey] = Cryo.Dictionary.join(oldUserPermissions, {
				[userId] = Cryo.None,
			})
		})

		store:dispatch(AddChange("permissions", newPermissions))
	end
end