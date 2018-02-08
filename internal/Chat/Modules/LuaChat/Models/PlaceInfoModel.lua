local LuaChat = script.Parent.Parent

local Constants = require(LuaChat.Constants)
local MockId = require(LuaChat.MockId)

local PlaceInfoModel = {}

function PlaceInfoModel.new()
	local self = {}

	return self
end

function PlaceInfoModel.mock()
	local self = PlaceInfoModel.new()

	self.placeId = MockId()
	self.universeRootPlaceId = MockId()
	self.description = "description"
	self.name = "name"
	self.isPlayable = true
	self.builder = "builder"
	self.price = 0
	self.imageToken = MockId()
	self.url = "url"
	self.universeId = MockId()
	self.builderId = MockId()

	return self
end

function PlaceInfoModel.fromWeb(data)
	local self = data
	self.placeId = tostring(self.placeId)
	self.status = Constants.WebStatus.SUCCESS
	return self
end

return PlaceInfoModel