local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent
local UILibrary = require(Plugin.UILibrary)

local deepJoin = UILibrary.Util.deepJoin
local Cryo = require(Plugin.Cryo)

local AddChange = require(Plugin.Src.Actions.AddChange)
local PermissionsConstants = require(Page.Util.PermissionsConstants)

return function(groupId)
	return function(store, contextItems)
		local state = store:getState()

		local oldGroupMetadata = state.Settings.Changed.groupMetadata or state.Settings.Current.groupMetadata
		local newGroupMetadata = Cryo.Dictionary.join(oldGroupMetadata, {
			[groupId] = Cryo.None,
		})
		
		local oldPermissions = state.Settings.Changed.permissions or state.Settings.Current.permissions
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

		store:dispatch(AddChange("permissions", newPermissions))
		store:dispatch(AddChange("groupMetadata", newGroupMetadata))
	end
end