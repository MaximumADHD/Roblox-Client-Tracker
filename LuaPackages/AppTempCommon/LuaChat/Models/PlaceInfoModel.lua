local CorePackages = game:GetService("CorePackages")

local MockId = require(CorePackages.AppTempCommon.LuaApp.MockId)

local FFlagLuaAppConvertUniverseIdToString = settings():GetFFlag("LuaAppConvertUniverseIdToStringV364")

local PlaceInfoModel = {}

function PlaceInfoModel.new()
	local self = {}

	return self
end

function PlaceInfoModel.mock()
	local self = PlaceInfoModel.new()

	self.builder = "builder"
	self.builderId = MockId()
	self.description = "description"
	self.imageToken = MockId()
	self.isPlayable = true
	self.name = "name"
	self.placeId = MockId()
	self.price = 0
	self.reasonProhibited = nil
	self.universeId = MockId()
	self.universeRootPlaceId = MockId()
	self.url = "url"

	return self
end

function PlaceInfoModel.fromWeb(data)
	local self = data or {}
	self.placeId = tostring(self.placeId)

	if FFlagLuaAppConvertUniverseIdToString then
		self.universeId = tostring(self.universeId)
	end

	return self
end

return PlaceInfoModel