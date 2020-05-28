--[[
	This file is used to translate the web result into something more usable (dictionary lookup by id, flatten
	group* & role permissions into role only, etc) so it's simpler to manage permissions from Game Settings.

	* Groups or individual roles can have their own permissions, and roles inherit permissions from the group
	if it has any permissions

	Returns:
	groupMetadata = { [groupId] = {Name=..., Action=...}, ... }
	permissions = {
		[Users] = { [userId] = {Action=..., SubjectType=..., SubjectName=..., SubjectId=...}, ... },
		[Roles] = { [roleId] = {Action=..., SubjectType=..., SubjectName=..., SubjectId=..., SubjectRank=..., GroupId=..., GroupName=...}, ... }
	}
--]]

local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent
local FrameworkUtil = require(Plugin.Framework.Util)
local Promise = FrameworkUtil.Promise
local Cryo = require(Plugin.Cryo)

local GroupRoles = require(Plugin.Src.Networking.Requests.Permissions.GroupRoles)
local PermissionsConstants = require(Page.Util.PermissionsConstants)
local WebKeys = require(Page.Util.WebKeyConstants)

local GUEST_RANK = 0

local function getSubjectType(webPermission)
	if webPermission[WebKeys.UserId] then
		return PermissionsConstants.UserSubjectKey
	elseif webPermission[WebKeys.RoleId] then
		return PermissionsConstants.RoleSubjectKey
	elseif webPermission[WebKeys.GroupId] then
		return PermissionsConstants.GroupSubjectKey
	else
		-- not supported
		error("Could not determine subject type")
	end
end

local function getInternalAction(webKey)
	if webKey == WebKeys.PlayAction then
		return PermissionsConstants.PlayKey
	elseif webKey == WebKeys.EditAction then
		return PermissionsConstants.EditKey
	elseif webKey == WebKeys.AdminAction then
		return PermissionsConstants.EditKey
	elseif webKey == nil then
		return PermissionsConstants.NoAccessKey
	else
		-- not supported
		error("Unsupported Action: "..tostring(webKey))
	end
end

local Deserialize = {}

-- TODO (awarwick) 5/9/2019 Remove when the endpoint fixes this
-- The endpoint returns numbers as strings, so we fix it before anything touches it so we don't need to handle
-- this in multiple places
function Deserialize._DEPRECATEDFixEndpointKeyTypes(webPermissions)
	for _,permission in pairs(webPermissions) do
		for key,value in pairs(permission) do
			if key == WebKeys.GroupId or key == WebKeys.UserId or key == WebKeys.RoleId or key == WebKeys.RoleRank then
				permission[key] = tonumber(value)
			end
		end
	end
end

function Deserialize._deserializeOne(webPermission, subjectType)
	local internalPermission = {}

	internalPermission[PermissionsConstants.ActionKey] = getInternalAction(webPermission[WebKeys.Action])

	local subjectName,subjectId
	if subjectType == PermissionsConstants.UserSubjectKey then
		subjectName = webPermission[WebKeys.UserName]
		subjectId = webPermission[WebKeys.UserId]
	elseif subjectType == PermissionsConstants.GroupSubjectKey then
		subjectName = webPermission[WebKeys.GroupName]
		subjectId = webPermission[WebKeys.GroupId]
	elseif subjectType == PermissionsConstants.RoleSubjectKey then
		subjectName = webPermission[WebKeys.RoleName]
		subjectId = webPermission[WebKeys.RoleId]
	end

	internalPermission[PermissionsConstants.SubjectNameKey] = subjectName
	internalPermission[PermissionsConstants.SubjectIdKey] = subjectId

	local allowedPermissions = webPermission[WebKeys.AllowedPermissions]
	if subjectType == PermissionsConstants.UserSubjectKey then
		if not allowedPermissions or allowedPermissions == "" or allowedPermissions == "Play" then
			internalPermission[PermissionsConstants.IsFriendKey] = false
		else
			internalPermission[PermissionsConstants.IsFriendKey] = true
		end
	end

	if subjectType == PermissionsConstants.RoleSubjectKey then
		internalPermission[PermissionsConstants.SubjectRankKey] = webPermission[WebKeys.RoleRank]
		internalPermission[PermissionsConstants.GroupIdKey] = webPermission[WebKeys.GroupId]
	end

	return internalPermission
