return function()
	local GamesList = require(script.Parent.GamesList)

	local Modules = game:GetService("CoreGui").RobloxGui.Modules

	local Roact = require(Modules.Common.Roact)
	local Rodux = require(Modules.Common.Rodux)
	local AppReducer = require(Modules.LuaApp.AppReducer)
	local GameSortGroup = require(Modules.LuaApp.Models.GameSortGroup)
	local GameSortEntry = require(Modules.LuaApp.Models.GameSortEntry)
	local GameSort = require(Modules.LuaApp.Models.GameSort)
	local Game = require(Modules.LuaApp.Models.Game)
	local mockServices = require(Modules.LuaApp.TestHelpers.mockServices)

	it("should create and destroy without errors", function()
		local gameSortGroup = GameSortGroup.mock()
		local gameSort = GameSort.mock()
		local entry = GameSortEntry.mock()
		gameSort.name = "Popular"
		table.insert(gameSortGroup.sorts, gameSort.name)
		local game = Game.mock()

		local store = Rodux.Store.new(AppReducer, {
			GameSortGroups = { Games = gameSortGroup },
			GameSorts = { [gameSort.name] = gameSort },
			EntriesInSort = { [gameSort.name] = entry },
			Games = { [entry.placeId] = game },
		})
		local element = mockServices({
			GamesList = Roact.createElement(GamesList, {
				sort = gameSort,
			})
		}, {
			includeStoreProvider = true,
			store = store,
		})

		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end