local Packages = script:FindFirstAncestor("RoduxGames").Parent
local t = require(Packages.t)
local CreatorModel = require(script.Parent.CreatorModel)

export type Type = {
	experienceId: string,
	name: string,
	description: string,
	price: number,
	rootPlaceId: string,
	creator: CreatorModel.Type,
	maxPlayers: number,
}

local GameModel = {}

function GameModel.new(game)
	assert(GameModel.isValid(game))

	GameModel.__index = GameModel

	local self = game

	setmetatable(self, GameModel)

	return self
end

function GameModel.mock(mergeTable)
	mergeTable = mergeTable or {}

	local self = GameModel.new({
		experienceId = mergeTable.experienceId or "experienceId",
		name = mergeTable.name or "name",
		description = mergeTable.description or "description",
		price = mergeTable.price or 666,
		rootPlaceId = mergeTable.rootPlaceId or "rootPlaceId",
		creator = CreatorModel.mock(mergeTable.creator),
		maxPlayers = mergeTable.maxPlayers or 6,
	})

	return self
end

function GameModel.format(gameData)
	local self = GameModel.new({
		experienceId = tostring(gameData.id),
		name = gameData.name,
		description = gameData.description or "",
		price = gameData.price or 0,
		rootPlaceId = tostring(gameData.rootPlaceId),
		creator = CreatorModel.format(gameData.creator),
		maxPlayers = gameData.maxPlayers,
	})

	return self
end

GameModel.isValid = t.strictInterface({
	experienceId = t.string,
	name = t.string,
	description = t.string,
	price = t.number,
	rootPlaceId = t.string,
	creator = CreatorModel.isValid,
	maxPlayers = t.number,
})

return GameModel
