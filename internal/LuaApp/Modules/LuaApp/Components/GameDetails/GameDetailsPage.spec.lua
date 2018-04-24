return function()
	local CoreGui = game:GetService("CoreGui")
	local LocalizationService = game:GetService("LocalizationService")

	local Modules = CoreGui.RobloxGui.Modules
	local Roact = require(Modules.Common.Roact)
	local Rodux = require(Modules.Common.Rodux)
	local RoactRodux = require(Modules.Common.RoactRodux)

	local AppReducer = require(Modules.LuaApp.AppReducer)
	local GameDetailsPage = require(Modules.LuaApp.Components.GameDetails.GameDetailsPage)
	local RoactLocalization = require(Modules.LuaApp.RoactLocalization)
	local Localization = require(Modules.LuaApp.Localization)
	local StringsLocale = require(Modules.LuaApp.StringsLocale)
	local Game = require(Modules.LuaApp.Models.Game)
	local GameDetail = require(Modules.LuaApp.Models.GameDetail)

	it("should create and destroy without errors", function()
		local store = Rodux.Store.new(AppReducer)

		local localization = Localization.new(StringsLocale, LocalizationService.RobloxLocaleId)
		local root = Roact.createElement(RoactLocalization.LocalizationProvider, {
			localization = localization,
		}, {
			Store = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				App = Roact.createElement("ScreenGui", {
					ZIndexBehavior = Enum.ZIndexBehavior.Sibling}, {
					GameDetailsPage = Roact.createElement(GameDetailsPage, {
						game = Game.mock(),
						gameDetail = GameDetail.mock(),
					}),
				}),
			}),
		})

		local instance = Roact.reify(root, CoreGui, "GameDetailsPage")

		Roact.teardown(instance)
	end)
end