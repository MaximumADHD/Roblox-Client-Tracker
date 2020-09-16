--[[
	Get users from the entire platform whose username matches a search term
]]

local FFlagStudioAllowPkgPermsForOtherUsrsAndGrps = game:GetFastFlag("StudioAllowPkgPermsForOtherUsrsAndGrps")

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Libs.Framework.Util.Promise)

local PermissionsConstants = require(Plugin.Core.Components.AssetConfiguration.Permissions.PermissionsConstants)

local SEARCH_REQUEST_URL = "search/users/results?keyword=%s&maxRows=%d"
local SEARCH_REQUEST_TYPE = "www"

local FALLBACK_REQUEST_URL = "users/get-by-username"
local FALLBACK_REQUEST_TYPE = "api"
local FALLBACK_MISSING_USER_ERROR = "User not found"

local WEB_KEYS = {
	Users = "UserSearchResults",

	Name = "Name",
	Id = "UserId",
}

local FALLBACK_WEB_KEYS = {
	Name = "Username",
	Id = "Id",
	Success = "success",
	Error = "errorMessage",
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

	local fallbackRequestInfo = {
		Url = Http.BuildRobloxUrl(FALLBACK_REQUEST_TYPE, FALLBACK_REQUEST_URL),
		Method = "GET",
		Params = {
			username = searchTerm,
		}
	}

	if #searchTerm < MIN_NAME_LENGTH or #searchTerm > MAX_NAME_LENGTH and FFlagStudioAllowPkgPermsForOtherUsrsAndGrps then
		return Promise.resolve({[PermissionsConstants.UserSubjectKey] = {}})
	end

	return Http.Request(requestInfo):andThen(function(jsonResult)
		local result = HttpService:JSONDecode(jsonResult)[WEB_KEYS.Users]
		if result then
			return {[PermissionsConstants.UserSubjectKey] = deserializeResult(result)}
		else
			return Http.Request(fallbackRequestInfo):andThen(function(jsonResult)
				local result = HttpService:JSONDecode(jsonResult)
				
				if result[FALLBACK_WEB_KEYS.Success] == false then
					local errorMessage = result[FALLBACK_WEB_KEYS.Error]
					if errorMessage ~= FALLBACK_MISSING_USER_ERROR then
						return Promise.reject("Failed to find user: "..tostring(errorMessage))
					else
						return {[PermissionsConstants.UserSubjectKey] = {}}
					end
				else
					return {
						[PermissionsConstants.UserSubjectKey] = {
							{
								[PermissionsConstants.SubjectNameKey] = result[FALLBACK_WEB_KEYS.Name],
								[PermissionsConstants.SubjectIdKey] = result[FALLBACK_WEB_KEYS.Id],
							}
						}
					}
				end
			end)
		end
	end)
	:catch(function()
		warn("Asset Config: Failed to search for users matching '"..searchTerm.."'")
		return Promise.reject()
	end)
end

return SearchUsers