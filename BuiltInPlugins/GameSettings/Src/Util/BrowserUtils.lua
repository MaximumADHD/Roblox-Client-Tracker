--[[
	Utility functions and constants used for interacting with webpages.
	Includes YouTube and the game settings webpage.
]]

local GuiService = game:GetService("GuiService")

local YOUTUBE_HOST = "www.youtube.com"
local WATCH_URL = "/watch?v=%s"

local PLACE_SETTINGS_URL = "places/%d/update#"
local PLACE_SETTINGS_TYPE = "www"

local LOCALIZATION_SETTINGS_URL = "localization/games/%d/configure"
local LOCALIZATION_SETTINGS_TYPE = "www"

local Plugin = script.Parent.Parent.Parent
local Http = require(Plugin.Src.Networking.Http)

local BrowserUtils = {}

local self = BrowserUtils

function BrowserUtils.BuildWatchUrl(videoHash)
	return "https://" .. YOUTUBE_HOST .. string.format(WATCH_URL, videoHash)
end

function BrowserUtils.BuildPlaceSettingsUrl(placeId)
	return Http.BuildRobloxUrl(PLACE_SETTINGS_TYPE, PLACE_SETTINGS_URL, placeId)
end

function BrowserUtils.OpenVideo(videoHash)
	local watchUrl = self.BuildWatchUrl(videoHash)
	GuiService:OpenBrowserWindow(watchUrl)
end

function BrowserUtils.OpenPlaceSettings(placeId)
	local settingsUrl = self.BuildPlaceSettingsUrl(placeId)
	GuiService:OpenBrowserWindow(settingsUrl)
end

function BrowserUtils.OpenLocalizationSettings(gameId)
	return function()
		local url = Http.BuildRobloxUrl(LOCALIZATION_SETTINGS_TYPE, LOCALIZATION_SETTINGS_URL, gameId)
		GuiService:OpenBrowserWindow(url)
	end
end

return BrowserUtils
