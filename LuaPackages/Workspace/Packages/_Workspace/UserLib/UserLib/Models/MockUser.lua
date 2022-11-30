local UserLib = script:FindFirstAncestor("UserLib")
local Packages = UserLib.Parent
local MockId = require(Packages.Dev.UnitTestHelpers).MockId

local User = require(script.Parent.User)

local MockUser = {}
MockUser.__index = MockUser

function MockUser.new()
	local self = User.new()

	self.id = MockId()

	self.isFetching = false
	self.isFriend = false
	self.friendRank = 0
	self.lastLocation = nil
	self.name = "USER NAME"
	self.universeId = nil
	self.placeId = nil
	self.rootPlaceId = nil
	self.gameInstanceId = nil
	self.presence = User.PresenceType.OFFLINE
	self.membership = nil
	self.thumbnails = nil
	self.lastOnline = nil
	self.displayName = "DN+" .. self.name
	self.externalAppDisplayName = "EXTERNAL APP DISPLAY NAME"

	setmetatable(self, {
		__index = User,
	})

	return self
end

function MockUser.mockEndpointResponse()
	return {
		created = "0001-01-01T06:00:00Z",
		displayName = "DN+12345",
		friendFrequentRank = 1,
		friendFrequentScore = 2,
		id = 12345,
		isBanned = false,
		isDeleted = false,
		isOnline = false,
		name = "USER NAME",
		presenceType = 0,
	}
end

return MockUser
