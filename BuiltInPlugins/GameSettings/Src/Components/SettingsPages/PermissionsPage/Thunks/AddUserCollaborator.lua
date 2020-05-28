local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent
local UILibrary = require(Plugin.UILibrary)

local deepJoin = UILibrary.Util.deepJoin

local AddChange = require(Plugin.Src.Actions.AddChange)
local PermissionsConstants = require(Page.Util.PermissionsConstants)

return function(userId, username, newPermission)
	return function(store, contextItems)
		local state = store:getState()

		local oldPermissions = state.Settings.Changed.permissions or state.Settings.Current.permissions
		local newPermissions = deepJoin(oldPermissions, {
			[PermissionsConstants.UserSubjectKey] = {
				[userId] = {
					[PermissionsConstants.SubjectNameKey] = username,
					[PermissionsConstants.SubjectIdKey] = userId,
					[PermissionsConstants.ActionKey] = newPermission,
				}
			}
		})

		store:dispatch(AddChange("permissions", newPermissions))
	end
end