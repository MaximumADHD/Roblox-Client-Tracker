return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local SearchesInGames = require(script.Parent.SearchesInGames)
	local SearchInGames = require(Modules.LuaApp.Models.SearchInGames)
	local AddSearchInGames = require(Modules.LuaApp.Actions.AddSearchInGames)
	local RemoveMostRecentSearchInGames = require(Modules.LuaApp.Actions.RemoveMostRecentSearchInGames)
	local ResetSearchesInGames = require(Modules.LuaApp.Actions.ResetSearchesInGames)

	local function countChildObjects(aTable)
		local numChildren = 0
		for _ in pairs(aTable) do
			numChildren = numChildren + 1
		end

		return numChildren
	end

	local function createFakeSearches(numSearches)
		local searches = {}
		for i = 1, numSearches do
			local search = SearchInGames.mock()
			search.keyword = search.keyword..tostring(i)
			table.insert(searches, search)
		end

		return searches
	end

	it("should be empty by default", function()
		local defaultState = SearchesInGames(nil, {})

		expect(type(defaultState)).to.equal("table")
		expect(countChildObjects(defaultState)).to.equal(0)
	end)

	it("should be unchanged by other actions", function()
		local oldState = SearchesInGames(nil, {})
		local newState = SearchesInGames(oldState, { type = "not a real action" })
		expect(oldState).to.equal(newState)
	end)

	describe("AddSearchInGames", function()
		it("should preserve purity", function()
			local searchInGames = SearchInGames.mock()
			local action = AddSearchInGames(searchInGames)
			local oldState = SearchesInGames(nil, {})
			local newState = SearchesInGames(oldState, action)
			expect(oldState).to.never.equal(newState)
		end)

		it("should add searches", function()
			local expectedNumSearches = 5
			local someSearches = createFakeSearches(expectedNumSearches)

			local state = nil
			for i = 1, expectedNumSearches do
				state = SearchesInGames(state, AddSearchInGames(someSearches[i]))
				expect(countChildObjects(state)).to.equal(i)
				expect(state[i].keyword).to.equal(someSearches[i].keyword)
			end

			-- check that the searches have been added to the store
			for index, search in pairs(someSearches) do
				local storedSearch = state[index]
				expect(storedSearch.keyword).to.equal(search.keyword)
				expect(storedSearch.suggestedKeyword).to.equal(search.suggestedKeyword)
				expect(storedSearch.correctedKeyword).to.equal(search.correctedKeyword)
				expect(storedSearch.filteredKeyword).to.equal(search.filteredKeyword)
				expect(storedSearch.hasMoreRows).to.equal(search.hasMoreRows)
				for key in pairs(storedSearch.games) do
					expect(storedSearch.games[key]).to.equal(search.games[key])
				end
			end
		end)
	end)

	describe("RemoveMostRecentSearchInGames", function()
		it("should preserve purity", function()
			local action = RemoveMostRecentSearchInGames()
			local oldState = SearchesInGames(nil, {})
			local newState = SearchesInGames(oldState, action)
			expect(oldState).to.equal(newState)

			local newSearch = createFakeSearches(1)
			oldState = SearchesInGames(oldState, AddSearchInGames(newSearch[1]))
			newState = SearchesInGames(oldState, action)
			expect(oldState).to.never.equal(newState)
			expect(countChildObjects(oldState)).to.equal(1)
			expect(countChildObjects(newState)).to.equal(0)
		end)

		it("should remove most recent search", function()
			local expectedNumSearches = 5
			local someSearches = createFakeSearches(expectedNumSearches)
			local state = nil
			for i = 1, expectedNumSearches do
				state = SearchesInGames(state, AddSearchInGames(someSearches[i]))
				expect(countChildObjects(state)).to.equal(i)
				expect(state[i].keyword).to.equal(someSearches[i].keyword)
			end

			table.remove(someSearches)
			state = SearchesInGames(state, RemoveMostRecentSearchInGames())
			expect(countChildObjects(state)).to.equal(4)
			expect(state[#state].keyword).to.equal(someSearches[#someSearches].keyword)

			table.remove(someSearches)
			state = SearchesInGames(state, RemoveMostRecentSearchInGames())
			expect(countChildObjects(state)).to.equal(3)
			expect(state[#state].keyword).to.equal(someSearches[#someSearches].keyword)
		end)
	end)

	describe("ResetSearchesInGames", function()
		it("should preserve purity", function()
			local action = ResetSearchesInGames()
			local oldState = SearchesInGames(nil, {})
			local newState = SearchesInGames(oldState, action)
			expect(oldState).to.never.equal(newState)
		end)

		it("should reset searches", function()
			local expectedNumSearches = 3
			local someSearches = createFakeSearches(expectedNumSearches)
			local state = nil
			for i = 1, expectedNumSearches do
				state = SearchesInGames(state, AddSearchInGames(someSearches[i]))
				expect(countChildObjects(state)).to.equal(i)
				expect(state[i].keyword).to.equal(someSearches[i].keyword)
			end

			state = SearchesInGames(state, ResetSearchesInGames())
			expect(countChildObjects(state)).to.equal(0)
		end)
	end)
end