return function()
	local Plugin = script.Parent.Parent.Parent

	local SetLiveSearch = require(Plugin.Core.Actions.SetLiveSearch)
	local SetLiveSearching = require(Plugin.Core.Actions.SetLiveSearching)

	local LiveSearch = require(Plugin.Core.Reducers.LiveSearch)

	it("should return a table with the correct members", function()
		local state = LiveSearch(nil, {})

		expect(type(state)).to.equal("table")
		expect(state.isSearching).to.be.ok()
		expect(state.results).to.be.ok()
		expect(state.searchTerm).to.be.ok()
	end)

	describe("SetLiveSearch action", function()
		it("should update searchTerm and results", function()
			local state = LiveSearch(nil, {})

			state = LiveSearch(state, SetLiveSearch("term", {
				Key = "Value",
			}))

			expect(state.searchTerm).to.equal("term")
			expect(state.results).to.be.ok()
			expect(state.results.Key).to.equal("Value")
		end)
	end)

	describe("SetLiveSearching action", function()
		it("should update isSearching status", function()
			local state = LiveSearch(nil, {})

			state = LiveSearch(state, SetLiveSearching(true))

			expect(state.isSearching).to.equal(true)
		end)
	end)
end
