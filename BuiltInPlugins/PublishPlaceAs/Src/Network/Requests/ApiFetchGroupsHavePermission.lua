local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Packages.Promise)

local Http = require(Plugin.Src.Network.Http)
local Group = require(Plugin.Src.Network.Models.Group)

local FETCH_GROUPS_URL = "v1/user/groups/canmanage"
local FETCH_GROUPS_TYPE = "develop"

return function()
	local requestInfo = {
		Url = Http.BuildRobloxUrl(FETCH_GROUPS_TYPE, FETCH_GROUPS_URL),
		Method = "GET",
	}
	return Http.Request(requestInfo):andThen(function(jsonResult)
		local result = HttpService:JSONDecode(jsonResult)

		local returnVal = { groups = {} }
		for _, groupHasPermission in pairs(result.data) do
			local ok, val = Group.fromJsonData(groupHasPermission)
			if ok then
				table.insert(returnVal.groups, val)
			else
				error("Parsing error for ApiFetchGroupsCanManage: " .. val)
			end
		end
		return returnVal
	end)
end
