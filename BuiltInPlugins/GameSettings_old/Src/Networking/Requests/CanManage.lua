--[[
	Get request to tell if the user can manage the current place.
]]

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local Http = require(Plugin.Src.Networking.Http)

local CAN_MANAGE_URL = "users/%d/canmanage/%d"
local CAN_MANAGE_TYPE = "api"

local CanManage = {}

function CanManage.Get(universeId, userId)
	local requestInfo = {
		Url = Http.BuildRobloxUrl(CAN_MANAGE_TYPE, CAN_MANAGE_URL, userId, universeId),
		Method = "GET",
	}

	return Http.Request(requestInfo):andThen(function(jsonResult)
		local result = HttpService:JSONDecode(jsonResult)
		return result.CanManage or false
	end)
	:catch(function()
		warn("Game Settings: Could not determine if the current Studio user can manage game settings.")
		return Promise.resolve(false)
	end)
end

return CanManage