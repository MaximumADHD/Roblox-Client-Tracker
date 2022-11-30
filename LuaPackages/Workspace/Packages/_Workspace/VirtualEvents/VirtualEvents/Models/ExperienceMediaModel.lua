--[[
	Model for the payload returned from:
	https://games.roblox.com/docs#!/Games/get_v2_games_universeId_media
]]

export type Response = {
	assetTypeId: number,
	assetType: "Image" | "YouTubeVideo",
	imageId: number?,
	videoHash: string?,
	videoTitle: string?,
	approved: boolean,
	altText: string?,
}

local ExperienceMediaModel = {}

function ExperienceMediaModel.mock(imageId: number?): Response
	return {
		assetTypeId = -1,
		assetType = "Image",
		imageId = if imageId then imageId else 123456789,
		-- We only deal with images right now, so we'll need to extend this
		-- model later if we wind up needing to handle video content
		videoHash = nil,
		videoTitle = nil,
		approved = true,
		altText = "Alt Text",
	}
end

return ExperienceMediaModel
