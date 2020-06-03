--[[
	Request for managing places in a universe
]]

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local Http = require(Plugin.Src.Networking.Http)

local SHUTDOWN_PLACE_URL = "games/shutdown-all-instances"
local SHUTDOWN_PLACE_REQUEST_TYPE = "www"

local Games = {}

function Games.ShutdownPlace(id)
	local requestInfo = {
		Url = Http.BuildRobloxUrl(SHUTDOWN_PLACE_REQUEST_TYPE, SHUTDOWN_PLACE_URL),
		Method = "POST",
		Body = HttpService:JSONEncode({
			placeId = id,
			replaceInstances = false,
		}),
	}

	return Http.Request(requestInfo)
	:catch(function(err)
		warn("Could not shutdown place.", err)
		return Promise.reject({})
	end)
end

return Games
