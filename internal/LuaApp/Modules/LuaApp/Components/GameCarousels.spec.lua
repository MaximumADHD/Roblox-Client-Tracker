return function()
	local GameCarousels = require(script.Parent.GameCarousels)

	local Modules = game:GetService("CoreGui").RobloxGui.Modules

	local AppReducer = require(Modules.LuaApp.AppReducer)
	local GameSortGroup = require(Modules.LuaApp.Models.GameSortGroup)
	local GameSortEntry = require(Modules.LuaApp.Models.GameSortEntry)
	local GameSort = require(Modules.LuaApp.Models.GameSort)
	local Game = require(Modules.LuaApp.Models.Game)
	local mockServices = require(Modules.LuaApp.TestHelpers.mockServices)
	local Roact = require(Modules.Common.Roact)
	local Rodux = require(Modules.Common.Rodux)


	it("should create and destroy without errors with one carousel", function()
		local gameSortGroup = GameSortGroup.mock()
		local gameSort = GameSort.mock()
		table.insert(gameSortGroup.sorts, gameSort.name)
		local entry = GameSortEntry.mock()
		local game = Game.mock()

		local store = Rodux.Store.new(AppReducer, {
			GameSortGroups = { Games = gameSortGroup },
			GameSorts = { [gameSort.name] = gameSort },
			EntriesInSort = { [gameSort.name] = { entry } },
			Games = { [entry.placeId] = game },
		})

		local element = mockServices({
			GameCarousel = Roact.createElement(GameCarousels, {
				gameSortGroup = "Games",
			})
		}, {
			includeStoreProvider = true,
			store = store
		})

		local instance = Roact.reify(element)
		Roact.teardown(instance)
		store:Destruct()
	end)

	it("should create and destroy without errors with more than one carousel", function()
		local gameSortGroup = GameSortGroup.mock()
		local gameSort1 = GameSort.mock()
		gameSort1.name = "Sort1"
		local gameSort2 = GameSort.mock()
		gameSort2.name = "Sort2"
		table.insert(gameSortGroup.sorts, gameSort1.name)
		table.insert(gameSortGroup.sorts, gameSort2.name)
		local entry1 = GameSortEntry.mock()
		local entry2 = GameSortEntry.mock()
		local game1 = Game.mock()
		local game2 = Game.mock()
		entry2.placeId = 666
		game2.placeId = entry2.placeId

		local store = Rodux.Store.new(AppReducer, {
			GameSortGroups = { Games = gameSortGroup },
			GameSorts = {
				[gameSort1.name] = gameSort1,
				[gameSort2.name] = gameSort2,
			},
			EntriesInSort = {
				[gameSort1.name] = { entry1 },
				[gameSort2.name] = { entry1, entry2 },
			 },
			Games = {
				[entry1.placeId] = game1,
				[entry2.placeId] = game2,
			},
		})
		local element = mockServices({
			GameCarousel = Roact.createElement(GameCarousels, {
				gameSortGroup = "Games",
			})
		}, {
			includeStoreProvider = true,
			store = store
		})
		local instance = Roact.reify(element)
		Roact.teardown(instance)
		store:Destruct()
	end)
end