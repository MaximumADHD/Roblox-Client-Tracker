--!nonstrict
return function()
	local PlaceInfoRodux = script:FindFirstAncestor("PlaceInfoRodux")
	local Packages = PlaceInfoRodux.Parent

	local MockId = require(Packages.Dev.UnitTestHelpers).MockId

	local ReceivedMultiplePlaceInfos = require(PlaceInfoRodux.Actions).ReceivedMultiplePlaceInfos

	local PlaceInfosReducer = require(script.Parent.PlaceInfosReducer)

	describe("initial state", function()
		it("should return an initial table when passed nil", function()
			local state = PlaceInfosReducer(nil, {})
			expect(state).to.be.a("table")
		end)
	end)

	describe("ReceivedMultiplePlaceInfos", function()
		it("should add place info to the store", function()
			local state = PlaceInfosReducer(nil, {})

			local placeId = MockId()
			local returnedPlaceInfo = ReceivedMultiplePlaceInfos({
				{
					placeId = placeId,
					imageToken = "image-token",
				},
			})

			state = PlaceInfosReducer(state, returnedPlaceInfo)

			expect(state[placeId]).to.equal(returnedPlaceInfo.placeInfos[1])
		end)
	end)
end
