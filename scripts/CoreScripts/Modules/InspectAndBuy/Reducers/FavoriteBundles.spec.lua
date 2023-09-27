return function()
	local InspectAndBuyFolder = script.Parent.Parent
	local SetFavoriteBundle = require(InspectAndBuyFolder.Actions.SetFavoriteBundle)
	local FavoriteBundles = require(script.Parent.FavoriteBundles)

	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local MOCK_ID = "123"

	describe("SetFavoriteBundle", function()
		it("should add a new bundle as favorited/unfavorited", function()
			local newState = FavoriteBundles(nil, SetFavoriteBundle(MOCK_ID, true))
			expect(newState).toEqual({ [MOCK_ID] = true })
		end)

		it("should update the favorite status of an existing bundle", function()
			local newState = FavoriteBundles(nil, SetFavoriteBundle(MOCK_ID, true))
			expect(newState).toEqual({ [MOCK_ID] = true })
			newState = FavoriteBundles(newState, SetFavoriteBundle(MOCK_ID, false))
			expect(newState).toEqual({ [MOCK_ID] = false })
		end)
	end)
end
