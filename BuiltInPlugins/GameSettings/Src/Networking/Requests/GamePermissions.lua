--[[
	Get request to tell if the user can manage the current place.
]]

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local Cryo = require(Plugin.Cryo)
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

local PERMISSION_HIERARCHY = {"Play", "Edit", "Admin"}
local PERMISSION_HIERARCHY_POSITION = {}
for i,v in pairs(PERMISSION_HIERARCHY) do
	PERMISSION_HIERARCHY_POSITION[v] = i
end

local RELEVANT_ENTRIES = {
	permissions = true,
}


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
	return Cryo.Dictionary.join({
		resourceType = "Universe",
		resourceId = game.gameId,
		resourceAttributes = {},
		action = nil,
		subjectType = nil,
		subjectId = nil,
		subjectName = nil
	})
end

-- Generate a permission for a user. Actions are generated rather than specified
function DEBUG_GenerateDummyRolePermissions(groupId)
	local rolesRawData = DEBUG_GetGroupRoleMetadata(groupId)
	local groupMetadata = game:GetService("GroupService"):GetGroupInfoAsync(groupId)
	local roles = {}
	
	for i,role in pairs(rolesRawData) do
		local permission = DEBUG_GetPermissionTemplate()
		
		roles[i] = Cryo.Dictionary.join(permission, {
			action = "Play",
			subjectType = "Role",
			subjectId = role.id,
			groupId = groupId,
			groupName = groupMetadata.Name,
		})
	end
	
	-- Owner role always had Admin
	roles[#roles] = Cryo.Dictionary.join(roles[#roles], {action = "Admin"})
	
	-- Give the vice-owner roleset between owner and peon Edit permission for arbitrary testing purposes
	if #roles > 2 then
		roles[#roles-1] = Cryo.Dictionary.join(roles[#roles-1], {action = "Edit"})
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
	
	return Cryo.Dictionary.join(permission, {
		action = action,
		subjectType = "User",
		subjectId = userId,
		subjectName = username,
	})
end

-- We know that at the very least the game owner has Admin regardless, and the editor has at least Edit, so
-- return permissions that give them access. Also gives dummy permissions to ranks if a group game with owner=Admin
function DEBUG_GetBasePermissions(DEBUG_loggedInUserId)
	local creatorId,creatorName = DEBUG_GetCreatorMetadata()
	local studioUserId,studioUsername = DEBUG_GetSubjectMetadata(Enum.CreatorType.User, DEBUG_loggedInUserId)
	
	local permissions = Cryo.List.join({})
	
	
	if game.CreatorType ~= Enum.CreatorType.User or studioUserId ~= creatorId then
		permissions = Cryo.List.join(permissions, {DEBUG_UserPermission(studioUserId, "Edit")})
	end
	
	if game.CreatorType == Enum.CreatorType.User then
		permissions = Cryo.List.join(permissions, {DEBUG_UserPermission(creatorId, "Admin")})
	elseif game.CreatorType == Enum.CreatorType.Group then
		local groupRanks = game:GetService("GroupService"):GetGroupInfoAsync(creatorId).Roles
		
		permissions = Cryo.List.join(permissions, DEBUG_GenerateDummyRolePermissions(creatorId))
	end
	
	return permissions
end

-- Return dummy permissions since the endpoint doesn't return real data yet. It returns "real" data like the
-- owner having Admin and the editor (if not owner) having Edit, but also inserts some other random test users
-- and groups so we have more to test the UI with
function DEBUG_GetDummyPermissions(DEBUG_loggedInUserId)
	local permissions = DEBUG_GetBasePermissions(DEBUG_loggedInUserId)
	permissions = Cryo.List.join(
		permissions, 
		DEBUG_GenerateDummyRolePermissions(2),
		{
			DEBUG_UserPermission(1, "Play"),
			DEBUG_UserPermission(2, "Edit"),
			DEBUG_UserPermission(3, "Admin"),
		}
	)
		
	return {
		permissions = permissions
	}
end

-- Returns a diff of permissions in the form of {Current=___, Changed=____} for each subjectId, grouped by subjectType
-- For users/groups, Current will be nil if permissions weren't configured for the subject prior, and Changed will be
-- nil if we have removed their configuration. For roles, Current/Changed=nil signifies NoAccess. This mirrors the way
-- the web endpoint treats NoAccess for roles (not supported for groups/users)
function diffPermissionChanges(current, changed)
	local changes = { -- These IDs can collide, so separate them
		User = {
			--[userId] = {Current="Play", Changed="Edit"}
		}, 
		Group = {
			--[groupId] = {Current="Play", Changed="Edit"}
		},
		Role = {
			--[roleId] = {Current="Play", Changed="Edit"}
		},
	}
	
	for _,permission in pairs(current) do
		changes[permission.subjectType][permission.subjectId] = {Current=permission.action}
	end
	
	for _,permission in pairs(changed) do
		changes[permission.subjectType][permission.subjectId] = changes[permission.subjectType][permission.subjectId] or {}
		changes[permission.subjectType][permission.subjectId].Changed = permission.action
	end
	
	return changes
end

-- The permissions endpoint does not treat roles as hierarchical, so we can't just tell it "go from NoAccess to Edit".
-- We have to explicitly specify every permission in between. This function diffs the roles and returns a list of each
-- permission change we need to make as permissionAdds,permissionDeletes. These are then passed directly to the
-- multiset/multidelete request bodies
function resolvePermissionChanges(current, changed)
	local adds = {}
	local deletes = {}
	
	local changes = diffPermissionChanges(current, changed)
	
	for subjectType,subjectTypeChanges in pairs(changes) do
		for subjectId,change in pairs(subjectTypeChanges) do
			local currentPosition = PERMISSION_HIERARCHY_POSITION[change.Current]
			local changedPosition = PERMISSION_HIERARCHY_POSITION[change.Changed]
			
			if currentPosition ~= changedPosition then
				if (not currentPosition) or changedPosition > currentPosition then
					-- From current permission (or lowest if there is none), add all permissions up to and including changed permission
					for i=(currentPosition or 0)+1, changedPosition do
						table.insert(adds, {
							[SUBJECT_TYPE_KEY] = subjectType, 
							[SUBJECT_ID_KEY] = subjectId, 
							[ACTION_KEY] = PERMISSION_HIERARCHY[i]
						})
					end
				elseif (not changedPosition) or changedPosition < currentPosition then
					-- From current permission, remove all permissions down to but not including changed permission (or all if there is none)
					for i=currentPosition, (changedPosition or 0)+1, -1 do
						table.insert(deletes, {
							[SUBJECT_TYPE_KEY] = subjectType, 
							[SUBJECT_ID_KEY] = subjectId, 
							[ACTION_KEY] = PERMISSION_HIERARCHY[i]
						})
					end
				end
			end
		end
	end
	
	return adds, deletes
end

local Permissions = {}

function Permissions.AcceptsValue(key)
	return RELEVANT_ENTRIES[key]
end

function Permissions.Get(universeId, DEBUG_loggedInUserId)
	local requestInfo = {
		Url = Http.BuildRobloxUrl(PERMISSIONS_REQUEST_TYPE, PERMISSIONS_URL, universeId),
		Method = "GET",
	}
	
	-- TODO (awarwick) 4/25/2019 - Remove when web endpoint works
	return Promise.new(function(resolve, reject)
		-- Prevent yielding
		spawn(function()
			resolve(DEBUG_GetDummyPermissions(DEBUG_loggedInUserId))
		end)
	end)

	--[[
	-- TODO (awarwick) 4/25/2019 - Enable when web endpoint works
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

function Permissions.Set(universeId, permissions)
	local permissionAdds,permissionDeletes = resolvePermissionChanges(permissions.Current, permissions.Changed)
	local postRequestInfo = {
		Url = Http.BuildRobloxUrl(PERMISSIONS_REQUEST_TYPE, PERMISSIONS_URL, universeId),
		Method = "POST",
		Body = permissionAdds,
	}
	local deleteRequestInfo = {
		Url = Http.BuildRobloxUrl(PERMISSIONS_REQUEST_TYPE, PERMISSIONS_URL, universeId),
		Method = "DELETE",
		Body = permissionDeletes,
	}
	
	-- TODO (awarwick) 4/25/2019 - Remove when web endpoint works
	for _,v in pairs(permissionAdds) do
		print("ADDING", v.SubjectType, v.SubjectId, v.Action)
	end
	for _,v in pairs(permissionDeletes) do
		print("DELETING", v.SubjectType, v.SubjectId, v.Action)
	end
	return Promise.new(function(resolve, rject) spawn(function() resolve(true) end) end)

	-- TODO (awarwick) 4/25/2019 - Enable when web endpoint works
	--[[return Http.Request(deleteRequestInfo):andThen(function(jsonResult)
		return Http.Request(permissionAdds)
	end)
	:catch(function()
		warn("Game Settings: Request to update permissions failed")
		return Promise.resolve(false)
	end)]]
end

return Permissions