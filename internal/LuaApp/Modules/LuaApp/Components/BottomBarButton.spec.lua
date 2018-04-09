return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local LocalizationService = game:GetService("LocalizationService")

	local Rodux = require(Modules.Common.Rodux)
	local Roact = require(Modules.Common.Roact)
	local RoactRodux = require(Modules.Common.RoactRodux)

	local AppReducer = require(Modules.LuaApp.AppReducer)
	local Localization = require(Modules.LuaApp.Localization)
	local RoactLocalization = require(Modules.LuaApp.RoactLocalization)
	local StringsLocale = require(Modules.LuaApp.StringsLocale)
	local AppPage = require(Modules.LuaApp.AppPage)

	local BottomBarButton = require(Modules.LuaApp.Components.BottomBarButton)

	it("should create and destroy without errors", function()
		local store = Rodux.Store.new(AppReducer)

		local element = Roact.createElement(RoactLocalization.LocalizationProvider, {
			localization = Localization.new(StringsLocale, LocalizationService.RobloxLocaleId),
		}, {
			BottomBarButton = Roact.createElement(BottomBarButton, {
				defaultImage = "",
				selectedImage = "",
				associatedPageType = AppPage.Home,
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