end

function Deserialize._deserializeAll(webPermissions)
	local groupMetadata = {}
	local permissions = {
		[PermissionsConstants.UserSubjectKey] = {},
		[PermissionsConstants.RoleSubjectKey] = {},
	}

	-- First, deserialize all of the groups. We need this information when deserializing the roles
	for _,webPermission in pairs(webPermissions) do
		local subjectType = getSubjectType(webPermission)

		if subjectType == PermissionsConstants.GroupSubjectKey then
			local permission = Deserialize._deserializeOne(webPermission, subjectType)
			local subjectId = permission[PermissionsConstants.SubjectIdKey]
			local subjectName = permission[PermissionsConstants.SubjectNameKey]
			local action = permission[PermissionsConstants.ActionKey]

			groupMetadata[subjectId] = {Name = subjectName, Action = action}
		end
	end

	for _,webPermission in pairs(webPermissions) do
		local subjectType = getSubjectType(webPermission)
		local permission = Deserialize._deserializeOne(webPermission, subjectType)

		local subjectId = permission[PermissionsConstants.SubjectIdKey]

		if subjectType ~= PermissionsConstants.GroupSubjectKey then
			-- Don't display guest ranks, unless the user has somehow managed to assign it a permission, in which case allow them to reset it
			if permission[PermissionsConstants.SubjectRankKey] ~= GUEST_RANK or permission[PermissionsConstants.ActionKey] ~= PermissionsConstants.NoAccessKey then
				permissions[subjectType][subjectId] = permission

				-- Permissions can be defined at the group level, so we want to use the group's permission when possible
				-- The exception to this is if there was a bug in saving that resulted in both a top-level group permission and role permission
				-- We preserve the role's permission in this case so the user can fix it
				if subjectType == PermissionsConstants.RoleSubjectKey then
					local groupId = permission[PermissionsConstants.GroupIdKey]
					permission[PermissionsConstants.ActionKey] = webPermission[WebKeys.Action] == nil and groupMetadata[groupId].Action or permission[PermissionsConstants.ActionKey]
				end
			end
		end
	end

	return permissions, groupMetadata
end

function Deserialize._addOwnerIfMissing(webPermissions, ownerName, ownerId, ownerType)
	local idKey = ownerType == Enum.CreatorType.User and WebKeys.UserId or WebKeys.GroupId
	local hasOwner = false
	for _,webPermission in pairs(webPermissions) do
		if webPermission[idKey] == ownerId then
			hasOwner = true
			break
		end
	end

	if hasOwner then
		return Promise.new(function(resolve) resolve() end)
	end

	if ownerType == Enum.CreatorType.User then
		table.insert(webPermissions, {
			[WebKeys.UserId] = ownerId,
			[WebKeys.UserName] = ownerName,
			[WebKeys.Action] = WebKeys.EditAction,
		})

		return Promise.new(function(resolve) resolve() end)
	end

	table.insert(webPermissions, {
		[WebKeys.GroupId] = ownerId,
		[WebKeys.GroupName] = ownerName,
		[WebKeys.Action] = nil,
	})
	return GroupRoles.Get(ownerId):andThen(function(groupRoles)
		for _,roleMetadata in pairs(groupRoles) do
			-- owner role id is always 255
			if roleMetadata[WebKeys.RoleId] == 255 then
				table.insert(webPermissions, Cryo.Dictionary.join(roleMetadata, {
					[WebKeys.GroupId] = ownerId,
					[WebKeys.GroupName] = ownerName,
					[WebKeys.Action] = WebKeys.EditAction,
				}))
			else
				table.insert(webPermissions, Cryo.Dictionary.join(roleMetadata, {
					[WebKeys.GroupId] = ownerId,
					[WebKeys.GroupName] = ownerName,
					[WebKeys.Action] = nil,
				}))
			end
		end
	end)
end

function Deserialize.DeserializePermissions(webPermissions, ownerName, ownerId, ownerType)
	Deserialize._DEPRECATEDFixEndpointKeyTypes(webPermissions)
	Deserialize._addOwnerIfMissing(webPermissions, ownerName, ownerId, ownerType):await()

	local permissions, groupMetadata = Deserialize._deserializeAll(webPermissions)
	return permissions, groupMetadata
end

return Deserialize