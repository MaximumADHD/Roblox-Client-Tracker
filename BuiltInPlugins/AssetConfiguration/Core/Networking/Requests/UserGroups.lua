--[[
	Get a list of a user's groups
]]

local FFlagStudioAllowPkgPermsForOtherUsrsAndGrps = game:GetFastFlag("StudioAllowPkgPermsForOtherUsrsAndGrps")

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Libs.Framework.Util.Promise)

local PermissionsConstants = require(Plugin.Core.Components.AssetConfiguration.Permissions.PermissionsConstants)

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
	if not FFlagStudioAllowPkgPermsForOtherUsrsAndGrps then
		return Promise.resolve({[PermissionsConstants.GroupSubjectKey] = {}})
	end 
	
	local requestInfo = {
		Url = Http.BuildRobloxUrl(GROUPS_REQUEST_TYPE, GROUPS_REQUEST_URL, userId),
		Method = "GET",
	}

	return Http.Request(requestInfo):andThen(function(jsonResult)
		local result = HttpService:JSONDecode(jsonResult)
		return deserializeResult(result.data)
	end)
	:catch(function()
		warn("Asset Config: Could not fetch groups for user.")
		return Promise.reject()
	end)

end

return UserGroups