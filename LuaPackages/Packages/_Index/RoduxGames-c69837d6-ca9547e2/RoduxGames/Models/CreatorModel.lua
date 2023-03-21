local RoduxGames = script:FindFirstAncestor("RoduxGames")
local Packages = RoduxGames.Parent

local t = require(Packages.t)
local CreatorTypeEnum = require(RoduxGames.Enums).CreatorType

export type Type = {
	creatorId: string,
	creatorType: typeof(CreatorTypeEnum),
	creatorName: string,
}

local CreatorModel = {}

function CreatorModel.new(creator)
	assert(CreatorModel.isValid(creator))

	CreatorModel.__index = CreatorModel

	local self = creator

	setmetatable(self, CreatorModel)

	return self
end

function CreatorModel.mock(mergeTable)
	mergeTable = mergeTable or {}

	local self = CreatorModel.new({
		creatorId = mergeTable.creatorId or "creatorId",
		creatorName = mergeTable.creatorName or "creatorName",
		creatorType = mergeTable.creatorType or CreatorTypeEnum.User,
	})

	return self
end

function CreatorModel.format(creatorData)
	local self = CreatorModel.new({
		creatorId = tostring(creatorData.id),
		creatorName = creatorData.name,
		creatorType = CreatorTypeEnum.fromRawValue(creatorData.type),
	})

	return self
end

CreatorModel.isValid = t.strictInterface({
	creatorId = t.string,
	creatorName = t.string,
	creatorType = t.userdata,
})

return CreatorModel
