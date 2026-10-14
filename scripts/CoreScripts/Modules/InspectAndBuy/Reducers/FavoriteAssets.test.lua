local InspectAndBuyFolder = script.Parent.Parent
local SetFavoriteAsset = require(InspectAndBuyFolder.Actions.SetFavoriteAsset)
local FavoriteAssets = require(script.Parent.FavoriteAssets)

local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it

local MOCK_ID = "123"

describe("SetFavoriteAsset", function()
	it("should add a new asset as favorited/unfavorited", function()
		local newState = FavoriteAssets(nil, SetFavoriteAsset(MOCK_ID, true))
		expect(newState).toEqual({
			[MOCK_ID] = true,
		})
	end)

	it("should update the favorite status of an existing asset", function()
		local newState = FavoriteAssets(nil, SetFavoriteAsset(MOCK_ID, true))
		expect(newState).toEqual({ [MOCK_ID] = true })
		newState = FavoriteAssets(newState, SetFavoriteAsset(MOCK_ID, false))
		expect(newState).toEqual({ [MOCK_ID] = false })
	end)
end)
