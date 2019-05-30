--[[
	Get all of the roles of a group. The owner is not always returned by permissions,
	so we need to manually construct it if it is missing (i.e. user has not given
	owning group an explicit permission)
]]

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Http = require(Plugin.Src.Networking.Http)

local Constants = require(script.Parent.Constants)
local webKeys = Constants.webKeys

local GROUP_ROLES_URL = "v1/groups/%d/roles"
local GROUP_ROLES_REQUEST_TYPE = "groups"

local GroupRoles = {}

function GroupRoles.Get(groupId)
	local groupRoles = {}
	
	local requestInfo = {
		Url = Http.BuildRobloxUrl(GROUP_ROLES_REQUEST_TYPE, GROUP_ROLES_URL, groupId),
		Method = "GET",
	}

	return Http.Request(requestInfo):andThen(function(jsonResult)
		local result = HttpService:JSONDecode(jsonResult)

		for _,roleMetadata in pairs(result.roles) do
			table.insert(groupRoles, {
				[webKeys.RoleName] = roleMetadata.name,
				[webKeys.RoleId] = roleMetadata.id,
				[webKeys.RoleRank] = roleMetadata.rank,
			})
		end

		return groupRoles
	end)
end

return GroupRoles