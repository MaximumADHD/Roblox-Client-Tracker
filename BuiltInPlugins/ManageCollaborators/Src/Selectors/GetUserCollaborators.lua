local Plugin = script.Parent.Parent.Parent
local PermissionsConstants = require(Plugin.Src.Util.PermissionsConstants)

local IsUserOwner = require(Plugin.Src.Selectors.IsUserOwner)

return function(state)	
	local permissions = state.Permissions.NewPermissions or state.Permissions.CurrentPermissions
	local permissionsUsers = permissions[PermissionsConstants.UserSubjectKey] or {}
	
	local currentPermissionUsers = state.Permissions.CurrentPermissions[PermissionsConstants.UserSubjectKey]

	local users = {}
	for userId, permission in pairs(permissionsUsers) do
		local userName = permission[PermissionsConstants.SubjectNameKey]

		if not IsUserOwner(state, userId) then
			table.insert(users, {Name = userName, Id = userId})
		end
	end

	table.sort(users, function(a,b)
		return a.Name < b.Name
	end)
	
	local newUserIds = {}
	local currentUserIds = {}

	-- Show new additions first
	for _, user in ipairs(users) do
		if not currentPermissionUsers[user.Id] then
			table.insert(newUserIds, user.Id)
		end
	end
	
	-- Then show existing users
	for _, user in ipairs(users) do
		if currentPermissionUsers[user.Id] then
			table.insert(currentUserIds, user.Id)
		end
	end

	return newUserIds, currentUserIds
end
