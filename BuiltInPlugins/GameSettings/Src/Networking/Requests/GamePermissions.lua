--[[
	Loads all user, group, and roleset permissions for the universe
]]

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local Cryo = require(Plugin.Cryo)
local Http = require(Plugin.Src.Networking.Http)

local OwnerMetadata = require(Plugin.Src.Networking.Requests.Permissions.OwnerMetadata)
local DeserializeFromRequest = require(Plugin.Src.Networking.Requests.Permissions.DeserializeFromRequest)
local SerializeForRequest = require(Plugin.Src.Networking.Requests.Permissions.SerializeForRequest)

local PERMISSIONS_URL = "v2/universes/%d/permissions"
local PERMISSIONS_REQUEST_TYPE = "develop"

-- The endpoints may start to fail above this amount
local MAX_CHANGES = 60

local RELEVANT_ENTRIES = {
	permissions = true,
}

local Permissions = {}

function Permissions.AcceptsValue(key)
	return RELEVANT_ENTRIES[key]
end

function Permissions.Get(universeId)
	local requestInfo = {
		Url = Http.BuildRobloxUrl(PERMISSIONS_REQUEST_TYPE, PERMISSIONS_URL, universeId),
		Method = "GET",
	}
	
	return Promise.all({
		Http.Request(requestInfo):andThen(function(jsonResult) return {permissions=HttpService:JSONDecode(jsonResult).data} end),
		OwnerMetadata.Get(),
	}):andThen(function(loaded)
		loaded = Cryo.Dictionary.join(unpack(loaded))

		return DeserializeFromRequest.DeserializePermissions(loaded.permissions, loaded.ownerName):andThen(function(permissions, groupMetadata)
			return {
				permissions = permissions,
				groupMetadata = groupMetadata,
				groupOwnerUserId = loaded.groupOwnerUserId
			}
		end)
	end)
	:catch(function()
		warn("Game Settings: Could not fetch permissions for universe")
		return Promise.reject()
	end)
end

function Permissions.Set(universeId, props)
	local permissionAdds, permissionDeletes = SerializeForRequest.SerializePermissions(props)
	local numChanges = #permissionAdds + #permissionDeletes

	if (numChanges > MAX_CHANGES) then
		warn("Too many changes ("..numChanges..") to permissions. Maximum at once is "+MAX_CHANGES)
		return Promise.reject()
	end
	
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
		return Promise.reject()
	end)
end

return Permissions