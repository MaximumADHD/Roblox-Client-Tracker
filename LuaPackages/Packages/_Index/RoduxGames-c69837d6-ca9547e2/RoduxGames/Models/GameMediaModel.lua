local RoduxGames = script:FindFirstAncestor("RoduxGames")
local Packages = RoduxGames.Parent

local t = require(Packages.t)

export type Type = {
	assetTypeId: number?,
	assetType: string,
	imageId: number?,
	videoHash: string?,
	videoTitle: string?,
	approved: boolean,
	altText: string?,
}

-- Model for https://games.roblox.com/docs#!/Games/get_v2_games_universeId_media
local GameMediaModel = {}

function GameMediaModel.new(media: Type)
	assert(GameMediaModel.isValid(media))

	GameMediaModel.__index = GameMediaModel

	local self = media

	setmetatable(self, GameMediaModel)

	return self
end

function GameMediaModel.mock(mergeTable)
	mergeTable = mergeTable or {}

	local self = GameMediaModel.new({
		assetTypeId = mergeTable.assetTypeId or 1,
		assetType = mergeTable.assetType or "Image",
		imageId = mergeTable.imageId or 1234567890,
		approved = mergeTable.approved or false,
	})

	return self
end

function GameMediaModel.format(mediaData: Type)
	local self = GameMediaModel.new({
		assetTypeId = mediaData.assetTypeId,
		assetType = mediaData.assetType,
		imageId = mediaData.imageId,
		videoHash = mediaData.videoHash,
		videoTitle = mediaData.videoTitle,
		approved = if mediaData.approved then mediaData.approved else false,
		altText = mediaData.altText,
	})

	return self
end

GameMediaModel.isValid = t.strictInterface({
	assetTypeId = t.optional(t.number),
	assetType = t.string,
	imageId = t.optional(t.number),
	videoHash = t.optional(t.string),
	videoTitle = t.optional(t.string),
	approved = t.boolean,
	altText = t.optional(t.string),
})

return GameMediaModel
