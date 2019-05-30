--[[
	Get game owner name (we only have ID). We have to make this
	request separately from access permission endpoints since they don't return
	return anything for the owner by default unless given an explicit permission.
]]

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Http = require(Plugin.Src.Networking.Http)

local GROUPS_URL = "v1/groups/%d"
local GROUPS_REQUEST_TYPE = "groups"

local USERS_URL = "users/%d"
local USERS_REQUEST_TYPE = "api"

local OwnerMetadata = {}

function OwnerMetadata.Get()
	local nameResponseField
	local nameRequestInfo
	
	if game.CreatorType == Enum.CreatorType.Group then
		nameResponseField = "name"
		nameRequestInfo = {
			Url = Http.BuildRobloxUrl(GROUPS_REQUEST_TYPE, GROUPS_URL, game.CreatorId),
			Method = "GET",
		}
	else
		nameResponseField = "Username"
		nameRequestInfo = {
			Url = Http.BuildRobloxUrl(USERS_REQUEST_TYPE, USERS_URL, game.CreatorId),
			Method = "GET",
		}
	end

	return Http.Request(nameRequestInfo):andThen(function(jsonResult)
		local result = HttpService:JSONDecode(jsonResult)
		local ownerName = result[nameResponseField]
		local groupOwnerUserId = game.CreatorType == Enum.CreatorType.Group and result.owner.userId or nil

		return {
			ownerName = ownerName,
			groupOwnerUserId = groupOwnerUserId,
		}
	end)
end

return OwnerMetadata