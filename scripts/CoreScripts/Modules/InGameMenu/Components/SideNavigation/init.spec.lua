return function()
	it("should create and destroy without errors", function()
		local CorePackages = game:GetService("CorePackages")

		local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
		local RoactRodux = InGameMenuDependencies.RoactRodux
		local Roact = InGameMenuDependencies.Roact
		local Rodux = InGameMenuDependencies.Rodux
		local UIBlox = InGameMenuDependencies.UIBlox

		local SideNavigation = require(script.Parent)

		local InGameMenu = script.Parent.Parent.Parent
		local reducer = require(InGameMenu.reducer)
		local Localization = require(InGameMenu.Localization.Localization)
		local LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)
		local InGameMenuPolicy = require(InGameMenu.InGameMenuPolicy)

		local AppDarkTheme = require(CorePackages.AppTempCommon.LuaApp.Style.Themes.DarkTheme)
		local AppFont = require(CorePackages.AppTempCommon.LuaApp.Style.Fonts.Gotham)

		local appStyle = {
			Theme = AppDarkTheme,
			Font = AppFont,
		}

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(reducer)
		}, {
			InGameMenuPolicy = Roact.createElement(InGameMenuPolicy.Provider, {
				policy = { InGameMenuPolicy.Mapper },
			}, {
				ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
					style = appStyle,
				}, {
					LocalizationProvider = Roact.createElement(LocalizationProvider, {
						localization = Localization.new("en-us"),
					}, {
						SideNavigation = Roact.createElement(SideNavigation),
					}),
				}),
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
