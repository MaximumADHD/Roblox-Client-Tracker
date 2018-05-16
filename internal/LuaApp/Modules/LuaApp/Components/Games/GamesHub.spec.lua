return function()
	local GamesHub = require(script.Parent.GamesHub)

	local Modules = game:GetService("CoreGui").RobloxGui.Modules

	local Roact = require(Modules.Common.Roact)
	local mockServices = require(Modules.LuaApp.TestHelpers.mockServices)

	it("should create and destroy without errors", function()
		local element = mockServices({
			GamesHub = Roact.createElement(GamesHub, {
				gameSortGroups = {
					Games = {
						sorts = { "popularToken" },
					}
				},
				gameSorts = {
					popularToken = {
						name = "PopularSort",
						displayName = "Popular",
						isDefaultSort = true,
						games = { 10, },
						sortToken = "popularToken"
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
				entriesInSort = {
					["Popular"] = {10},
				},
			})
		}, {
			includeStoreProvider = true,
		})

		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end