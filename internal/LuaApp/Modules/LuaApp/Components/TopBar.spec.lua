return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local LocalizationService = game:GetService("LocalizationService")

	local Rodux = require(Modules.Common.Rodux)
	local Roact = require(Modules.Common.Roact)
	local RoactRodux = require(Modules.Common.RoactRodux)

	local Localization = require(Modules.LuaApp.Localization)
	local RoactLocalization = require(Modules.LuaApp.RoactLocalization)
	local StringsLocale = require(Modules.LuaApp.StringsLocale)

	local AppReducer = require(Modules.LuaApp.AppReducer)

	local TopBar = require(Modules.LuaApp.Components.TopBar)

	it("should create and destroy without errors", function()
		local store = Rodux.Store.new(AppReducer)

		local element = Roact.createElement(RoactLocalization.LocalizationProvider, {
			localization = Localization.new(StringsLocale, LocalizationService.RobloxLocaleId),
		}, {
			TopBar = Roact.createElement(TopBar, {
				showBackButton = true,
				showBuyRobux = true,
				showNotifications = true,
				showSearch = true,
				textKey = { StringsLocale.Keys.GAMES },
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