return function()
	local CorePackages = game:GetService("CorePackages")

	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Roact = InGameMenuDependencies.Roact
	local RoactRodux = InGameMenuDependencies.RoactRodux
	local Rodux = InGameMenuDependencies.Rodux
	local UIBlox = InGameMenuDependencies.UIBlox

	local InGameMenu = script.Parent.Parent.Parent
	local reducer = require(InGameMenu.reducer)
	


	local QuickActionsTooltip = require(script.Parent.QuickActionsTooltip)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(reducer)
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
				QuickActionsTooltip = Roact.createElement(QuickActionsTooltip, {
					layoutOrder = 1,
				}),
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
