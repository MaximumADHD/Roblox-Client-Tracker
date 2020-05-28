--[[
	This file is used to translate our internal data structure back into requests we can then send to the endpoints
--]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local PermissionsConstants = require(Plugin.Src.Components.Permissions.PermissionsConstants)
local Constants = require(Plugin.Src.Networking.Requests.Permissions.Constants)

local webKeys = Constants.webKeys

local PERMISSION_HIERARCHY = {PermissionsConstants.NoAccessKey, PermissionsConstants.PlayKey, PermissionsConstants.EditKey}
local PERMISSION_HIERARCHY_POSITION = {}
for i,v in pairs(PERMISSION_HIERARCHY) do
	PERMISSION_HIERARCHY_POSITION[v] = i
end

local function getWebSubjectType(internalSubjectType)
	if internalSubjectType == PermissionsConstants.UserSubjectKey then
		return webKeys.UserSubject
	elseif internalSubjectType == PermissionsConstants.GroupSubjectKey then
		return webKeys.GroupSubject
	elseif internalSubjectType == PermissionsConstants.RoleSubjectKey then
		return webKeys.RoleSubject
	else
		-- not supported
		error("Invalid SubjectType: "..tostring(internalSubjectType))
	end
end

local function getWebAction(internalAction)
	if internalAction == PermissionsConstants.PlayKey then
		return webKeys.PlayAction
	elseif internalAction == PermissionsConstants.EditKey then
		return webKeys.EditAction
	elseif internalAction == PermissionsConstants.AdminKey then
		return webKeys.EditAction
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
	for subjectType,_ in pairs(current.permissions) do
		changes[subjectType] = {}
	end
	for subjectType,_ in pairs(changed.permissions) do
		changes[subjectType] = {}
	end
	
	for subjectType,permissions in pairs(current.permissions) do
		for subjectId,permission in pairs(permissions) do
			changes[subjectType][subjectId] = {Current=permission[PermissionsConstants.ActionKey]}
		end
	end

	for subjectType,permissions in pairs(changed.permissions) do
		for subjectId,permission in pairs(permissions) do
			changes[subjectType][subjectId] = changes[subjectType][subjectId] or {}
			changes[subjectType][subjectId].Changed = permission[PermissionsConstants.ActionKey]
		end
	end

	for groupId,metadata in pairs(current.groupMetadata) do
		changes[PermissionsConstants.GroupSubjectKey][groupId] = {Current=metadata.Action}
	end

	for groupId,metadata in pairs(changed.groupMetadata) do
		changes[PermissionsConstants.GroupSubjectKey][groupId] = changes[PermissionsConstants.GroupSubjectKey][groupId] or {}
		changes[PermissionsConstants.GroupSubjectKey][groupId].Changed = metadata.Action
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

			-- We need to add/remove role permissions if we are converting away from/to group-level permissions
			if subjectType == PermissionsConstants.RoleSubjectKey then
				local groupId = roleGroups[subjectId]
				local groupChanges = changes[PermissionsConstants.GroupSubjectKey][groupId]
				
				if groupChanges then
					currentPosition = groupChanges.Current ~= PermissionsConstants.NoAccessKey and PERMISSION_HIERARCHY_POSITION[PermissionsConstants.NoAccessKey] or currentPosition
					changedPosition = groupChanges.Changed ~= PermissionsConstants.NoAccessKey and PERMISSION_HIERARCHY_POSITION[PermissionsConstants.NoAccessKey] or changedPosition
				end
			end

			if changedPosition > currentPosition then
				-- From current permission (or lowest if there is none), add all permissions up to and including changed permission
				for i=currentPosition+1, changedPosition do
					table.insert(adds, {
						[webKeys.SubjectType] = getWebSubjectType(subjectType),
						[webKeys.SubjectId] = subjectId,
						[webKeys.Action] = getWebAction(PERMISSION_HIERARCHY[i])
					})
				end
			elseif changedPosition < currentPosition then
				-- From current permission, remove all permissions down to but not including changed permission (or all if there is none)
				for i=currentPosition, changedPosition+1, -1 do
					table.insert(deletes, {
						[webKeys.SubjectType] = getWebSubjectType(subjectType),
						[webKeys.SubjectId] = subjectId,
						[webKeys.Action] = getWebAction(PERMISSION_HIERARCHY[i])
					})
				end
			end
		end
	end

	return adds, deletes
end

function Serialize.SerializePermissions(props, changes)
	local roleGroups = Serialize._getGroupsForRoles(props.Current.permissions, props.Changed.permissions)
	local adds, deletes = Serialize._resolvePermissionChanges(changes, roleGroups)

	return adds, deletes
end

return Serialize