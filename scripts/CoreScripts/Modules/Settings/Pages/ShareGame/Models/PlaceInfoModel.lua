local Modules = game:GetService("CoreGui").RobloxGui.Modules
local ShareGame = Modules.Settings.Pages.ShareGame

local MockId = require(ShareGame.MockId)

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
	self.reasonProhibited = nil

	return self
end

function PlaceInfoModel.fromWeb(data)
	local self = data or {}
	self.placeId = tostring(self.placeId)

	return self
end

return PlaceInfoModel