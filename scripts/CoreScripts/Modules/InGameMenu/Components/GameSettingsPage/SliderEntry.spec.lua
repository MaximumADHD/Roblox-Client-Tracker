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

	local SliderEntry = require(script.Parent.SliderEntry)

	it("should create and destroy without errors", function()

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(reducer)
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, {
					SliderEntry = Roact.createElement(SliderEntry, {
						LayoutOrder = 2,
						labelKey = "CoreScripts.InGameMenu.GameSettings.CameraSensitivity",
						min = 1,
						max = 10,
						stepInterval = 1,
						value = 5,
						disabled = false,
						valueChanged = function()
							print("Value changed")
						end,
					}),
				}),
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end