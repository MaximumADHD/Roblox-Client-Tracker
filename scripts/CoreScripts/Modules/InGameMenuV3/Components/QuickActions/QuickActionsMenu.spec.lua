return function()
	it("should create and destroy without errors", function()
		local CorePackages = game:GetService("CorePackages")
		local AppDarkTheme = require(CorePackages.AppTempCommon.LuaApp.Style.Themes.DarkTheme)
		local AppFont = require(CorePackages.AppTempCommon.LuaApp.Style.Fonts.Gotham)
		local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
		local Roact = InGameMenuDependencies.Roact
		local RoactRodux = InGameMenuDependencies.RoactRodux
		local Rodux = InGameMenuDependencies.Rodux
		local UIBlox = InGameMenuDependencies.UIBlox
		local InGameMenu = script.Parent.Parent.Parent
		local reducer = require(InGameMenu.reducer)

		local QuickActionsMenu = require(script.Parent.QuickActionsMenu)

		local appStyle = {
			Theme = AppDarkTheme,
			Font = AppFont,
		}

		local transparencies = {
			button1 = 0,
			button2 = 0,
			button3 = 0,
		}
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(reducer)
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				QuickActions = Roact.createElement(QuickActionsMenu, {
					layoutOrder = 2,
					voiceEnabled = false,
					screenshotEnabled = true,
					transparencies = transparencies,
				}),
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
