return function()
	local CorePackages = game:GetService("CorePackages")
	local LocalizationService = game:GetService("LocalizationService")


	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UIBlox = require(CorePackages.UIBlox)
	local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
	local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider


	local Reducer = require(script.Parent.Parent.Reducer)

	describe("TopBarApp", function()
		it("should create and destroy without errors", function()
			local TopBarApp = require(script.Parent.TopBarApp)

			local store = Rodux.Store.new(Reducer, nil, {
				Rodux.thunkMiddleware,
			})

			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new(LocalizationService.RobloxLocaleId),
				}, {

					ThemeProvider = Roact.createElement(UIBlox.Style.Provider, {}, {
						TopBarApp = Roact.createElement(TopBarApp)
					})
				})
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end
