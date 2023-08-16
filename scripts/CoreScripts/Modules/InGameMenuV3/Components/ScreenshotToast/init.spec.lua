return function()
	it("should create and destroy without errors", function()
		local CorePackages = game:GetService("CorePackages")
		local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
		local Roact = InGameMenuDependencies.Roact
		local RoactRodux = InGameMenuDependencies.RoactRodux
		local Rodux = InGameMenuDependencies.Rodux
		local UIBlox = InGameMenuDependencies.UIBlox
		local InGameMenu = script.Parent.Parent.Parent
		local reducer = require(InGameMenu.reducer)

		local ScreenshotToast = require(script.Parent)

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(reducer)
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
				ScreenshotToast = Roact.createElement(ScreenshotToast),
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should require without errors", function()
		local ScreenshotToast = require(script.Parent)
		expect(ScreenshotToast).to.be.ok()
	end)
end
