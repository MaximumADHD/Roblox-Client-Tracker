return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules

	local Roact = require(Modules.Common.Roact)
	local Rodux = require(Modules.Common.Rodux)
	local RoactRodux = require(Modules.Common.RoactRodux)

	local AppReducer = require(Modules.LuaApp.AppReducer)
	local GameGrid = require(Modules.LuaApp.Components.Games.GameGrid)
	local GameSortEntry = require(Modules.LuaApp.Models.GameSortEntry)
	local GameSort = require(Modules.LuaApp.Models.GameSort)
	local Game = require(Modules.LuaApp.Models.Game)

	it("should create and destroy without errors", function()
		local gameSort = GameSort.mock()
		local entry = GameSortEntry.mock()
		local game = Game.mock()

		local store = Rodux.Store.new(AppReducer, {
			GameSorts = { [gameSort.name] = gameSort },
			EntriesInSort = { [gameSort.name] = { entry } },
			Games = { [entry.placeId] = game },
		})

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
			gameGrid = Roact.createElement(GameGrid, {
				AnchorPoint = Vector2.new(0.5, 0),
				LayoutOrder = 7,
				ParentSize = Vector2.new(200, 200),
				Position = UDim2.new(0.5, 0, 0, 0),
				Size = UDim2.new(1, 0, 1, 0),
				sort = gameSort,
			}),
		})
		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end