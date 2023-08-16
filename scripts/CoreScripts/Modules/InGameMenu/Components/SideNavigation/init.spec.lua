return function()
	it("should create and destroy without errors", function()
		local CorePackages = game:GetService("CorePackages")

		local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
		local RoactRodux = InGameMenuDependencies.RoactRodux
		local Roact = InGameMenuDependencies.Roact
		local Rodux = InGameMenuDependencies.Rodux
		local UIBlox = InGameMenuDependencies.UIBlox

		local FocusHandlerContextProvider = require(script.Parent.Parent.Connection.FocusHandlerUtils.FocusHandlerContextProvider)
		local SideNavigation = require(script.Parent)

		local InGameMenu = script.Parent.Parent.Parent
		local reducer = require(InGameMenu.reducer)
		local Localization = require(InGameMenu.Localization.Localization)
		local LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)
		local InGameMenuPolicy = require(InGameMenu.InGameMenuPolicy)
		local GetFFlagIGMGamepadSelectionHistory = require(InGameMenu.Flags.GetFFlagIGMGamepadSelectionHistory)

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(reducer)
		}, {
			InGameMenuPolicy = Roact.createElement(InGameMenuPolicy.Provider, {
				policy = { InGameMenuPolicy.Mapper },
			}, {
				ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
					LocalizationProvider = Roact.createElement(LocalizationProvider, {
						localization = Localization.new("en-us"),
					}, {
						FocusHandlerContextProvider = GetFFlagIGMGamepadSelectionHistory() and Roact.createElement(FocusHandlerContextProvider, {}, {
							SideNavigation = Roact.createElement(SideNavigation),
						}) or nil,
						SideNavigation = not GetFFlagIGMGamepadSelectionHistory() and Roact.createElement(SideNavigation) or nil,
					}),
				}),
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
