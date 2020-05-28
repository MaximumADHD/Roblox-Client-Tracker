--[[
	Get groups from the entire platform whose name matches a search term
]]

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local Http = require(Plugin.Src.Networking.Http)

local PermissionsConstants = require(Plugin.Src.Components.Permissions.PermissionsConstants)

local SEARCH_REQUEST_URL = "v1/groups/search/lookup"
local SEARCH_REQUEST_TYPE = "groups"

local WEB_KEYS = {
	Name = "name",
	Id = "id",
}

-- Endpoint doesn't support search terms outside of this criteria
local MIN_NAME_LENGTH = 1
local MAX_NAME_LENGTH = 50

local function deserializeResult(groupSearchResults)
	local groups = {}

	for _,webItem in pairs(groupSearchResults) do
		table.insert(groups, {
			[PermissionsConstants.SubjectNameKey] = webItem[WEB_KEYS.Name],
			[PermissionsConstants.SubjectIdKey] = webItem[WEB_KEYS.Id],
		})
	end

	return {[PermissionsConstants.GroupSubjectKey] = groups}
end

local SearchGroups = {}

function SearchGroups.Get(searchTerm)
	local requestInfo = {
		Url = Http.BuildRobloxUrl(SEARCH_REQUEST_TYPE, SEARCH_REQUEST_URL, searchTerm),
		Method = "GET",
		Params = {groupName=searchTerm},
	}

	return Promise.resolve({[PermissionsConstants.GroupSubjectKey] = {}})
end

return SearchGroups