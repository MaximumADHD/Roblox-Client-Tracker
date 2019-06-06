--[[
	Get users from the entire platform whose username matches a search term
]]

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local Http = require(Plugin.Src.Networking.Http)

local PermissionsConstants = require(Plugin.Src.Components.Permissions.PermissionsConstants)

local SEARCH_REQUEST_URL = "search/users/results?keyword=%s&maxRows=%d"
local SEARCH_REQUEST_TYPE = "www"

local WEB_KEYS = {
	Users = "UserSearchResults",

	Name = "Name",
	Id = "UserId",
}

-- Endpoint doesn't support search terms outside of this criteria
local MIN_NAME_LENGTH = 3
local MAX_NAME_LENGTH = 20

local function deserializeResult(userSearchResults)
	local users = {}

	for _,webItem in pairs(userSearchResults) do
		table.insert(users, {
			[PermissionsConstants.SubjectNameKey] = webItem[WEB_KEYS.Name],
			[PermissionsConstants.SubjectIdKey] = webItem[WEB_KEYS.Id],
		})
	end

	return users
end

local SearchUsers = {}

function SearchUsers.Get(searchTerm)
	local requestInfo = {
		Url = Http.BuildRobloxUrl(SEARCH_REQUEST_TYPE, SEARCH_REQUEST_URL, searchTerm, PermissionsConstants.MaxSearchResultsPerSubjectType),
		Method = "GET",
	}

	if #searchTerm < MIN_NAME_LENGTH or #searchTerm > MAX_NAME_LENGTH then
		return Promise.resolve({[PermissionsConstants.UserSubjectKey] = {}})
	end

	return Http.Request(requestInfo):andThen(function(jsonResult)
		local result = HttpService:JSONDecode(jsonResult)
		return {[PermissionsConstants.UserSubjectKey] = deserializeResult(result[WEB_KEYS.Users])}
	end)
	:catch(function()
		warn("Game Settings: Failed to search for users matching '"..searchTerm.."'")
		return Promise.reject()
	end)
end

return SearchUsers