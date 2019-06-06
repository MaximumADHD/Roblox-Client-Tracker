--[[
	Get a list of a user's friends
]]

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local Http = require(Plugin.Src.Networking.Http)

local PermissionsConstants = require(Plugin.Src.Components.Permissions.PermissionsConstants)

local FRIENDS_REQUEST_URL = "v1/users/%d/friends"
local FRIENDS_REQUEST_TYPE = "friends"

local WEB_KEYS = {
	Name = "name",
	Id = "id",
}

local function deserializeResult(friendSearchResults)
	local friends = {}

	for _,webItem in pairs(friendSearchResults) do
		table.insert(friends, {
			[PermissionsConstants.SubjectNameKey] = webItem[WEB_KEYS.Name],
			[PermissionsConstants.SubjectIdKey] = webItem[WEB_KEYS.Id],
		})
	end

	return friends
end

local UserFriends = {}

function UserFriends.Get(userId)
	local requestInfo = {
		Url = Http.BuildRobloxUrl(FRIENDS_REQUEST_TYPE, FRIENDS_REQUEST_URL, userId),
		Method = "GET",
	}

	return Http.Request(requestInfo):andThen(function(jsonResult)
		local result = HttpService:JSONDecode(jsonResult)
		return deserializeResult(result.data)
	end)
	:catch(function()
		warn("Game Settings: Could not fetch friends for user.")
		return Promise.reject()
	end)
end

return UserFriends