return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local EntriesInSort = require(script.Parent.EntriesInSort)
	local SetEntriesInSort = require(Modules.LuaApp.Actions.SetEntriesInSort)
	local AddGameSorts = require(Modules.LuaApp.Actions.AddGameSorts)
	local GameSort = require(Modules.LuaApp.Models.GameSort)

	it("should be unmodified by other actions", function()
		local oldState = EntriesInSort(nil, {})
		local newState = EntriesInSort(oldState, { type = "not a real action" })

		expect(oldState).to.equal(newState)
	end)

	describe("AddGameSorts", function()
		it("should update when empty", function()
			local oldState = EntriesInSort(nil, {})
			local testSort = GameSort.mock()
			testSort.name = "Popular"
			local action = AddGameSorts({testSort})

			local newState = EntriesInSort(oldState, action)
			expect(newState["Popular"]).to.never.equal(nil)
		end)
	end)

	describe("SetEntriesInSort", function()
		it("should preserve purity", function()
			local oldState = EntriesInSort(nil, {})
			local newState = EntriesInSort(oldState, SetEntriesInSort("Popular", {}))
			expect(oldState).to.never.equal(newState)
		end)

		it("should set the games in sorts", function()
			local expectedModifiedGroup = "Popular"
			local testGameSorts = {"testUniverId1", "testUniverseId2", "testUniverseId3", "testUniverseId4"}
			local expectedAddedSorts = #testGameSorts

			local defaultState = EntriesInSort({[expectedModifiedGroup] = {}}, {})

			-- check that there are no sorts in the expected group to begin with
			local totalSorts = #defaultState[expectedModifiedGroup]
			expect(totalSorts).to.equal(0)

			-- modify the store
			local action = SetEntriesInSort(expectedModifiedGroup, testGameSorts)
			local modifiedState = EntriesInSort(defaultState, action)

			-- check that there are now games
			totalSorts = #modifiedState[expectedModifiedGroup]
			expect(totalSorts).to.equal(expectedAddedSorts)

			-- check that the games has been added to the store
			for index, universeId in pairs(modifiedState[expectedModifiedGroup]) do
				expect(universeId).to.equal(testGameSorts[index])
			end
		end)
	end)
end