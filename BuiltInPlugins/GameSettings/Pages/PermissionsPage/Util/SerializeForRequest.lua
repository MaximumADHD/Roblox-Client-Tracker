--[[
	This file is used to translate our internal data structure back into requests we can then send to the endpoints
--]]

local Page = script.Parent.Parent

local PermissionsConstants = require(Page.Util.PermissionsConstants)
local WebKeys = require(Page.Util.WebKeyConstants)

local PERMISSION_HIERARCHY = {PermissionsConstants.NoAccessKey, PermissionsConstants.PlayKey, PermissionsConstants.EditKey}
local PERMISSION_HIERARCHY_POSITION = {}
for i,v in pairs(PERMISSION_HIERARCHY) do
	PERMISSION_HIERARCHY_POSITION[v] = i
end

local function getWebSubjectType(internalSubjectType)
	if internalSubjectType == PermissionsConstants.UserSubjectKey then
		return WebKeys.UserSubject
	elseif internalSubjectType == PermissionsConstants.GroupSubjectKey then
		return WebKeys.GroupSubject
	elseif internalSubjectType == PermissionsConstants.RoleSubjectKey then
		return WebKeys.RoleSubject
	else
		-- not supported
		error("Invalid SubjectType: "..tostring(internalSubjectType))
	end
end

local function getWebAction(internalAction)
	if internalAction == PermissionsConstants.PlayKey then
		return WebKeys.PlayAction
	elseif internalAction == PermissionsConstants.EditKey then
		return WebKeys.EditAction
	elseif internalAction == PermissionsConstants.AdminKey then
		return WebKeys.EditAction
	elseif internalAction == PermissionsConstants.NoAccessKey then
		return nil
	else
		-- not supported
		error("Invalid Action: "..tostring(internalAction))
	end
end

local Serialize = {}

function Serialize._getGroupsForRoles(current, changed)
	local roleGroups = {}

	for roleId,permission in pairs(current[PermissionsConstants.RoleSubjectKey]) do
		roleGroups[roleId] = permission[PermissionsConstants.GroupIdKey]
	end

	for roleId,permission in pairs(changed[PermissionsConstants.RoleSubjectKey]) do
		roleGroups[roleId] = permission[PermissionsConstants.GroupIdKey]
	end

	return roleGroups
end

-- Returns a diff of permissions in the form of {Current=___, Changed=____} for each subjectId, grouped by subjectType
function Serialize.diffPermissionChanges(current, changed)
	local changes = {}

	changes[PermissionsConstants.GroupSubjectKey] = {}
	for subjectType,_ in pairs(current) do
		changes[subjectType] = {}
	end
	for subjectType,_ in pairs(changed) do
		changes[subjectType] = {}
	end

	for subjectType,permissions in pairs(current) do
		for subjectId,permission in pairs(permissions) do
			changes[subjectType][subjectId] = {Current=permission[PermissionsConstants.ActionKey]}
		end
	end

	for subjectType,permissions in pairs(changed) do
		for subjectId,permission in pairs(permissions) do
			changes[subjectType][subjectId] = changes[subjectType][subjectId] or {}
			changes[subjectType][subjectId].Changed = permission[PermissionsConstants.ActionKey]
		end
	end

	return changes
end

-- The permissions endpoint does not treat roles as hierarchical, so we can't just tell it "go from NoAccess to Edit".
-- We have to explicitly specify every permission in between. This function diffs the roles and returns a list of each
-- permission change we need to make as permissionAdds,permissionDeletes. These are then passed directly to the
-- multiset/multidelete request bodies
function Serialize._resolvePermissionChanges(changes, roleGroups)
	local adds, deletes = {}, {}

	for subjectType,subjectTypeChanges in pairs(changes) do
		for subjectId,change in pairs(subjectTypeChanges) do
			local currentPosition = PERMISSION_HIERARCHY_POSITION[change.Current] or PERMISSION_HIERARCHY_POSITION[PermissionsConstants.NoAccessKey]
			local changedPosition = PERMISSION_HIERARCHY_POSITION[change.Changed] or PERMISSION_HIERARCHY_POSITION[PermissionsConstants.NoAccessKey]

			if changedPosition > currentPosition then
				-- From current permission (or lowest if there is none), add all permissions up to and including changed permission
				for i=currentPosition+1, changedPosition do
					table.insert(adds, {
						[WebKeys.SubjectType] = getWebSubjectType(subjectType),
						[WebKeys.SubjectId] = subjectId,
						[WebKeys.Action] = getWebAction(PERMISSION_HIERARCHY[i])
					})
				end
			elseif changedPosition < currentPosition then
				-- From current permission, remove all permissions down to but not including changed permission (or all if there is none)
				for i=currentPosition, changedPosition+1, -1 do
					table.insert(deletes, {
						[WebKeys.SubjectType] = getWebSubjectType(subjectType),
						[WebKeys.SubjectId] = subjectId,
						[WebKeys.Action] = getWebAction(PERMISSION_HIERARCHY[i])
					})
				end
			end
		end
	end

	return adds, deletes
end

function Serialize.SerializePermissions(oldPermissions, newPermissions)
	local changes = Serialize.diffPermissionChanges(oldPermissions, newPermissions)
	local roleGroups = Serialize._getGroupsForRoles(oldPermissions, newPermissions)
	local adds, deletes = Serialize._resolvePermissionChanges(changes, roleGroups)

	return adds, deletes
end

return Serialize