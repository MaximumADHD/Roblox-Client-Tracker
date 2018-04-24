return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local LocalizationService = game:GetService("LocalizationService")

	local Localization = require(Modules.LuaApp.Localization)
	local RoactLocalization = require(Modules.LuaApp.RoactLocalization)
	local StringsLocale = require(Modules.LuaApp.StringsLocale)

	local Roact = require(Modules.Common.Roact)
	local Overview = require(Modules.LuaApp.Components.GameDetails.Overview)
	local Game = require(Modules.LuaApp.Models.Game)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(RoactLocalization.LocalizationProvider, {
			localization = Localization.new(StringsLocale, LocalizationService.RobloxLocaleId),
		}, {
			Overview = Roact.createElement(Overview, {
				game = Game.mock(),
				padding = 12,
				isMaxWidth = false,
				showShare = true,

				LayoutOrder = 1,
			}),
		})
		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end