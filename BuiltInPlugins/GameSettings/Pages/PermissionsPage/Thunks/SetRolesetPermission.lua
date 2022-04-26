local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent
-- TODO: jbousellam - remove with FFlagRemoveUILibraryDeepJoin
local UILibrary = require(Plugin.Packages.UILibrary)

local FFlagRemoveUILibraryDeepJoin = game:GetFastFlag("RemoveUILibraryDeepJoin")
local deepJoin = if FFlagRemoveUILibraryDeepJoin then require(Plugin.Packages.Framework).Util.deepJoin else UILibrary.Util.deepJoin

local AddChange = require(Plugin.Src.Actions.AddChange)
local PermissionsConstants = require(Page.Util.PermissionsConstants)

return function(rolesetId, newPermission)
	return function(store, contextItems)
		local state = store:getState()

		local oldPermissions = state.Settings.Changed.permissions or state.Settings.Current.permissions
		local newPermissions = deepJoin(oldPermissions, {
			[PermissionsConstants.RoleSubjectKey] = {
				[rolesetId] = {
					[PermissionsConstants.ActionKey] = newPermission
				}
			}
		})

		store:dispatch(AddChange("permissions", newPermissions))
	end
end