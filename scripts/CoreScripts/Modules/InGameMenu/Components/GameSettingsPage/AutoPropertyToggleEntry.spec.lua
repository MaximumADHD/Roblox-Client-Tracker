return function()
	local CorePackages = game:GetService("CorePackages")

	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Roact = InGameMenuDependencies.Roact
	local Rodux = InGameMenuDependencies.Rodux
	local RoactRodux = InGameMenuDependencies.RoactRodux
	local UIBlox = InGameMenuDependencies.UIBlox

	local InGameMenu = script.Parent.Parent.Parent
	local Localization = require(InGameMenu.Localization.Localization)
	local LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)
	local reducer = require(InGameMenu.reducer)

	local AppDarkTheme = require(CorePackages.AppTempCommon.LuaApp.Style.Themes.DarkTheme)
	local AppFont = require(CorePackages.AppTempCommon.LuaApp.Style.Fonts.Gotham)

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	local AutoPropertyToggleEntry = require(script.Parent.AutoPropertyToggleEntry)

	it("should create and destroy without errors", function()
		local dummyValue = Instance.new("BoolValue")

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(reducer)
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, {
					AutoPropertyToggleEntry = Roact.createElement(AutoPropertyToggleEntry, {
						instance = dummyValue,
						key = "Value",
						lockedToOff = false,
						onValue = true,
						offValue = false,
						labelKey = "CoreScripts.InGameMenu.GameSettings.ShowPerfStats",
						LayoutOrder = 2,
					}),
				}),
			}),
		})

		local instance = Roact.mount(element)

		dummyValue.Value = false
		dummyValue.Value = true

		Roact.unmount(instance)
	end)
end