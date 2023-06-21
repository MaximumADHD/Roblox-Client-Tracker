local Root = script:FindFirstAncestor("RoduxPresence")
local Packages = Root.Parent
local Cryo = require(Packages.Cryo)
local t = require(Packages.t)

local Enums = require(Root.Enums)

local PresenceModel = {}

function PresenceModel.new(presence)
	assert(PresenceModel.isValid(presence))

	PresenceModel.__index = PresenceModel

	local self = presence

	setmetatable(self, PresenceModel)

	return self
end

function PresenceModel.mock(mergeTable)
	mergeTable = mergeTable or {}

	local self = PresenceModel.new({
		gameId = mergeTable.gameId or "Game-OoooOO-Id",
		invisibleModeExpiry = mergeTable.invisibleModeExpiry or "2061-01-01T00:00:00Z",
		lastLocation = mergeTable.lastLocation or "LastLocation",
		lastOnline = mergeTable.lastOnline or "LastOnline-OOOoOO",
		placeId = mergeTable.placeId or 123,
		rootPlaceId = mergeTable.rootPlaceId or 234,
		universeId = mergeTable.universeId or 345,
		userId = mergeTable.userId or 456,
		userPresenceType = mergeTable.userPresenceType or 0,
	})

	return self
end

function PresenceModel.format(presenceModel)
	return Cryo.Dictionary.join(presenceModel, {
		userPresenceType = Enums.PresenceType.fromRawValue(presenceModel.userPresenceType),
	})
end

PresenceModel.isValid = t.interface({
	gameId = t.optional(t.string),
	invisibleModeExpiry = t.optional(t.string),
	lastLocation = t.string,
	lastOnline = t.string,
	placeId = t.optional(t.union(t.numberPositive, t.string)),
	rootPlaceId = t.optional(t.union(t.numberPositive, t.string)),
	universeId = t.optional(t.union(t.numberPositive, t.string)),
	userId = t.union(t.numberPositive, t.string),
	userPresenceType = function(value)
		return Enums.PresenceType.fromRawValue(value) ~= nil
	end,
})

return PresenceModel
