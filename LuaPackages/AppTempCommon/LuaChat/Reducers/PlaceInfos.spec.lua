return function()
	local CoreGui = game:GetService("CoreGui")
	local Modules = CoreGui.RobloxGui.Modules
	local LuaApp = Modules.LuaApp
	local LuaChat = Modules.LuaChat

	local MockId = require(LuaApp.MockId)
	local ReceivedMultiplePlaceInfos = require(LuaChat.Actions.ReceivedMultiplePlaceInfos)

	local PlaceInfosReducer = require(script.Parent.PlaceInfos)

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