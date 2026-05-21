local GuiService = game:GetService("GuiService")

local YOUTUBE_HOST = "www.youtube.com"
local WATCH_PATH = "/watch?v=%s"

local openVideoFromUrl = {}

function openVideoFromUrl.getYoutubeWatchUrl(videoHash: string)
	return "https://" .. YOUTUBE_HOST .. string.format(WATCH_PATH, videoHash)
end

function openVideoFromUrl.open(url: string)
	GuiService:OpenBrowserWindow(url)
end

return openVideoFromUrl
