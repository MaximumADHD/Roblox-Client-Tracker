--[[
	Get request to tell if the user can manage the current place.
]]

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local Http = require(Plugin.Src.Networking.Http)

local PERMISSIONS_URL = "v2/universes/%d/permissions"
local PERMISSIONS_REQUEST_TYPE = "develop"

local ACTION_PLAY = "Play"
local ACTION_EDIT = "Edit"
local ACTION_ADMIN = "Admin"

local SUBJECT_TYPE_USER = "User"
local SUBJECT_TYPE_GROUP = "Group"
local SUBJECT_TYPE_ROLESET = "Roleset"

local ACTION_KEY = "Action"
local SUBJECT_TYPE_KEY = "SubjectType"
local SUBJECT_ID_KEY = "SubjectId"

-- User/group agnostic way to get a subject's id/name
function DEBUG_GetSubjectMetadata(subjectType, subjectId)
	local subjectName
	if subjectType == Enum.CreatorType.Group then
		local groupData = game:GetService("GroupService"):GetGroupInfoAsync(subjectId)
		subjectName = groupData.Name
	else
		local success,result = pcall(function()
			return game:GetService("Players"):GetNameFromUserIdAsync(subjectId)
		end)
		
		subjectName = success and result or "uid="..tostring(subjectId).." missing from env. Point AppSettings.xml to Prod"
	end
	
	return subjectId, subjectName
end

function DEBUG_GetCreatorMetadata()
	return DEBUG_GetSubjectMetadata(game.CreatorType, game.CreatorId)
end

-- Sans the Guest role, get all roleset metadata for a group (id, name, rank)
function DEBUG_GetGroupRoleMetadata(groupId)
	local result = game:GetService("HttpRbxApiService"):RequestAsync({
		Url = Http.BuildRobloxUrl("groups", "v1/groups/%d/roles", groupId),
		Method = "GET"
	})
	
	local roles = game:GetService("HttpService"):JSONDecode(result)["roles"]
	table.sort(roles, function(a,b) return a.rank < b.rank end)
	table.remove(roles, 1) -- Remove Guest role
	
	return roles
end

-- All permissions use this data structure. Only the blank fields vary, so
-- define this template once and fill in the blanks later
function DEBUG_GetPermissionTemplate()
	return {
		resourceType = "Universe",
		resourceId = game.gameId,
		resourceAttributes = {},
		action = nil,
		subjectType = nil,
		subjectId = nil,
		subjectName = nil
	}
end

