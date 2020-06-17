--[[
	Request for managing places in a universe
]]

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local Http = require(Plugin.Src.Networking.Http)

local SHUTDOWN_GAME_URL = "v2/universes/%d/shutdown"
local SHUTDOWN_GAME_REQUEST_TYPE = "develop"

local Games = {}

function Games.ShutdownGame()
	local requestInfo = {
		Url = Http.BuildRobloxUrl(SHUTDOWN_GAME_REQUEST_TYPE, SHUTDOWN_GAME_URL, game.GameId),
		Method = "POST",
		Body = HttpService:JSONEncode({}),
	}

	return Http.Request(requestInfo)
	:catch(function(err)
		warn("Could not shutdown game.", err)
		return Promise.reject({})
	end)
end

return Games
