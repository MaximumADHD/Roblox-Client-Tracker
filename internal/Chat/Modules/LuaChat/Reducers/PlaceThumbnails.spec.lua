return function()
	local CoreGui = game:GetService("CoreGui")
	local Modules = CoreGui.RobloxGui.Modules
	local LuaChat = Modules.LuaChat
	local FetchedPlaceThumbnail = require(LuaChat.Actions.FetchedPlaceThumbnail)
	local PlaceThumbnailsReducer = require(script.Parent.PlaceThumbnails)

	describe("initial state", function()
		it("should return an initial table when passed nil", function()
			local state = PlaceThumbnailsReducer(nil, {})
			expect(state).to.be.a("table")
		end)
	end)

	describe("fetching", function()
		it("should add place thumbnail to the store", function()
			local state = PlaceThumbnailsReducer(nil, {})

			local returnedThumbnail = FetchedPlaceThumbnail("imageToken", "thumbnail")

			state = PlaceThumbnailsReducer(state, returnedThumbnail)

			expect(state["imageToken"]).to.equal("thumbnail")
		end)
	end)
end