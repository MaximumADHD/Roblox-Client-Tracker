return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local GameSorts = require(script.Parent.GameSorts)
	local GameSort = require(Modules.LuaApp.Models.GameSort)

	local AddGameSorts = require(Modules.LuaApp.Actions.AddGameSorts)

	local function countChildObjects(aTable)
		local numChildren = 0
		for _ in pairs(aTable) do
			numChildren = numChildren + 1
		end

		return numChildren
	end
	local function createFakeGameSorts(numSorts)
		local gameSorts = {}
		for i = 1, numSorts do
			local aSort = GameSort.mock()
			aSort.token = tostring(i)
			aSort.name = "A Test Sort" .. aSort.token
			table.insert(gameSorts, aSort)
		end

		return gameSorts
	end

	it("should be empty by default", function()
		local defaultState = GameSorts(nil, {})

		expect(type(defaultState)).to.equal("table")
		expect(countChildObjects(defaultState)).to.equal(0)
	end)

	it("should be unchanged by other actions", function()
		local oldState = GameSorts(nil, {})
		local newState = GameSorts(oldState, { type = "not a real action" })
		expect(oldState).to.equal(newState)
	end)

	describe("AddGameSorts", function()
		it("should preserve purity", function()
			local oldState = GameSorts(nil, {})
			local newState = GameSorts(oldState, AddGameSorts(createFakeGameSorts(1)))
			expect(newState).to.never.equal(oldState)
		end)

		it("should add game sorts", function()
			local expectedNumSorts = 5
			local someSorts = createFakeGameSorts(expectedNumSorts)
			local action = AddGameSorts(someSorts)

			-- add some games to the game sorts store
			local modifiedState = GameSorts(nil, action)
			expect(countChildObjects(modifiedState)).to.equal(expectedNumSorts)

			-- check that the games have been added to the store
			for _, sort in pairs(someSorts) do
				local storedSort = modifiedState[sort.name]
				expect(storedSort.token).to.equal(sort.token)
				expect(storedSort.name).to.equal(sort.name)
				expect(storedSort.timeOptionsAvailable).to.equal(sort.timeOptionsAvailable)
				expect(storedSort.genreOptionsAvailable).to.equal(sort.genreOptionsAvailable)
				expect(storedSort.numberOfRows).to.equal(sort.numberOfRows)
				expect(storedSort.isDefaultSort).to.equal(sort.isDefaultSort)
			end
		end)
	end)
end
