--[[
	Get a list of a user's friends
]]

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Libs.Framework.Util.Promise)

local PermissionsConstants = require(Plugin.Core.Components.AssetConfiguration.Permissions.PermissionsConstants)

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

function UserFriends.Get(networkInterface, userId)
	return networkInterface:getLocalUserFriends(userId):andThen(
		function(result)
			local resultData = HttpService:JSONDecode(result.responseBody)
			return true, deserializeResult(resultData["data"])
		end,
		function(error)
			warn("Asset Config, Package Permissions, Could not fetch friends for user.")
			return {}
		end
	)
end

return UserFriends