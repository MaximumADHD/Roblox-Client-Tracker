return function()
	local InspectAndBuyFolder = script.Parent.Parent
	local SetFavoriteBundle = require(InspectAndBuyFolder.Actions.SetFavoriteBundle)
	local FavoriteBundles = require(script.Parent.FavoriteBundles)

	local MOCK_ID = "123"

	local function countKeys(t)
		local count = 0
		for _ in pairs(t) do
			count = count + 1
		end
		return count
	end

	describe("SetFavoriteBundle", function()
		it("should add a new bundle as favorited/unfavorited", function()
			local newState = FavoriteBundles(nil, SetFavoriteBundle(MOCK_ID, true))
			expect(newState[MOCK_ID]).to.equal(true)
			expect(countKeys(newState)).to.equal(1)
		end)

		it("should update the favorite status of an existing bundle", function()
			local newState = FavoriteBundles(nil, SetFavoriteBundle(MOCK_ID, true))
			expect(newState[MOCK_ID]).to.equal(true)
			newState = FavoriteBundles(newState, SetFavoriteBundle(MOCK_ID, false))
			expect(newState[MOCK_ID]).to.equal(false)
			expect(countKeys(newState)).to.equal(1)
		end)
	end)
end