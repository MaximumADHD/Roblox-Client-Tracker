return function()
	local GameDetailsPage = require(script.Parent.GameDetailsPage)

	local Modules = game:GetService("CoreGui").RobloxGui.Modules

	local Roact = require(Modules.Common.Roact)
	local Rodux = require(Modules.Common.Rodux)

	local mockServices = require(Modules.LuaApp.TestHelpers.mockServices)
	local AppReducer = require(Modules.LuaApp.AppReducer)
	local Game = require(Modules.LuaApp.Models.Game)
	local GameDetail = require(Modules.LuaApp.Models.GameDetail)
	local GameSortEntry = require(Modules.LuaApp.Models.GameSortEntry)

	it("should create and destroy without errors", function()
		local entry = GameSortEntry.mock()
		local game = Game.mock()

		local store = Rodux.Store.new(AppReducer, {
			EntriesInSort = { Recommended = { entry } },
			Games = { [entry.placeId] = game },
		})

		local element = mockServices({
			GameDetailsPage = Roact.createElement(GameDetailsPage, {
				game = Game.mock(),
				gameDetail = GameDetail.mock(),
			}),
		}, {
			includeStoreProvider = true,
			store = store,
		})

		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end