--[[
	{
		placeId  :  number ,
		isSponsored  :  bool ,
		adId  :  number ,
	}
]]
local GameSortEntry = {}

function GameSortEntry.new()
	local self = {}

	return self
end

function GameSortEntry.mock()
	local self = GameSortEntry.new()
	self.placeId = 149757
	self.isSponsored = false
	self.adId = nil

	return self
end

function GameSortEntry.fromJsonData(gameSortEntryJson)
	local self = GameSortEntry.new()
	self.placeId = gameSortEntryJson.placeId
	self.isSponsored = gameSortEntryJson.isSponsored
	self.adId = gameSortEntryJson.nativeAdData

	return self
end

return GameSortEntry