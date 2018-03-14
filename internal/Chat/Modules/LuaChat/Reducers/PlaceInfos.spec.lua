return function()
	local CoreGui = game:GetService("CoreGui")
	local Modules = CoreGui.RobloxGui.Modules
	local LuaChat = Modules.LuaChat
	local FetchedPlaceInfo = require(LuaChat.Actions.FetchedPlaceInfo)
	local PlaceInfosReducer = require(script.Parent.PlaceInfos)

	describe("initial state", function()
		it("should return an initial table when passed nil", function()
			local state = PlaceInfosReducer(nil, {})
			expect(state).to.be.a("table")
		end)
	end)

	describe("FetchedPlaceInfo", function()
		it("should add place info to the store", function()
			local state = PlaceInfosReducer(nil, {})

			local returnedPlaceInfo = FetchedPlaceInfo(1337, {
				placeId = 1337,
				imageToken = "image-token",
			})

			state = PlaceInfosReducer(state, returnedPlaceInfo)

			expect(state[1337]).to.equal(returnedPlaceInfo.placeInfo)
		end)
	end)
end