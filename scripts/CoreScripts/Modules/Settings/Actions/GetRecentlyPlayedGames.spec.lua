return function()
	describe("require", function()
		it("should create without errors", function()
			require(script.Parent.GetRecentlyPlayedGames)
		end)

		it("should set the name", function()
			local action = require(script.Parent.GetRecentlyPlayedGames)

			expect(action.name).to.equal("GetRecentlyPlayedGames")
		end)
	end)

	describe("call", function()
		it("should return a table when called as a function", function()
			local action = require(script.Parent.GetRecentlyPlayedGames)

			action = action({})
			expect(action).to.be.a("table")
		end)

		it("should set the type", function()
			local action = require(script.Parent.GetRecentlyPlayedGames)

			action = action({})
			expect(action.type).to.equal("GetRecentlyPlayedGames")
		end)

		it("should set the type and name to be equal", function()
			local action = require(script.Parent.GetRecentlyPlayedGames)

			local actionItem = action({})
			expect(actionItem.type).to.equal(action.name)
		end)
	end)
end