return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local Roact = require(Modules.Common.Roact)
	local Rodux = require(Modules.Common.Rodux)
	local RoactRodux = require(Modules.Common.RoactRodux)

	local AppReducer = require(Modules.LuaApp.AppReducer)
	local GameCard = require(Modules.LuaApp.Components.Games.GameCard)

	local Entry = require(Modules.LuaApp.Models.GameSortEntry)
	local Game = require(Modules.LuaApp.Models.Game)

	it("should create and destroy without errors", function()
		local store = Rodux.Store.new(AppReducer)

		local entry = Entry.mock()
		entry.game = Game.mock()

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
			gameCard = Roact.createElement(GameCard, {
				entry = entry,
			}),
		})
		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)

	it("should create and destroy without errors when a game is sponsored", function()
		local store = Rodux.Store.new(AppReducer)

		local game = Game.mock()
		local entry = Entry.fromJsonData({
			placeId = game.placeId,
			isSponsored = true,
		})
		entry.game = game

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
			gameCard = Roact.createElement(GameCard, {
				entry = entry,
			}),
		})
		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end