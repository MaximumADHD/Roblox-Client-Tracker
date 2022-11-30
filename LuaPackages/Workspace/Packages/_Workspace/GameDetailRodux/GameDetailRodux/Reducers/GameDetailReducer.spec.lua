return function()
	local GameDetailRodux = script:FindFirstAncestor("GameDetailRodux")
	local Packages = GameDetailRodux.Parent

	local GameDetailReducer = require(script.Parent.GameDetailReducer)
	local GameDetail = require(GameDetailRodux.Models.GameDetailModel)
	local AddGameDetails = require(GameDetailRodux.Actions.AddGameDetails)
	local TableUtilities = require(Packages.Dev.tutils)

	describe("AddGameDetails", function()
		it("should preserve purity", function()
			local oldState = GameDetailReducer(nil, {})
			local newState = GameDetailReducer(oldState, AddGameDetails({}))

			expect(oldState).to.never.equal(newState)
		end)

		it("should add game details", function()
			local gameDetail1 = GameDetail.mock("1", "game1")
			local gameDetail2 = GameDetail.mock("2", "game2")
			local gameDetail3 = GameDetail.mock("3", "game3")

			local oldState = GameDetailReducer({ ["1"] = gameDetail1 }, {})
			local newGameDetails = {
				["2"] = gameDetail2,
				["3"] = gameDetail3,
			}
			local newState = GameDetailReducer(oldState, AddGameDetails(newGameDetails))

			expect(TableUtilities.fieldCount(newState)).to.equal(3)
			expect(TableUtilities.shallowEqual(gameDetail1, newState["1"])).to.equal(true)
			expect(TableUtilities.shallowEqual(gameDetail2, newState["2"])).to.equal(true)
			expect(TableUtilities.shallowEqual(gameDetail3, newState["3"])).to.equal(true)
		end)
	end)
end
