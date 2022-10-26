return function()
	it("should create and destroy without errors", function()
		local CorePackages = game:GetService("CorePackages")
		local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
		local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham
		local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
		local Roact = InGameMenuDependencies.Roact
		local RoactRodux = InGameMenuDependencies.RoactRodux
		local Rodux = InGameMenuDependencies.Rodux
		local UIBlox = InGameMenuDependencies.UIBlox
		local InGameMenu = script.Parent.Parent.Parent
		local reducer = require(InGameMenu.reducer)
		local Localization = require(InGameMenu.Localization.Localization)
		local LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)

		local QuickActions = require(script.Parent)

		local appStyle = {
			Theme = AppDarkTheme,
			Font = AppFont,
		}

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(reducer)
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, {
					QuickActions = Roact.createElement(QuickActions),
				}),
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should require without errors", function()
		local QuickActions = require(script.Parent)
		expect(QuickActions).to.be.ok()
	end)
end
