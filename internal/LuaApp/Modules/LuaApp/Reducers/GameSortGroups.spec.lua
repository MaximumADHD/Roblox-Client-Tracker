return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local GameSortGroups = require(script.Parent.GameSortGroups)
	local SetGameSortsInGroup = require(Modules.LuaApp.Actions.SetGameSortsInGroup)

	local function countChildObjects(aTable)
		local numChildren = 0
		for _ in pairs(aTable) do
			numChildren = numChildren + 1
		end

		return numChildren
	end

	it("should have a few expected fields by default", function()
		local defaultState = GameSortGroups(nil, {})

		expect(defaultState).to.be.ok()
		expect(defaultState.Games).to.be.ok()
		expect(defaultState.GamesSeeAll).to.be.ok()
		expect(defaultState.HomeGames).to.be.ok()
	end)

	it("should be unmodified by other actions", function()
		local oldState = GameSortGroups(nil, {})
		local newState = GameSortGroups(oldState, { type = "not a real action" })

		expect(oldState).to.equal(newState)
	end)

	describe("SetGameSortsInGroup", function()
		it("should preserve purity", function()
			local oldState = GameSortGroups(nil, {})
			local newState = GameSortGroups(oldState, SetGameSortsInGroup("Games", {}))
			expect(oldState).to.never.equal(newState)
		end)

		it("should set the game sorts in group", function()
			local expectedModifiedGroup = "Games"
			local testGameSorts = {"testSortToken1", "testSortToken2", "testSortToken3", "testSortToken4"}
			local expectedAddedSorts = countChildObjects(testGameSorts)

			local defaultState = GameSortGroups(nil, {})

			-- check that there are no sorts in the expected group to begin with
			local totalSorts = countChildObjects(defaultState[expectedModifiedGroup].sorts)
			expect(totalSorts).to.equal(0)

			-- modify the store
			local action = SetGameSortsInGroup(expectedModifiedGroup, testGameSorts)
			local modifiedState = GameSortGroups(defaultState, action)

			-- check that there are now sorts
			totalSorts = countChildObjects(modifiedState[expectedModifiedGroup].sorts)
			expect(totalSorts).to.equal(expectedAddedSorts)

			-- check that the sorts in testGameSorts have been added to the store
			for index, sortId in pairs(modifiedState[expectedModifiedGroup].sorts) do
				expect(sortId).to.equal(testGameSorts[index])
			end
		end)
	end)
end