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

		local ToastFrame = require(script.Parent)

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
				ScreenshotToast = Roact.createElement(ToastFrame),
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should require without errors", function()
		local ToastFrame = require(script.Parent)
		expect(ToastFrame).to.be.ok()
	end)
end
