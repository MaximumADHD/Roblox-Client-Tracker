local FFlagLuaAppConvertUniverseIdToString = settings():GetFFlag("LuaAppConvertUniverseIdToStringV364")

local PlaceInfoModel = {}

function PlaceInfoModel.new()
	local self = {}

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
