--[[
	Utility functions and constants used for interacting with YouTube
	Useful when a game has a YouTube video as a thumbnail.
]]

local GuiService = game:GetService("GuiService")

local YOUTUBE_HOST = "www.youtube.com"
local WATCH_URL = "/watch?v=%s"

local YoutubeUtils = {}

local self = YoutubeUtils

function YoutubeUtils.BuildUrl(url, videoHash)
	return "https://" .. YOUTUBE_HOST .. string.format(url, videoHash)
end

function YoutubeUtils.BuildWatchUrl(videoHash)
	return self.BuildUrl(WATCH_URL, videoHash)
end

function YoutubeUtils.OpenVideo(videoHash)
	local watchUrl = self.BuildWatchUrl(videoHash)
	GuiService:OpenBrowserWindow(watchUrl)
end

return YoutubeUtils