-- Generate a permission for a user. Actions are generated rather than specified
function DEBUG_GenerateDummyRolePermissions(groupId)
	local rolesRawData = DEBUG_GetGroupRoleMetadata(groupId)
	local groupMetadata = game:GetService("GroupService"):GetGroupInfoAsync(groupId)
	local roles = {}
	
	for i,role in pairs(rolesRawData) do
		local permission = DEBUG_GetPermissionTemplate()
		permission.action = "Play"
		permission.subjectType = "Role"
		permission.subjectId = role.id
		permission.subjectName = role.Name
		permission.groupId = groupId
		permission.groupName = groupMetadata.Name
		
		roles[i] = permission
	end
	
	-- Owner role always had Admin
	roles[#roles].action = "Admin"
	
	-- Give the vice-owner roleset between owner and peon Edit permission for arbitrary testing purposes
	if #roles > 2 then
		roles[#roles-1].action = "Edit"
	end
	
	-- Give the rank between vice-owner and the roles below NoAccess for arbitrary testing purposes
	if #roles > 3 then
		table.remove(roles, #roles-2) -- Missing role is treated as NoAccess
	end
	
	return roles
end

-- Generate a permission for a user. Actions = Admin, Edit, Play. NoAccess not available for users in V1
function DEBUG_UserPermission(userId, action)
	local permission = DEBUG_GetPermissionTemplate()
	local _,username = DEBUG_GetSubjectMetadata(Enum.CreatorType.User, userId)
	
	permission.action = action
	permission.subjectType = "User"
	permission.subjectId = userId
	permission.subjectName = username
	
	return permission
end

-- We know that at the very least the game owner has Admin regardless, and the editor has at least Edit, so
-- return permissions that give them access. Also gives dummy permissions to ranks if a group game with owner=Admin
function DEBUG_GetBasePermissions(DEBUG_loggedInUserId)
	local creatorId,creatorName = DEBUG_GetCreatorMetadata()
	local studioUserId,studioUsername = DEBUG_GetSubjectMetadata(Enum.CreatorType.User, DEBUG_loggedInUserId)
	
	local permissions = {}
	
	if game.CreatorType ~= Enum.CreatorType.User or studioUserId ~= creatorId then
		table.insert(permissions, DEBUG_UserPermission(studioUserId, "Edit"))
	end
	
	if game.CreatorType == Enum.CreatorType.User then
		table.insert(permissions, DEBUG_UserPermission(creatorId, "Admin"))
	elseif game.CreatorType == Enum.CreatorType.Group then
		local groupRanks = game:GetService("GroupService"):GetGroupInfoAsync(creatorId).Roles
		
		for _,permission in pairs(DEBUG_GenerateDummyRolePermissions(creatorId)) do
			table.insert(permissions, permission)
		end
	end
	
	return permissions
end

-- Return dummy permissions since the endpoint doesn't return real data yet. It returns "real" data like the
-- owner having Admin and the editor (if not owner) having Edit, but also inserts some other random test users
-- and groups so we have more to test the UI with
function DEBUG_GetDummyPermissions(DEBUG_loggedInUserId)
	local permissions = DEBUG_GetBasePermissions(DEBUG_loggedInUserId)
	
	table.insert(permissions, DEBUG_UserPermission(1, "Play"))
	table.insert(permissions, DEBUG_UserPermission(2, "Edit"))
	table.insert(permissions, DEBUG_UserPermission(3, "Admin"))
	
	for i,v in pairs(DEBUG_GenerateDummyRolePermissions(2)) do
		table.insert(permissions, v)
	end
	
	return {permissions=permissions}
end

local Permissions = {}

function Permissions.Get(universeId, DEBUG_loggedInUserId)
	local requestInfo = {
		Url = Http.BuildRobloxUrl(PERMISSIONS_REQUEST_TYPE, PERMISSIONS_URL, universeId),
		Method = "GET",
	}
	
	return Promise.new(function(resolve, reject)
		-- Prevent yielding
		spawn(function()
			resolve(DEBUG_GetDummyPermissions(DEBUG_loggedInUserId))
		end)
	end)

	--[[
	-- Re-enable this when the endpoint returns real data and we're not generating fake data above
	return Http.Request(requestInfo):andThen(function(jsonResult)
		local result = HttpService:JSONDecode(jsonResult)
		
		return {
			permissions = result.data
		}
	end)
	:catch(function()
		warn("Game Settings: Could not fetch permissions for universe")
		return Promise.resolve(false)
	end)
	--]]
end

function Permissions.Add(universeId, permissions)
	local requestInfo = {
		Url = Http.BuildRobloxUrl(PERMISSIONS_REQUEST_TYPE, PERMISSIONS_URL, universeId),
		Method = "POST",
		Body = HttpService:JSONEncode(permissions)
	}
	
	return Http.Request(requestInfo)
	:catch(function()
		warn("Game Settings: Could not add permission to universe")
		return Promise.resolve(false)
	end)
end

function Permissions.Delete(universeId, permissions)
	local requestInfo = {
		Url = Http.BuildRobloxUrl(PERMISSIONS_REQUEST_TYPE, PERMISSIONS_URL, universeId),
		Method = "DELETE",
		Body = HttpService:JSONEncode(permissions)
	}

	return Http.Request(requestInfo)
	:catch(function()
		warn("Game Settings: Could not delete permission from universe")
		return Promise.resolve(false)
	end)
end

return Permissions