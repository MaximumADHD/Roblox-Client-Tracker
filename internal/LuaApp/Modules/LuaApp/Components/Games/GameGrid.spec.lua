return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules

	local Roact = require(Modules.Common.Roact)
	local Rodux = require(Modules.Common.Rodux)
	local RoactRodux = require(Modules.Common.RoactRodux)

	local AppReducer = require(Modules.LuaApp.AppReducer)
	local GameGrid = require(Modules.LuaApp.Components.Games.GameGrid)

	it("should create and destroy without errors", function()
		local store = Rodux.Store.new(AppReducer)

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
			gameGrid = Roact.createElement(GameGrid, {
				AnchorPoint = Vector2.new(0.5, 0),
				LayoutOrder = 7,
				ParentSize = Vector2.new(200, 200),
				Position = UDim2.new(0.5, 0, 0, 0),
				Size = UDim2.new(1, 0, 1, 0),
				gameIDs = { 10, },
				games = {
					[10] = {
						universeId = 10,
						placeId = 1,
						imageToken = "asdFGSAGwa23r",
						imageUrl = "",
						name = "Murder Mystery 2",
						playerCount = 4627,
						totalUpVotes = 93,
						totalDownVotes = 7,
					},
				},
			}),
		})
		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end