return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local Roact = require(Modules.Common.Roact)
	local Rodux = require(Modules.Common.Rodux)
	local RoactRodux = require(Modules.Common.RoactRodux)

	local AppReducer = require(Modules.LuaApp.AppReducer)
	local GameCard = require(Modules.LuaApp.Components.Games.GameCard)

	it("should create and destroy without errors", function()
		local store = Rodux.Store.new(AppReducer)

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
			gameCard = Roact.createElement(GameCard, {
				game = {
					universeId = 1,
					placeId = 1,
					imageToken = "asdFGSAGwa23r",
					name = "Murder Mystery 2",
					playerCount = 4627,
					totalUpVotes = 93,
					totalDownVotes = 7,
				},
			}),
		})
		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end