local RoduxCall = script:FindFirstAncestor("RoduxCall")
local Packages = RoduxCall.Parent
local t = require(Packages.t) :: any
local Cryo = require(Packages.Cryo) :: any
local Enums = require(RoduxCall.Enums) :: any

local SuggestedCalleeModel = {}

function SuggestedCalleeModel.new(suggestedCallee)
	assert(SuggestedCalleeModel.isValid(suggestedCallee))

	SuggestedCalleeModel.__index = SuggestedCalleeModel

	local self = suggestedCallee

	setmetatable(self, SuggestedCalleeModel)

	return self
end

function SuggestedCalleeModel.mock(mergeTable: any)
	mergeTable = mergeTable or {}

	local self = SuggestedCalleeModel.new({
		userId = mergeTable.userId or 12345,
		userPresenceType = mergeTable.userPresenceType or "Offline",
		lastLocation = "",
	})

	return self
end

function SuggestedCalleeModel.format(suggestedCalleeModel)
	return Cryo.Dictionary.join(suggestedCalleeModel, {
		userPresenceType = Enums.PresenceType[suggestedCalleeModel.userPresenceType],
	})
end

SuggestedCalleeModel.isValid = t.strictInterface({
	userId = t.number,
	userPresenceType = function(value)
		return Enums.PresenceType[value] ~= nil
	end,
	lastLocation = t.string,
})

return SuggestedCalleeModel
