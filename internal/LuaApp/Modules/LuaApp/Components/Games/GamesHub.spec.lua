return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local LocalizationService = game:GetService("LocalizationService")

	local Roact = require(Modules.Common.Roact)
	local Rodux = require(Modules.Common.Rodux)
	local RoactRodux = require(Modules.Common.RoactRodux)

	local AppReducer = require(Modules.LuaApp.AppReducer)
	local GamesHub = require(Modules.LuaApp.Components.Games.GamesHub)

	local Localization = require(Modules.LuaApp.Localization)
	local RoactLocalization = require(Modules.LuaApp.RoactLocalization)
	local StringsLocale = require(Modules.LuaApp.StringsLocale)

	it("should create and destroy without errors", function()
		local store = Rodux.Store.new(AppReducer)

		local element = Roact.createElement(RoactLocalization.LocalizationProvider, {
			localization = Localization.new(StringsLocale, LocalizationService.RobloxLocaleId),
		}, {
			Store = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				App = Roact.createElement(GamesHub, {
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
					gamesInSort = {
						["Popular"] = {10},
					},
				})
			}),
		})

		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end