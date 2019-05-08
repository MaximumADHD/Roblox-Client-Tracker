return function()
	local InspectAndBuyFolder = script.Parent.Parent
	local SetFavoriteAsset = require(InspectAndBuyFolder.Actions.SetFavoriteAsset)
	local FavoriteAssets = require(script.Parent.FavoriteAssets)

	local MOCK_ID = "123"

	local function countKeys(t)
		local count = 0
		for _ in pairs(t) do
			count = count + 1
		end
		return count
	end

	describe("SetFavoriteAsset", function()
		it("should add a new asset as favorited/unfavorited", function()
			local newState = FavoriteAssets(nil, SetFavoriteAsset(MOCK_ID, true))
			expect(newState[MOCK_ID]).to.equal(true)
			expect(countKeys(newState)).to.equal(1)
		end)

		it("should update the favorite status of an existing asset", function()
			local newState = FavoriteAssets(nil, SetFavoriteAsset(MOCK_ID, true))
			expect(newState[MOCK_ID]).to.equal(true)
			newState = FavoriteAssets(newState, SetFavoriteAsset(MOCK_ID, false))
			expect(newState[MOCK_ID]).to.equal(false)
			expect(countKeys(newState)).to.equal(1)
		end)
	end)
end