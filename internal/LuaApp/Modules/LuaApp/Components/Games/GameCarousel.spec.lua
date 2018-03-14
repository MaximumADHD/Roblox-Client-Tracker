return function()
	local LocalizationService = game:GetService("LocalizationService")
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local Roact = require(Modules.Common.Roact)
	local Rodux = require(Modules.Common.Rodux)
	local RoactRodux = require(Modules.Common.RoactRodux)

	local AppReducer = require(Modules.LuaApp.AppReducer)
	local Localization = require(Modules.LuaApp.Localization)
	local RoactLocalization = require(Modules.LuaApp.RoactLocalization)
	local StringsLocale = require(Modules.LuaApp.StringsLocale)

	local GameCarousel = require(script.parent.GameCarousel)

	it("should create and destroy without errors", function()

		local store = Rodux.Store.new(AppReducer)

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
			localizationProvider = Roact.createElement(RoactLocalization.LocalizationProvider, {
				localization = Localization.new(StringsLocale, LocalizationService.RobloxLocaleId),
				}, {
				carousel = Roact.createElement(GameCarousel, {
					sort = {
						name = "Popular",
						displayName = "Popular",
						isDefaultSort = true,
					},
					games = {
						[10] = {
							universeId = 10,
							placeId = 1,
							imageToken = "asdFGSAGwa23r",
							name = "Murder Mystery 2",
							playerCount = 4627,
							totalUpVotes = 93,
							totalDownVotes = 7,
						}
					},
					gamesInSort = {
						["Popular"] = { 10, },
					},
					width = 100,
				}),
			})
		})
		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end