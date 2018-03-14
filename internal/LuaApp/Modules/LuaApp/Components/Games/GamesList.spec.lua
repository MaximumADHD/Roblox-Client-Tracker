return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local LocalizationService = game:GetService("LocalizationService")

	local Rodux = require(Modules.Common.Rodux)
	local Roact = require(Modules.Common.Roact)
	local RoactRodux = require(Modules.Common.RoactRodux)

	local AppReducer = require(Modules.LuaApp.AppReducer)
	local GamesList = require(Modules.LuaApp.Components.Games.GamesList)

	local Localization = require(Modules.LuaApp.Localization)
	local RoactLocalization = require(Modules.LuaApp.RoactLocalization)
	local StringsLocale = require(Modules.LuaApp.StringsLocale)

	it("should create and destroy without errors", function()
		local store = Rodux.Store.new(AppReducer)

		local element = Roact.createElement(RoactLocalization.LocalizationProvider, {
			localization = Localization.new(StringsLocale, LocalizationService.RobloxLocaleId),
		}, {
			GamesList = Roact.createElement(GamesList, {
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
			}),
		})

		local screenGui = Instance.new("ScreenGui")
		local instance = Roact.reify(Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			element
		}), screenGui)
		Roact.teardown(instance)
	end)
end