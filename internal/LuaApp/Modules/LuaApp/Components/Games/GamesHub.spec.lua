return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules

	local Roact = require(Modules.Common.Roact)

	local GamesHub = require(Modules.LuaApp.Components.Games.GamesHub)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(GamesHub, {
			gameSorts = {
				{
					name = "Popular",
					isDefaultSort = true,
					games = { 10, }
				},
			},
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
		})
		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end