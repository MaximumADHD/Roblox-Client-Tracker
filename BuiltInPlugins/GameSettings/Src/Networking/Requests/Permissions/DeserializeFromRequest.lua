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

local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local Cryo = require(Plugin.Cryo)

local GroupRoles = require(Plugin.Src.Networking.Requests.Permissions.GroupRoles)
local PermissionsConstants = require(Plugin.Src.Components.Permissions.PermissionsConstants)
local Constants = require(Plugin.Src.Networking.Requests.Permissions.Constants)

local webKeys = Constants.webKeys

local GUEST_RANK = 0

local function getSubjectType(webPermission)
	if webPermission[webKeys.UserId] then
		return PermissionsConstants.UserSubjectKey
	elseif webPermission[webKeys.RoleId] then
		return PermissionsConstants.RoleSubjectKey
	elseif webPermission[webKeys.GroupId] then
		return PermissionsConstants.GroupSubjectKey
	else
		-- not supported
		error("Could not determine subject type")
	end
end

local function getInternalAction(webKey)
	if webKey == webKeys.PlayAction then
		return PermissionsConstants.PlayKey
	elseif webKey == webKeys.EditAction then
		return PermissionsConstants.EditKey
	elseif webKey == webKeys.AdminAction then
		return PermissionsConstants.AdminKey
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
			if key == webKeys.GroupId or key == webKeys.UserId or key == webKeys.RoleId or key == webKeys.RoleRank then
				permission[key] = tonumber(value)
			end
		end
	end
end

function Deserialize._deserializeOne(webPermission, subjectType)
	local internalPermission = {}
	
	
	internalPermission[PermissionsConstants.ActionKey] = getInternalAction(webPermission[webKeys.Action])

	local subjectName,subjectId
	if subjectType == PermissionsConstants.UserSubjectKey then
		subjectName = webPermission[webKeys.UserName]
		subjectId = webPermission[webKeys.UserId]
	elseif subjectType == PermissionsConstants.GroupSubjectKey then
		subjectName = webPermission[webKeys.GroupName]
		subjectId = webPermission[webKeys.GroupId]
	elseif subjectType == PermissionsConstants.RoleSubjectKey then
		subjectName = webPermission[webKeys.RoleName]
		subjectId = webPermission[webKeys.RoleId]
	end

	internalPermission[PermissionsConstants.SubjectNameKey] = subjectName
	internalPermission[PermissionsConstants.SubjectIdKey] = subjectId

	if subjectType == PermissionsConstants.RoleSubjectKey then
		internalPermission[PermissionsConstants.SubjectRankKey] = webPermission[webKeys.RoleRank]
		internalPermission[PermissionsConstants.GroupIdKey] = webPermission[webKeys.GroupId]
	end
	
	return internalPermission
end

function Deserialize._deserializeAll(webPermissions)
	local groupMetadata = {}
	local permissions = {
		[PermissionsConstants.UserSubjectKey] = {},
		[PermissionsConstants.RoleSubjectKey] = {},
	}

	for _,webPermission in pairs(webPermissions) do
		local subjectType = getSubjectType(webPermission)
		local permission = Deserialize._deserializeOne(webPermission, subjectType)

		local subjectId = permission[PermissionsConstants.SubjectIdKey]
		local subjectName = permission[PermissionsConstants.SubjectNameKey]
		local action = permission[PermissionsConstants.ActionKey]
		
		if subjectType == PermissionsConstants.GroupSubjectKey then
			groupMetadata[subjectId] = {Name = subjectName, Action = action}
		else
			-- Don't display guest ranks, unless the user has somehow managed to assign it a permission, in which case allow them to reset it
			if permission[PermissionsConstants.SubjectRankKey] ~= GUEST_RANK or permission[PermissionsConstants.ActionKey] ~= PermissionsConstants.NoAccessKey then
				permissions[subjectType][subjectId] = permission
			end
		end
	end

	return permissions, groupMetadata
end

function Deserialize._addOwnerIfMissing(webPermissions, ownerName)
	local idKey = game.CreatorType == Enum.CreatorType.User and webKeys.UserId or webKeys.GroupId
	local hasOwner = false
	for _,webPermission in pairs(webPermissions) do
		if webPermission[idKey] == game.CreatorId then
			hasOwner = true
			break
		end
	end

	if hasOwner then
		return Promise.new(function(resolve) resolve() end)
	end

	if game.CreatorType == Enum.CreatorType.User then
		table.insert(webPermissions, {
			[webKeys.UserId] = game.CreatorId,
			[webKeys.UserName] = ownerName,
			[webKeys.Action] = nil,
		})
		
		return Promise.new(function(resolve) resolve() end)
	end
	
	table.insert(webPermissions, {
		[webKeys.GroupId] = game.CreatorId,
		[webKeys.GroupName] = ownerName,
		[webKeys.Action] = nil,
	})
	return GroupRoles.Get(game.CreatorId):andThen(function(groupRoles)
		for _,roleMetadata in pairs(groupRoles) do
			table.insert(webPermissions, Cryo.Dictionary.join(roleMetadata, {
				[webKeys.GroupId] = game.CreatorId,
				[webKeys.GroupName] = ownerName,
				[webKeys.Action] = nil,
			}))
		end
	end)
end

function Deserialize.DeserializePermissions(webPermissions, ownerName)
	Deserialize._DEPRECATEDFixEndpointKeyTypes(webPermissions)
	return Deserialize._addOwnerIfMissing(webPermissions, ownerName):andThen(function()
		local permissions, groupMetadata = Deserialize._deserializeAll(webPermissions)
		return permissions, groupMetadata
	end)
end

return Deserialize