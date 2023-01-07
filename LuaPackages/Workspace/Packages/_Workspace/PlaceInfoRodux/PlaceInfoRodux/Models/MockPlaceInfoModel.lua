--!nonstrict
local PlaceInfoRodux = script:FindFirstAncestor("PlaceInfoRodux")
local Packages = PlaceInfoRodux.Parent

local MockId = require(Packages.Dev.UnitTestHelpers).MockId

local PlaceInfoModel = require(script.Parent.PlaceInfoModel)

local MockPlaceInfoModel = {}

function MockPlaceInfoModel.mock()
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

setmetatable(MockPlaceInfoModel, {
	__index = PlaceInfoModel,
})

return MockPlaceInfoModel
