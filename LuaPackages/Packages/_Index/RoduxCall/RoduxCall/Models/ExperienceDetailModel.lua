local RoduxCall = script:FindFirstAncestor("RoduxCall")
local Packages = RoduxCall.Parent

local t = require(Packages.t) :: any

local ExperienceDetailModel = {}

function ExperienceDetailModel.new(call)
	assert(ExperienceDetailModel.isValid(call))

	ExperienceDetailModel.__index = ExperienceDetailModel

	local self = call

	setmetatable(self, ExperienceDetailModel)

	return self
end

function ExperienceDetailModel.mock(mergeTable: any)
	mergeTable = mergeTable or {}

	local self = ExperienceDetailModel.new({
		universeName = mergeTable.universeName or "Iris",
		placeId = mergeTable.placeId or 11402255591,
		gameInstanceId = mergeTable.gameInstanceId or "123456",
		reservedServerAccessCode = mergeTable.reservedServerAccessCode or "12345",
	})

	return self
end

function ExperienceDetailModel.format(experieneDetailData)
	local self = ExperienceDetailModel.new({
		universeName = experieneDetailData.universeName,
		placeId = experieneDetailData.placeId,
		gameInstanceId = experieneDetailData.gameInstanceId,
		reservedServerAccessCode = experieneDetailData.reservedServerAccessCode,
	})

	return self
end

ExperienceDetailModel.isValid = t.strictInterface({
	universeName = t.string,
	placeId = t.number,
	gameInstanceId = t.string,
	reservedServerAccessCode = t.optional(t.string),
})

return ExperienceDetailModel
