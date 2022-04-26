local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent
-- TODO: jbousellam - remove with FFlagRemoveUILibraryDeepJoin
local UILibrary = require(Plugin.Packages.UILibrary)

local FFlagRemoveUILibraryDeepJoin = game:GetFastFlag("RemoveUILibraryDeepJoin")
local deepJoin = if FFlagRemoveUILibraryDeepJoin then require(Plugin.Packages.Framework).Util.deepJoin else UILibrary.Util.deepJoin

local AddChange = require(Plugin.Src.Actions.AddChange)
local PermissionsConstants = require(Page.Util.PermissionsConstants)

return function(groupId, newPermission)
	return function(store, contextItems)
		local state = store:getState()

		local groupMetadataController = contextItems.groupMetadataController

		local groupName = groupMetadataController:getGroupMetadata(groupId).name
		local oldGroupMetadata = state.Settings.Changed.groupMetadata or state.Settings.Current.groupMetadata
		local newGroupMetadata = deepJoin(oldGroupMetadata, {
			[groupId] = {
				Name = groupName,
			}
		})

		local newPermissions = state.Settings.Changed.permissions or state.Settings.Current.permissions
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
		store:dispatch(AddChange("permissions", newPermissions))
		store:dispatch(AddChange("groupMetadata", newGroupMetadata))
	end
end