local Page = script.Parent.Parent
local PermissionsConstants = require(Page.Util.PermissionsConstants)

local IsUserOwner = require(Page.Selectors.IsUserOwner)

return function(state)
	local permissions = state.Settings.Changed.permissions or state.Settings.Current.permissions
	local permissionsUsers = permissions[PermissionsConstants.UserSubjectKey]

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

	local returnedUserIds = {}
	for _, user in ipairs(users) do
		table.insert(returnedUserIds, user.Id)
	end

	return returnedUserIds
end