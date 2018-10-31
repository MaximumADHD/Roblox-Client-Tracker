return function()
	describe("require", function()
		it("should create without errors", function()
			require(script.Parent.SetRecentlyPlayedGamesFetching)
		end)

		it("should set the name", function()
			local action = require(script.Parent.SetRecentlyPlayedGamesFetching)

			expect(action.name).to.equal("SetRecentlyPlayedGamesFetching")
		end)
	end)

	describe("call", function()
		it("should return a table when called as a function", function()
			local action = require(script.Parent.SetRecentlyPlayedGamesFetching)

			action = action({})
			expect(action).to.be.a("table")
		end)

		it("should set the type", function()
			local action = require(script.Parent.SetRecentlyPlayedGamesFetching)

			action = action({})
			expect(action.type).to.equal("SetRecentlyPlayedGamesFetching")
		end)

		it("should set fetching status.", function()
			local action = require(script.Parent.SetRecentlyPlayedGamesFetching)

			action = action(true)
			expect(action.fetching).to.equal(true)
		end)

		it("should set the type and name to be equal", function()
			local action = require(script.Parent.SetRecentlyPlayedGamesFetching)

			local actionItem = action({})
			expect(actionItem.type).to.equal(action.name)
		end)
	end)
end