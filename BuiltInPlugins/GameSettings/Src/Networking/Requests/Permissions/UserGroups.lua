--[[
	Get a list of a user's groups
]]

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local Http = require(Plugin.Src.Networking.Http)

local PermissionsConstants = require(Plugin.Src.Components.Permissions.PermissionsConstants)

local GROUPS_REQUEST_URL = "v2/users/%d/groups/roles"
local GROUPS_REQUEST_TYPE = "groups"

local WEB_KEYS = {
	Group = "group",
	Name = "name",
	Id = "id",
}

local function deserializeResult(groupSearchResults)
	local groups = {}

	for _,webItem in pairs(groupSearchResults) do
		table.insert(groups, {
			[PermissionsConstants.SubjectNameKey] = webItem[WEB_KEYS.Group][WEB_KEYS.Name],
			[PermissionsConstants.SubjectIdKey] = webItem[WEB_KEYS.Group][WEB_KEYS.Id],
		})
	end

	return groups
end

local UserGroups = {}

function UserGroups.Get(userId)
	return Promise.resolve({[PermissionsConstants.GroupSubjectKey] = {}})
end

return UserGroups