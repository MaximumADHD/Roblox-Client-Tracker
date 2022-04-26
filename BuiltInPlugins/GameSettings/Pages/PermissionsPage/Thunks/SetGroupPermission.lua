local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent
-- TODO: jbousellam - remove with FFlagRemoveUILibraryDeepJoin
local UILibrary = require(Plugin.Packages.UILibrary)

local PermissionsConstants = require(Page.Util.PermissionsConstants)
local AddChange = require(Plugin.Src.Actions.AddChange)

local FFlagRemoveUILibraryDeepJoin = game:GetFastFlag("RemoveUILibraryDeepJoin")
local deepJoin = if FFlagRemoveUILibraryDeepJoin then require(Plugin.Packages.Framework).Util.deepJoin else UILibrary.Util.deepJoin

return function(groupId, newPermission)
	return function(store, contextItems)
		local state = store:getState()

		local oldPermissions = state.Settings.Changed.permissions or state.Settings.Current.permissions
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

		store:dispatch(AddChange("permissions", newPermissions))
	end
end