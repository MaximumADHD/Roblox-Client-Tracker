--[[
	Loads all user, group, and roleset permissions for the universe
]]

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local Cryo = require(Plugin.Cryo)
local Analytics = require(Plugin.Src.Util.Analytics)
local Http = require(Plugin.Src.Networking.Http)

local OwnerMetadata = require(Plugin.Src.Networking.Requests.Permissions.OwnerMetadata)
local DeserializeFromRequest = require(Plugin.Src.Networking.Requests.Permissions.DeserializeFromRequest)
local SerializeForRequest = require(Plugin.Src.Networking.Requests.Permissions.SerializeForRequest)
local PermissionsConstants = require(Plugin.Src.Components.Permissions.PermissionsConstants)
local Constants = require(Plugin.Src.Networking.Requests.Permissions.Constants)

local webKeys = Constants.webKeys

local PERMISSIONS_URL = "v2/universes/%d/permissions"
local PERMISSIONS_REQUEST_TYPE = "develop"

-- The endpoints may start to fail above this amount
local MAX_CHANGES = 60

local RELEVANT_ENTRIES = {
	permissions = true,
}

local Permissions = {}

local function getTextForAction(action)
	if action == PermissionsConstants.PlayKey then
		return "Play"
	elseif action == PermissionsConstants.EditKey then
		return "Edit"
	elseif action == PermissionsConstants.AdminKey then
		return "Edit"
	elseif action == PermissionsConstants.NoAccessKey then
		return "No Access"
	else
		-- not supported
		error("Invalid Action: "..tostring(action))
	end
end

function Permissions.AcceptsValue(key)
	return RELEVANT_ENTRIES[key]
end

function Permissions.Get(universeId, ownerName, ownerId, ownerType)
	local requestInfo = {
		Url = Http.BuildRobloxUrl(PERMISSIONS_REQUEST_TYPE, PERMISSIONS_URL, universeId),
		Method = "GET",
	}

	if game.GameId == 0 then
		return DeserializeFromRequest.DeserializePermissions({}, ownerName, ownerId, ownerType):andThen(function(permissions, groupMetadata)
			return {
				permissions = permissions,
				groupMetadata = groupMetadata,
				groupOwnerUserId = nil,
			}
		end)
	end
	
	return Promise.all({
		Http.Request(requestInfo):andThen(function(jsonResult) return {permissions=HttpService:JSONDecode(jsonResult).data} end),
		OwnerMetadata.Get(),
	}):andThen(function(loaded)
		loaded = Cryo.Dictionary.join(unpack(loaded))

		return DeserializeFromRequest.DeserializePermissions(loaded.permissions, ownerName, ownerId, ownerType):andThen(function(permissions, groupMetadata)
			return {
				permissions = permissions,
				groupMetadata = groupMetadata,
				groupOwnerUserId = loaded.groupOwnerUserId
			}
		end)
	end)
	:catch(function()
		warn("Game Settings: Could not fetch permissions for universe")
		Analytics.onPermissionFailed()
		return Promise.reject()
	end)
end

function Permissions.Set(universeId, props)
	local changes = SerializeForRequest.diffPermissionChanges(props.Current, props.Changed)

	local permissionAdds, permissionDeletes = SerializeForRequest.SerializePermissions(props, changes)
	local numChanges = #permissionAdds + #permissionDeletes

	if (numChanges > MAX_CHANGES) then
		warn("Too many changes ("..numChanges..") to permissions. Maximum at once is "+MAX_CHANGES)
		return Promise.reject()
	end

	for _, added in pairs(permissionAdds) do
		if added[webKeys.Action] == webKeys.PlayAction then
			if added[webKeys.SubjectType] == webKeys.UserSubject then
				Analytics.onUserAdded()
			elseif added[webKeys.SubjectType] == webKeys.GroupSubject then
				Analytics.onGroupAdded()
			end
		end
	end

	for _, deleted in pairs(permissionDeletes) do
		if deleted[webKeys.Action] == webKeys.PlayAction then
			if deleted[webKeys.SubjectType] == webKeys.UserSubject then
				Analytics.onUserRemoved()
			elseif deleted[webKeys.SubjectType] == webKeys.GroupSubject then
				Analytics.onGroupRemoved()
			end
		end
	end

	for subjectType, subjectTypeChanges in pairs(changes) do
		for subjectId, change in pairs(subjectTypeChanges) do
			if subjectType == PermissionsConstants.UserSubjectKey then
				if change.Current ~= nil then
					if change.Changed ~= nil then
						Analytics.numberOfUsers(subjectId, getTextForAction(change.Changed))
					end
					Analytics.onPermissionRemoved(subjectId, "User", getTextForAction(change.Current))
				end
				if change.Changed ~= nil then
					Analytics.onPermissionGiven(subjectId, "User", getTextForAction(change.Changed))
				end
			elseif subjectType == PermissionsConstants.GroupSubjectKey then
				if change.Current ~= nil then
					Analytics.onPermissionRemoved(subjectId, "Group", getTextForAction(change.Current))
				end
				if change.Changed ~= nil then
					Analytics.onPermissionGiven(subjectId, "Group", getTextForAction(change.Changed))
				end
			end
		end
	end

	local numCollaborators = -1 -- Offset and don't count the owner
	for _,_ in pairs(props.Changed.groupMetadata) do
		numCollaborators = numCollaborators + 1
	end
	for _,_ in pairs(props.Changed.permissions[PermissionsConstants.UserSubjectKey]) do
		numCollaborators = numCollaborators + 1
	end

	Analytics.onNumCollaboratorsChanged(numCollaborators)

	local postRequestInfo = {
		Url = Http.BuildRobloxUrl(PERMISSIONS_REQUEST_TYPE, PERMISSIONS_URL, universeId),
		Method = "POST",
		Body = HttpService:JSONEncode(permissionAdds),
	}
	local deleteRequestInfo = {
		Url = Http.BuildRobloxUrl(PERMISSIONS_REQUEST_TYPE, PERMISSIONS_URL, universeId),
		Method = "DELETE",
		Body = HttpService:JSONEncode(permissionDeletes),
	}

	return Http.Request(deleteRequestInfo):andThen(function()
		return Http.Request(postRequestInfo)
	end)
	:catch(function()
		warn("Game Settings: Request to update permissions failed")
		Analytics.onPermissionFailed()
		return Promise.reject()
	end)
end

return Permissions