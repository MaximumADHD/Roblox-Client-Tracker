return function()
	local LocalizationService = game:GetService("LocalizationService")

	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local Roact = require(Modules.Common.Roact)

	local Details = require(Modules.LuaApp.Components.GameDetails.Details)
	local GameDetail = require(Modules.LuaApp.Models.GameDetail)
	local RoactLocalization = require(Modules.LuaApp.RoactLocalization)
	local Localization = require(Modules.LuaApp.Localization)
	local StringsLocale = require(Modules.LuaApp.StringsLocale)

	it("should create and destroy without errors", function()
		local localization = Localization.new(StringsLocale, LocalizationService.RobloxLocaleId)
		local root = Roact.createElement(RoactLocalization.LocalizationProvider, {
			localization = localization,
		}, {
			element = Roact.createElement(Details, {
				gameDetail = GameDetail.mock(),
				padding = 12,
				isMaxWidth = true,
			}),
		})
		local instance = Roact.reify(root)
		Roact.teardown(instance)
	end)
end