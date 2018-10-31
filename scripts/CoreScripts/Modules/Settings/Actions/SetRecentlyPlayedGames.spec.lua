return function()
	describe("require", function()
		it("should create without errors", function()
			require(script.Parent.SetRecentlyPlayedGames)
		end)

		it("should set the name", function()
			local action = require(script.Parent.SetRecentlyPlayedGames)

			expect(action.name).to.equal("SetRecentlyPlayedGames")
		end)
	end)

	describe("call", function()
		it("should return a table when called as a function", function()
			local action = require(script.Parent.SetRecentlyPlayedGames)

			action = action({})
			expect(action).to.be.a("table")
		end)

		it("should set the type", function()
			local action = require(script.Parent.SetRecentlyPlayedGames)

			action = action({})
			expect(action.type).to.equal("SetRecentlyPlayedGames")
		end)

		it("should set the games", function()
			local action = require(script.Parent.SetRecentlyPlayedGames)

			local gameSortData = {}
			action = action(gameSortData)
			expect(action.gameSortData).to.be.a("table")
		end)

		it("should set the type and name to be equal", function()
			local action = require(script.Parent.SetRecentlyPlayedGames)

			local actionItem = action({})
			expect(actionItem.type).to.equal(action.name)
		end)
	end)
end